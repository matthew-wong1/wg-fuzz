struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-434f, 325f);

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<u32>(35609u, 36u), true), Struct_2(vec2<u32>(30094u, 10611u), false), Struct_2(vec2<u32>(1u, 91062u), true), Struct_2(vec2<u32>(4294967295u, 77500u), true), Struct_2(vec2<u32>(0u, 4294967295u), false), Struct_2(vec2<u32>(4294967295u, 45700u), false), Struct_2(vec2<u32>(26882u, 0u), true), Struct_2(vec2<u32>(12352u, 8799u), false), Struct_2(vec2<u32>(0u, 45351u), false), Struct_2(vec2<u32>(1u, 20737u), true), Struct_2(vec2<u32>(2760u, 9816u), true), Struct_2(vec2<u32>(0u, 34501u), true), Struct_2(vec2<u32>(1u, 44226u), true), Struct_2(vec2<u32>(7457u, 28948u), true), Struct_2(vec2<u32>(18198u, 0u), false), Struct_2(vec2<u32>(1u, 1u), false), Struct_2(vec2<u32>(1u, 24192u), true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(global0.x, -1032f);
    global0 = vec2<f32>(496f, global0.x);
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.x, -414f), _wgslsmith_div_f32(global0.x, 238f)) + vec2<f32>(_wgslsmith_f_op_f32(439f + -364f), 766f)), vec2<f32>(global0.x, 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1328f) + vec2<f32>(global0.x, 2099f)), vec2<f32>(global0.x, 196f))))));
    let var_0 = true;
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-max(u_input.b, u_input.b), ~_wgslsmith_mod_i32(-1i, -2147483647i)), ((firstLeadingBit(vec4<u32>(u_input.c, 1u, u_input.a.x, u_input.c)) & vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, 0u)) & u_input.a) >> (_wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.a, _wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 5779u, 43258u, u_input.a.x)), vec4<u32>(u_input.a.x, 24471u, u_input.a.x, 32483u))) % vec4<u32>(32u)), u_input.a.x, abs(13179u), select(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, max(u_input.a.x, 1u)), 1u), vec2<u32>(abs(u_input.c), u_input.c), var_0));
}

