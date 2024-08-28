struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(18730i, 26452i, i32(-2147483648), -1i, 1195i, -32324i, 1i, 0i);

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 22568i, 17930i), vec3<bool>(false, true, false), vec3<f32>(1732f, 1000f, 374f), vec2<i32>(53398i, -1i))));

var<private> global2: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1364f, 733f) + vec2<f32>(114f, 220f)))))));
    var var_2 = Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 1u)]);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_2.a.a.c.xx, vec2<f32>(_wgslsmith_f_op_f32(108f * var_1.x), _wgslsmith_f_op_f32(max(var_1.x, var_2.a.a.c.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(-var_2.a.a.c.yy))), true)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.d, 4294967295u), firstLeadingBit(vec3<u32>(u_input.c, u_input.d, 28258u))) ^ firstTrailingBit(vec3<u32>(u_input.d, 4294967295u, 97916u) ^ vec3<u32>(u_input.c, 0u, 73766u))));
    var var_4 = _wgslsmith_mult_u32(~(~55923u) | abs(u_input.c & ~1003u), _wgslsmith_dot_vec4_u32(countOneBits(min(vec4<u32>(u_input.d, 83944u, 1463u, 1u), vec4<u32>(1u, 1u, 22286u, 0u))) | ~vec4<u32>(u_input.d, 37239u, 14522u, var_3.b.x), countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 0u, 0u), countOneBits(vec4<u32>(var_3.b.x, 4294967295u, 32418u, var_3.b.x))))));
    let var_5 = !any(var_2.a.a.b.xx) && false;
    var var_6 = var_2.a.a.b;
    let var_7 = !var_2.a.a.b;
    let var_8 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-850f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(877f, var_1.x)))))));
}

