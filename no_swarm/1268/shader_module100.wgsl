struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-1i);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), -1i, 1492f, 33710u);

var<private> global2: array<bool, 13> = array<bool, 13>(true, true, false, false, false, true, true, false, true, true, false, false, false);

var<private> global3: Struct_3 = Struct_3(Struct_2(vec4<u32>(1u, 4294967295u, 1u, 4828u), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), i32(-2147483648), -167f, 4294967295u), 4294967295u, -1612f, Struct_1(vec3<u32>(28479u, 1u, 3512u), -13093i, -1080f, 1u)), Struct_2(vec4<u32>(0u, 38759u, 16787u, 23415u), Struct_1(vec3<u32>(4294967295u, 38611u, 31949u), -12445i, -247f, 0u), 4294967295u, 1025f, Struct_1(vec3<u32>(4294967295u, 4294967295u, 45856u), 1i, -1286f, 1u)));

var<private> global4: array<f32, 10>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    let var_1 = ~(vec2<u32>(global3.a.b.a.x, ~var_0.a.x ^ _wgslsmith_div_u32(37865u, 1u)) | reverseBits(firstLeadingBit(u_input.e.yx) | vec2<u32>(global3.b.e.d, 4294967295u)));
    var var_2 = ~global3.b.c;
    var var_3 = -((-(vec4<i32>(global1.b, 12925i, global0.a, -1i) << (global3.a.a % vec4<u32>(32u))) >> (vec4<u32>(0u, _wgslsmith_sub_u32(1u, 0u), firstLeadingBit(u_input.e.x), var_1.x) % vec4<u32>(32u))) << (var_0.a % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a.d)) - _wgslsmith_f_op_f32(-global3.b.b.c)), _wgslsmith_f_op_f32(trunc(global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b.d - global4[_wgslsmith_index_u32(4294967295u, 10u)]), global4[_wgslsmith_index_u32(u_input.c.x, 10u)]))))));
    global2 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.yz, global4[_wgslsmith_index_u32(~var_0.a.x, 10u)], -(~vec4<i32>(var_0.e.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.b, var_0.b.b), vec2<i32>(u_input.b.x, var_0.b.b)), 1i, _wgslsmith_mult_i32(var_0.e.b, 1i))));
}

