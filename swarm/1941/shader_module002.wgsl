struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-200f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> bool {
    return arg_0.b.c;
}

fn func_2() -> bool {
    var var_0 = Struct_4(1476f);
    let var_1 = Struct_1(false);
    var_0 = Struct_4(global0.a);
    let var_2 = ~u_input.d.x;
    let var_3 = ~u_input.c.x;
    return all(!vec3<bool>(var_1.a, false, !(u_input.d.x > 4294967295u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool) -> bool {
    var var_0 = vec4<u32>(~u_input.c.x, 16880u, 4294967295u, arg_1.x);
    let var_1 = Struct_5(i32(-1i) * -u_input.b);
    let var_2 = Struct_1(any(!vec3<bool>(false, true, !arg_2)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(-1763f, 1524f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -849f)), arg_2)))));
    var var_4 = arg_0;
    return true;
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    global0 = Struct_4(_wgslsmith_f_op_f32(-global0.a));
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -895f))), _wgslsmith_f_op_f32(f32(-1f) * -612f))), global0.a), -701f, -760f);
    let var_1 = Struct_5(-47850i);
    var var_2 = arg_0.b;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -319f);
    return Struct_4(484f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(u_input.d.x, Struct_1(!func_1(Struct_3(vec4<f32>(global0.a, 850f, -201f, 434f), Struct_2(u_input.d.x, Struct_1(true), true, false, true), vec4<f32>(-235f, global0.a, -1212f, global0.a), vec3<f32>(2291f, global0.a, global0.a), vec3<i32>(u_input.b, 55563i, 1i)), Struct_3(vec4<f32>(-1000f, -359f, global0.a, global0.a), Struct_2(u_input.d.x, Struct_1(true), false, true, true), vec4<f32>(403f, -627f, -1755f, global0.a), vec3<f32>(global0.a, global0.a, 2263f), vec3<i32>(u_input.a, u_input.a, u_input.b)), 1002f)), func_2(), func_3(Struct_4(_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 8709u, 11831u, u_input.c.x), vec4<u32>(0u, 0u, 4294967295u, 1u)) ^ ~vec4<u32>(24896u, u_input.d.x, 4294967295u, 1617u), any(vec2<bool>(true, true))), true));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1170f * global0.a)))));
    var var_1 = min(~(~u_input.c), min(reverseBits(vec4<u32>(~72020u, 15649u, abs(14865u), _wgslsmith_clamp_u32(1u, 1u, u_input.d.x))), ~(~u_input.c)));
    var_0 = 257f;
    var var_2 = var_1.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 796f, _wgslsmith_mod_vec2_u32(max(_wgslsmith_sub_vec2_u32(var_1.yy, vec2<u32>(u_input.d.x, var_1.x)) << (~vec2<u32>(var_1.x, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 201400u), u_input.d), ~var_2.yy, firstTrailingBit(u_input.c.xy))), u_input.c.yw));
}

