struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_3, 30>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> StorageBuffer {
    global2 = array<Struct_3, 30>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, 1150f, arg_1))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1033f, arg_1, -199f), vec3<f32>(-926f, -868f, arg_1)))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(floor(-624f)), _wgslsmith_f_op_f32(trunc(1000f))))))), _wgslsmith_clamp_vec4_u32(~min(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), vec4<u32>(reverseBits(42656u), max(~global1.x, ~0u), 4294967295u, (u_input.c.x ^ 4294967295u) >> (101132u % 32u)), vec4<u32>(_wgslsmith_mod_u32(1u, 34254u) ^ global1.x, _wgslsmith_add_u32(firstLeadingBit(u_input.b.x), global1.x), 69164u, 14349u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), arg_1);
    let var_1 = select(arg_2.x, -20689i, false);
    global0 = array<vec4<bool>, 17>();
    var var_2 = true;
    return StorageBuffer(vec4<f32>(103f, var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f))), ~u_input.d, ~var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 17>();
    global0 = array<vec4<bool>, 17>();
    global0 = array<vec4<bool>, 17>();
    global1 = ~u_input.b.xwx;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-213f)));
    let x = u_input.a;
    s_output = func_1(true, 1000f, vec2<i32>(1i, 1i));
}

