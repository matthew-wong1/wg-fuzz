struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<i32, 19>;

var<private> global2: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

var<private> global3: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: bool) -> vec3<u32> {
    var var_0 = true;
    global1 = array<i32, 19>();
    var var_1 = Struct_1(_wgslsmith_div_f32(285f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1673f)), _wgslsmith_f_op_f32(abs(1376f))) - _wgslsmith_f_op_f32(f32(-1f) * -585f))));
    return _wgslsmith_add_vec3_u32(u_input.d, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(global1[_wgslsmith_index_u32(u_input.c.x, 19u)]) & global1[_wgslsmith_index_u32(firstTrailingBit(~1411u), 19u)];
    let var_1 = firstLeadingBit(~vec2<u32>(_wgslsmith_dot_vec3_u32(func_1(true, global3.x), vec3<u32>(3276u, u_input.e, 4294967295u)), 43741u));
    var var_2 = -1i;
    global2 = array<vec3<bool>, 24>();
    let var_3 = _wgslsmith_mult_u32(reverseBits(var_1.x), 0u ^ firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_1.x, u_input.d.x, 0u))));
    let var_4 = Struct_1(1266f);
    var var_5 = ~vec2<u32>(var_1.x, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, var_4.a, var_4.a))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4.a, var_4.a, var_4.a))))))));
}

