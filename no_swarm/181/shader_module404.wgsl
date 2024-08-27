struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<bool>(false, false), vec3<u32>(40674u, 4294967295u, 21705u), vec4<i32>(-20233i, 1620i, 22711i, i32(-2147483648)), vec4<f32>(222f, -882f, -766f, 931f), 139f), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 4294967295u, 0u), vec4<i32>(2147483647i, -10211i, 5634i, 7486i), vec4<f32>(302f, 322f, -1329f, 413f), 277f), Struct_1(vec2<bool>(false, false), vec3<u32>(22598u, 50292u, 47054u), vec4<i32>(6103i, 10043i, 22463i, 87966i), vec4<f32>(-1632f, 151f, -1621f, -1000f), 165f), Struct_1(vec2<bool>(false, false), vec3<u32>(12725u, 4294967295u, 18760u), vec4<i32>(2147483647i, 1i, i32(-2147483648), 2147483647i), vec4<f32>(559f, 1000f, -1565f, 1084f), -107f), Struct_1(vec2<bool>(false, true), vec3<u32>(6320u, 0u, 5886u), vec4<i32>(-26423i, 10479i, 42780i, 1i), vec4<f32>(-1000f, 660f, -2065f, 1000f), 1561f), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 36658u), vec4<i32>(-31545i, i32(-2147483648), 2147483647i, 19474i), vec4<f32>(-1349f, -1020f, -467f, -1026f), -1000f), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 91110u, 4294967295u), vec4<i32>(1i, -14551i, -25753i, 2147483647i), vec4<f32>(1000f, 236f, 1123f, -775f), 503f), Struct_1(vec2<bool>(false, true), vec3<u32>(56528u, 4294967295u, 1u), vec4<i32>(3803i, 1i, 0i, -893i), vec4<f32>(234f, -1143f, 265f, 1000f), -641f), Struct_1(vec2<bool>(true, false), vec3<u32>(61911u, 0u, 1u), vec4<i32>(i32(-2147483648), -7012i, -1i, -1i), vec4<f32>(-1326f, -1135f, 1196f, 1035f), 947f), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 1u, 1u), vec4<i32>(4138i, 1i, -2503i, 0i), vec4<f32>(411f, 221f, -466f, -1000f), -148f), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 0u, 23926u), vec4<i32>(11352i, 1i, -19085i, 0i), vec4<f32>(-373f, 830f, -249f, -1228f), 1339f), Struct_1(vec2<bool>(false, false), vec3<u32>(79724u, 10726u, 4294967295u), vec4<i32>(i32(-2147483648), -19784i, 16839i, i32(-2147483648)), vec4<f32>(-437f, 286f, -296f, 214f), 417f), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 0u, 0u), vec4<i32>(34934i, -5639i, -1118i, -1i), vec4<f32>(-138f, -167f, 1235f, 1000f), 1110f), Struct_1(vec2<bool>(false, true), vec3<u32>(21260u, 5963u, 27011u), vec4<i32>(1i, -16344i, 0i, 2147483647i), vec4<f32>(-285f, -604f, -178f, 189f), 1314f), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 4294967295u, 4294967295u), vec4<i32>(0i, 2147483647i, 2147483647i, -2275i), vec4<f32>(-379f, 161f, -752f, -899f), 575f), Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 0u, 388u), vec4<i32>(15162i, 2147483647i, 0i, -37418i), vec4<f32>(-240f, 127f, 101f, 569f), 666f), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 33246u, 4294967295u), vec4<i32>(0i, -66924i, 21970i, 0i), vec4<f32>(-213f, -339f, -1126f, 271f), -522f), Struct_1(vec2<bool>(false, true), vec3<u32>(38594u, 4294967295u, 0u), vec4<i32>(-35408i, 6933i, 9672i, -37674i), vec4<f32>(-397f, 282f, -1985f, -551f), -1000f), Struct_1(vec2<bool>(false, true), vec3<u32>(17464u, 1u, 1u), vec4<i32>(2147483647i, 57625i, 13917i, 0i), vec4<f32>(1359f, -1140f, -978f, 126f), 2331f));

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = -625f;
    global1 = array<Struct_1, 19>();
    let var_3 = 0u;
    return var_0.b.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = ~(~vec2<u32>(max(min(u_input.d.x, 1u), _wgslsmith_add_u32(u_input.d.x, 4294967295u)), u_input.d.x));
    let var_1 = vec3<u32>(4294967295u, ~abs(func_3(~(-59296i), global1[_wgslsmith_index_u32(firstLeadingBit(19496u), 19u)], vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], false, false, false))), var_0.x);
    var_0 = var_1.zx;
    var_0 = firstTrailingBit(vec2<u32>(var_0.x, countOneBits(u_input.a))) ^ var_1.xz;
    var var_2 = vec3<u32>(7129u, abs(min(~(var_1.x | 4294967295u), var_0.x)), ~(~(~1u)));
    return vec4<bool>(!any(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 8u)], true, false), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 8u)], false), vec3<bool>(false, false, false))), global0[_wgslsmith_index_u32(var_2.x, 8u)], 1u > ~var_2.x, select(true && select(false, true, false), true, global0[_wgslsmith_index_u32(~1u, 8u)]));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> StorageBuffer {
    global1 = array<Struct_1, 19>();
    let var_0 = true;
    var var_1 = 0i;
    global1 = array<Struct_1, 19>();
    var var_2 = !select(func_2(), !(!vec4<bool>(true, true, false, var_0)), !((u_input.b > u_input.e) & global0[_wgslsmith_index_u32(4294967295u, 8u)]));
    return StorageBuffer(arg_0.yx, u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-854f, 608f))))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-904f + 868f), -1381f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(select(~(vec4<u32>(4294967295u, 43173u, 4294967295u, u_input.d.x) >> (vec4<u32>(18843u, u_input.a, 12894u, 0u) % vec4<u32>(32u))), vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, 62163u) >> (~vec4<u32>(u_input.a, 23746u, 1u, 612u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(u_input.a, 8u)])), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], false));
}

