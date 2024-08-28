struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: Struct_1 = Struct_1(4294967295u);

var<private> global2: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> StorageBuffer {
    global0 = array<vec2<bool>, 6>();
    let var_0 = true;
    var var_1 = vec4<f32>(_wgslsmith_div_f32(562f, _wgslsmith_f_op_f32(f32(-1f) * -637f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-854f)))))), 973f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-240f + _wgslsmith_f_op_f32(1097f - _wgslsmith_f_op_f32(1221f * 986f))) - _wgslsmith_div_f32(-1212f, _wgslsmith_f_op_f32(sign(-2508f)))));
    let var_2 = Struct_1(_wgslsmith_sub_u32(28360u, u_input.c.x));
    global0 = array<vec2<bool>, 6>();
    return StorageBuffer((_wgslsmith_mult_vec2_u32(~vec2<u32>(455u, u_input.e), vec2<u32>(u_input.e, global1.a) & u_input.b.zz) >> (~(~vec2<u32>(global1.a, 27971u)) % vec2<u32>(32u))) << (u_input.b.yy % vec2<u32>(32u)), ~(~firstLeadingBit(vec4<u32>(1u, 40225u, var_2.a, global1.a) << (vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4656u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

