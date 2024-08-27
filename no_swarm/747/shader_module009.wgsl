struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0i, vec3<f32>(-1528f, 522f, 106f), vec4<bool>(true, true, false, false), Struct_2(Struct_1(12510u, vec2<f32>(694f, -843f), -1608i), Struct_1(80349u, vec2<f32>(356f, 2276f), i32(-2147483648)), vec4<i32>(i32(-2147483648), -35848i, 9888i, -1i), Struct_1(83406u, vec2<f32>(631f, 121f), -24010i), vec3<u32>(0u, 0u, 0u)));

var<private> global1: vec2<u32>;

var<private> global2: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~global0.d.a.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2235f * global0.d.d.b.x))), global0.b.x), _wgslsmith_f_op_vec2_f32(global0.d.b.b + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-134f, global0.d.b.b.x))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b.x, global0.b.x))), all(vec4<bool>(true, global0.c.x, false, true)))))), _wgslsmith_dot_vec3_i32(global0.d.c.xwy, firstTrailingBit(global0.d.c.wzz)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, 1f, any(vec2<bool>(false, true)))) * _wgslsmith_f_op_f32(-var_0.b.x)) < _wgslsmith_f_op_f32(sign(var_0.b.x));
    let var_2 = -34897i;
    global1 = vec2<u32>(~(~global0.d.d.a) ^ 4294967295u, ~firstLeadingBit(global1.x));
    global1 = u_input.e.zx ^ vec2<u32>(global0.d.b.a, ~(u_input.a >> (var_0.a % 32u)) >> (u_input.e.x % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -631f)));
    let var_4 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(1u, 20278u, vec3<i32>(select(-(~(-271i)), var_0.c, select(global0.d.e.x < 94289u, var_0.b.x > 238f, any(global0.c.wy))), 0i, -u_input.b), var_4.e.xz);
}

