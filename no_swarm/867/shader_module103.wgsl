struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(418f, 0i, 4294967295u), Struct_1(857f, i32(-2147483648), 0u), Struct_1(1947f, 352i, 1u), Struct_1(955f, -5401i, 45271u), Struct_1(-264f, 0i, 4294967295u), Struct_1(-217f, 11993i, 64916u), Struct_1(-113f, 0i, 1u), Struct_1(2184f, -49492i, 9449u), Struct_1(836f, 1i, 9394u), Struct_1(413f, 0i, 15406u), Struct_1(-384f, -15696i, 0u), Struct_1(1239f, i32(-2147483648), 1u), Struct_1(1489f, 2147483647i, 39649u), Struct_1(1511f, -66843i, 35960u), Struct_1(-513f, 13742i, 33202u), Struct_1(-606f, i32(-2147483648), 1u), Struct_1(680f, -37787i, 54830u), Struct_1(897f, 2147483647i, 1u), Struct_1(-565f, 1i, 53902u), Struct_1(587f, -1i, 1u), Struct_1(1725f, -18128i, 4294967295u), Struct_1(1137f, -1i, 97906u), Struct_1(-948f, 1i, 0u), Struct_1(-1827f, 1i, 47566u), Struct_1(512f, i32(-2147483648), 0u));

var<private> global1: array<vec4<bool>, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    global1 = array<vec4<bool>, 9>();
    var var_0 = ~_wgslsmith_add_u32(abs(max(1u, ~25681u)), 1u);
    global1 = array<vec4<bool>, 9>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -338f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -3013f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -436f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f))), true)), -1424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1081f)))))));
    global0 = array<Struct_1, 25>();
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.ww))));
}

