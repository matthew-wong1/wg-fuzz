struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(26934i, vec3<bool>(false, true, true), vec3<u32>(3589u, 31299u, 46806u)), Struct_1(4655i, vec3<bool>(false, false, true), vec3<u32>(0u, 118011u, 1u)), Struct_1(1i, vec3<bool>(true, true, false), vec3<u32>(1u, 83139u, 4294967295u)), Struct_1(2147483647i, vec3<bool>(true, true, false), vec3<u32>(19150u, 4294967295u, 33799u)), Struct_1(-11739i, vec3<bool>(false, false, false), vec3<u32>(91720u, 1u, 1u)), Struct_1(-33950i, vec3<bool>(true, true, false), vec3<u32>(16016u, 107215u, 3351u)), Struct_1(-1i, vec3<bool>(false, true, true), vec3<u32>(38775u, 50688u, 4294967295u)), Struct_1(i32(-2147483648), vec3<bool>(true, false, false), vec3<u32>(30594u, 48279u, 1u)), Struct_1(-66563i, vec3<bool>(true, false, false), vec3<u32>(74107u, 4294967295u, 4294967295u)), Struct_1(-12324i, vec3<bool>(true, false, false), vec3<u32>(74091u, 28450u, 4294967295u)), Struct_1(2147483647i, vec3<bool>(true, true, false), vec3<u32>(5511u, 0u, 0u)), Struct_1(-20363i, vec3<bool>(true, false, false), vec3<u32>(19113u, 1u, 0u)), Struct_1(0i, vec3<bool>(true, true, false), vec3<u32>(9558u, 102605u, 78884u)), Struct_1(10845i, vec3<bool>(false, true, false), vec3<u32>(1u, 1816u, 44868u)), Struct_1(0i, vec3<bool>(false, false, false), vec3<u32>(6814u, 4294967295u, 24088u)), Struct_1(39824i, vec3<bool>(true, true, false), vec3<u32>(0u, 65637u, 48740u)), Struct_1(0i, vec3<bool>(true, false, false), vec3<u32>(1u, 1335u, 9606u)), Struct_1(1i, vec3<bool>(false, true, true), vec3<u32>(1u, 16946u, 1u)), Struct_1(1i, vec3<bool>(true, false, true), vec3<u32>(4294967295u, 1163u, 97228u)));

var<private> global1: vec3<i32>;

var<private> global2: array<vec4<u32>, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 19>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.e, 19u)];
    let var_1 = global0[_wgslsmith_index_u32(30114u, 19u)];
    let var_2 = Struct_2(~select(u_input.e, 0u, false));
    var var_3 = ~u_input.d.wz;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, min(74838u, u_input.e)), countOneBits(0u)), 268f, countOneBits(firstLeadingBit(vec2<i32>(u_input.b, _wgslsmith_sub_i32(u_input.b, u_input.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 674f, 206f), vec3<f32>(278f, 2289f, -1028f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2170f, -352f, 537f)) * vec3<f32>(-857f, 512f, 941f))))));
}

