struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, false), 11698u), false, false, 1933f, Struct_1(vec2<bool>(true, true), 1u));

var<private> global2: i32 = 0i;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.a.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -265f), -1000f, 892f, _wgslsmith_f_op_f32(-global1.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -1000f, 1318f, global1.d))), vec4<f32>(1232f, global1.d, global1.d, -534f))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, global1.d, global1.d, 1167f) - vec4<f32>(global1.d, -2512f, -306f, -743f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-948f, -898f, global1.d, global1.d), vec4<f32>(global1.d, global1.d, global1.d, -354f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.d, -749f, -1000f, global1.d), vec4<f32>(global1.d, -624f, global1.d, global1.d))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.d), -1000f, global1.d, _wgslsmith_f_op_f32(-297f * global1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(296f, -356f, global1.d, 579f), vec4<f32>(global1.d, global1.d, 222f, global1.d), true)) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.d, -776f, 293f, -155f), vec4<f32>(117f, 572f, global1.d, -1363f))), select(vec4<bool>(false, global1.b, true, global1.c), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, global1.e.a.x, true), vec4<bool>(true, global1.b, global1.b, global1.c)), global1.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(abs(firstTrailingBit(1u)), 32u)], ~(~(~max(vec4<u32>(74311u, 4294967295u, 4294967295u, 53477u), vec4<u32>(global1.e.b, global1.a.b, global1.e.b, 4294967295u)))), var_1.xx, _wgslsmith_mult_i32(u_input.a, -(~2147483647i)) << (global1.e.b % 32u));
}

