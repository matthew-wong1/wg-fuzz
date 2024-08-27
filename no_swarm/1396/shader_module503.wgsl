struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

var<private> global2: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(Struct_1(2147483647i, vec4<u32>(4294967295u, 58863u, 1u, 20664u), vec4<u32>(0u, 22215u, 0u, 24308u)), 30667u, vec4<bool>(true, true, false, false), true, vec2<u32>(23390u, 4294967295u)), vec2<i32>(i32(-2147483648), 3984i), false, vec4<f32>(-680f, 248f, 2448f, -1062f), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(1040i, vec4<u32>(4294967295u, 59980u, 19741u, 4178u), vec4<u32>(4294967295u, 22624u, 11287u, 4294967295u)), 25797u, vec4<bool>(true, false, true, false), true, vec2<u32>(70876u, 4294967295u)), vec2<i32>(-25914i, -60952i), true, vec4<f32>(236f, 1372f, -832f, -713f), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(-11207i, vec4<u32>(27517u, 22628u, 0u, 67554u), vec4<u32>(0u, 4294967295u, 58611u, 4294967295u)), 0u, vec4<bool>(false, true, false, true), true, vec2<u32>(83901u, 3893u)), vec2<i32>(7101i, 1i), true, vec4<f32>(-1163f, -233f, -580f, -2381f), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(23265i, vec4<u32>(79932u, 54085u, 1u, 8187u), vec4<u32>(1u, 1u, 0u, 1u)), 1u, vec4<bool>(false, false, true, false), false, vec2<u32>(34638u, 3452u)), vec2<i32>(1i, 2290i), false, vec4<f32>(-1224f, -312f, 953f, 161f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(12128i, vec4<u32>(0u, 4294967295u, 75380u, 23633u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), 1u, vec4<bool>(false, true, false, true), true, vec2<u32>(2523u, 0u)), vec2<i32>(1i, -1i), false, vec4<f32>(3142f, -367f, -1916f, -521f), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(-24340i, vec4<u32>(65639u, 1u, 64511u, 60473u), vec4<u32>(64379u, 1u, 41090u, 107188u)), 4294967295u, vec4<bool>(false, false, false, true), false, vec2<u32>(20919u, 0u)), vec2<i32>(2147483647i, i32(-2147483648)), true, vec4<f32>(-798f, -1296f, -1473f, 426f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(0i, vec4<u32>(1u, 0u, 1u, 6875u), vec4<u32>(16490u, 107894u, 0u, 41006u)), 38968u, vec4<bool>(true, false, false, false), false, vec2<u32>(4294967295u, 8437u)), vec2<i32>(0i, -16199i), true, vec4<f32>(-1872f, -1103f, 462f, -407f), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(-1i, vec4<u32>(39580u, 1u, 4294967295u, 35821u), vec4<u32>(67042u, 4294967295u, 1u, 50628u)), 39998u, vec4<bool>(false, false, false, true), false, vec2<u32>(0u, 4294967295u)), vec2<i32>(33922i, i32(-2147483648)), false, vec4<f32>(-677f, -1000f, 164f, -564f), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(0i, vec4<u32>(11248u, 44288u, 20977u, 4294967295u), vec4<u32>(16780u, 1u, 62568u, 47851u)), 0u, vec4<bool>(false, true, false, false), true, vec2<u32>(4294967295u, 0u)), vec2<i32>(-1i, 6835i), true, vec4<f32>(-171f, 124f, -664f, 1007f), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(0i, vec4<u32>(82586u, 1u, 7976u, 4294967295u), vec4<u32>(1u, 7551u, 25479u, 0u)), 4294967295u, vec4<bool>(true, false, false, false), false, vec2<u32>(44677u, 0u)), vec2<i32>(-1i, 0i), true, vec4<f32>(-269f, -373f, 1254f, -790f), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec4<u32>(4294967295u, 0u, 4294967295u, 19746u), vec4<u32>(1u, 0u, 0u, 4294967295u)), 1u, vec4<bool>(true, false, true, false), false, vec2<u32>(72819u, 34806u)), vec2<i32>(249i, -44747i), true, vec4<f32>(1427f, -179f, -1000f, 462f), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec4<u32>(1u, 0u, 4294967295u, 36249u), vec4<u32>(1u, 17776u, 32833u, 1u)), 1u, vec4<bool>(true, true, false, true), true, vec2<u32>(1u, 36861u)), vec2<i32>(7232i, 33312i), false, vec4<f32>(764f, -1026f, -1000f, -224f), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(23224i, vec4<u32>(0u, 6480u, 50945u, 1u), vec4<u32>(56500u, 18928u, 53533u, 4294967295u)), 0u, vec4<bool>(true, true, false, true), false, vec2<u32>(0u, 23611u)), vec2<i32>(61194i, -36173i), false, vec4<f32>(-1724f, -427f, -553f, 1806f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(0i, vec4<u32>(33915u, 0u, 26664u, 4294967295u), vec4<u32>(4294967295u, 89862u, 4294967295u, 48799u)), 81925u, vec4<bool>(false, false, true, false), true, vec2<u32>(0u, 10795u)), vec2<i32>(-5401i, -16586i), true, vec4<f32>(-1741f, 1067f, -352f, -956f), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(2147483647i, vec4<u32>(60264u, 1u, 8909u, 1u), vec4<u32>(1u, 1u, 3458u, 1u)), 0u, vec4<bool>(false, false, false, true), true, vec2<u32>(38873u, 98108u)), vec2<i32>(2147483647i, i32(-2147483648)), false, vec4<f32>(1763f, 391f, -1418f, -1385f), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(-14578i, vec4<u32>(4294967295u, 53097u, 55623u, 0u), vec4<u32>(847u, 0u, 1u, 4294967295u)), 0u, vec4<bool>(true, false, true, false), true, vec2<u32>(11869u, 4294967295u)), vec2<i32>(43847i, 16161i), false, vec4<f32>(1175f, -1255f, 291f, -392f), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(39503i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(76704u, 48321u, 0u, 4294967295u)), 4294967295u, vec4<bool>(true, false, true, true), false, vec2<u32>(17960u, 17911u)), vec2<i32>(0i, -13315i), false, vec4<f32>(179f, -864f, -457f, 1000f), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(11275i, vec4<u32>(111901u, 35577u, 53219u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 31625u)), 33767u, vec4<bool>(true, false, false, true), false, vec2<u32>(0u, 1u)), vec2<i32>(13876i, 32191i), true, vec4<f32>(443f, -346f, 134f, 1264f), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(-39448i, vec4<u32>(8159u, 3631u, 10295u, 4294967295u), vec4<u32>(1u, 68165u, 43419u, 4294967295u)), 1u, vec4<bool>(false, false, true, true), false, vec2<u32>(77804u, 1u)), vec2<i32>(32849i, 30045i), true, vec4<f32>(-965f, 239f, -525f, 475f), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(-1i, vec4<u32>(1u, 19944u, 64173u, 1u), vec4<u32>(4294967295u, 53452u, 1u, 95971u)), 63810u, vec4<bool>(true, false, false, true), true, vec2<u32>(4294967295u, 1u)), vec2<i32>(-35522i, 0i), false, vec4<f32>(-625f, -735f, 197f, 1775f), vec3<bool>(false, false, false)));

var<private> global4: array<i32, 5> = array<i32, 5>(50068i, 24509i, 1i, -1i, -1i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 27243i;
    global4 = array<i32, 5>();
    global2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(max(~12184u, firstTrailingBit(0u)), 35179u, global1.a.e.x), u_input.a), ~u_input.d.x);
    var var_0 = 1206f;
    global2 = ~select(u_input.a.xy, _wgslsmith_add_vec2_u32(vec2<u32>(global2.x, ~63511u), ~vec2<u32>(0u, u_input.b.x)), u_input.d.x <= abs(global1.a.e.x));
    let var_1 = _wgslsmith_mult_u32(1u, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d), _wgslsmith_f_op_vec4_f32(global1.d + global1.d)) + global1.d)), (i32(-1i) * -global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.d.x, 43883u), 5u)]) >> (65572u % 32u), abs(firstLeadingBit(1i)), global1.d.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1502f, _wgslsmith_f_op_f32(624f - 570f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, -1421f) * vec2<f32>(global1.d.x, global1.d.x)), vec2<f32>(global1.d.x, global1.d.x)) * vec2<f32>(1f, global1.d.x)))));
}

