struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: Struct_2 = Struct_2(Struct_1(true));

var<private> global2: array<i32, 12>;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global3 = array<Struct_2, 17>();
    var var_1 = Struct_1(true);
    global0 = array<Struct_2, 20>();
    global1 = global3[_wgslsmith_index_u32(u_input.a & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, firstTrailingBit(70454u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), select(abs(vec3<u32>(u_input.a, 4294967295u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4902u), vec3<u32>(u_input.a, 11194u, 1u)), vec3<bool>(global1.a.a, global1.a.a, true))), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(1u, 15671u, u_input.a))), 17u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(ceil(337f)), 1067f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f - -1287f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1427f, 716f, -1000f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, -394f, 1013f)), vec3<f32>(_wgslsmith_f_op_f32(min(-328f, -520f)), -1379f, _wgslsmith_f_op_f32(-862f - 399f)), !vec3<bool>(false, var_1.a, global1.a.a))), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(369f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2060f))))));
    let var_3 = global3[_wgslsmith_index_u32(u_input.a, 17u)];
    var var_4 = select(!(!vec4<bool>(true, global1.a.a, global1.a.a, !var_3.a.a)), vec4<bool>(global1.a.a, !((u_input.a == 1u) & var_1.a), true & var_1.a, !var_3.a.a), _wgslsmith_f_op_f32(f32(-1f) * -948f) < _wgslsmith_f_op_f32(-var_2.x));
    global3 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xz, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(34882u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(53225u, 0u), vec2<u32>(1u, u_input.a))) & ~(vec2<u32>(u_input.a, 0u) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))), vec2<f32>(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1059f * _wgslsmith_f_op_f32(floor(-242f))))), var_2.x, var_2.x);
}

