struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_3) -> vec2<f32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(989f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_0 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, 22388u), u_input.a.xwx)), u_input.a.wxz, (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 52153u), vec3<u32>(u_input.a.x, 0u, u_input.c)), 11752u & u_input.b, ~4294967295u) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, 10018u), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x))) & vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(40899u, 4058u, u_input.b), vec3<u32>(u_input.a.x, 39442u, u_input.a.x))), u_input.a.x, ~u_input.a.x));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1301f + _wgslsmith_f_op_f32(f32(-1f) * -296f))));
    global0 = arg_0.a.yx;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-750f + _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(-577f - -515f)), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, true))) + 1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_3(vec3<f32>(1209f, global0.x, -642f), true, vec2<bool>(false, false))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-232f, global0.x)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1183f) - vec2<f32>(global0.x, -172f)) - vec2<f32>(-399f, 1000f)), vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -989f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x + -1427f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x - global0.x))))) + global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-245f * global0.x) * global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.x))))));
}

