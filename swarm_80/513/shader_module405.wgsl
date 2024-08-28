struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_4(Struct_3(vec3<f32>(-2220f, 1380f, -1489f), Struct_1(48988u, vec4<f32>(-593f, 487f, -1003f, 614f), vec2<i32>(0i, -20667i), 313f, vec4<u32>(10759u, 42058u, 0u, 1u))), Struct_3(vec3<f32>(-513f, -319f, -1702f), Struct_1(9574u, vec4<f32>(-684f, 433f, -1528f, 781f), vec2<i32>(-13820i, 0i), -875f, vec4<u32>(4294967295u, 4294967295u, 10890u, 470u)))), 76919i);

var<private> global1: array<Struct_4, 12>;

var<private> global2: array<vec2<bool>, 26>;

var<private> global3: u32 = 48520u;

var<private> global4: array<Struct_4, 26>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(36352u, global0.a.b.b.e.x, global0.a.b.b.e.x, 0u), ~vec4<u32>(4294967295u, global0.a.b.b.a, global0.a.a.b.a, 51797u), ~vec4<u32>(global0.a.a.b.a, 1u, 0u, global0.a.a.b.e.x))), ~(~global0.a.a.b.e), _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(1u, 0u, 4294967295u, global0.a.a.b.e.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.b.b.e.x, 4294967295u, global0.a.b.b.a), vec3<u32>(17587u, global0.a.b.b.a, global0.a.a.b.e.x)) | (global0.a.a.b.e.x >> (global0.a.a.b.e.x % 32u)), 11059u, ~global0.a.b.b.e.x, ~reverseBits(global0.a.b.b.a))));
    global2 = array<vec2<bool>, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.b.b.x)))), global0.a.b.a.zy));
    let var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-691f)), _wgslsmith_f_op_f32(floor(global0.a.a.a.x))))))), 1u, vec3<f32>(_wgslsmith_f_op_f32(trunc(1212f)), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f))), global0.a.b.b.a);
}

