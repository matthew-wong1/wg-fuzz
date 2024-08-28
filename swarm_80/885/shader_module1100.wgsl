struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1000f);

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-1537f, -620f, 272f, 290f), vec4<f32>(749f, -240f, -118f, 1300f), vec4<f32>(1223f, -1000f, -272f, -2155f), vec4<f32>(-270f, 238f, 1187f, -1000f), vec4<f32>(1000f, 1094f, -494f, 259f), vec4<f32>(-1074f, -1692f, 776f, 706f), vec4<f32>(206f, 1087f, -201f, -521f), vec4<f32>(1000f, -594f, -131f, -296f), vec4<f32>(-1000f, 743f, -1000f, -1086f), vec4<f32>(471f, 1000f, -1479f, 1703f), vec4<f32>(606f, 130f, -1000f, -307f), vec4<f32>(-2006f, 1273f, 1000f, 1000f), vec4<f32>(196f, 220f, -187f, -1000f), vec4<f32>(2180f, 908f, 869f, 669f), vec4<f32>(-790f, 1000f, 690f, 1706f), vec4<f32>(-360f, 711f, 558f, -805f), vec4<f32>(-146f, 1067f, -684f, -1000f), vec4<f32>(-1126f, -448f, 1571f, -135f), vec4<f32>(-348f, 1308f, 232f, -111f), vec4<f32>(-1539f, 207f, -935f, 1191f), vec4<f32>(-1000f, -383f, 129f, -618f), vec4<f32>(2669f, -1000f, -851f, -362f), vec4<f32>(-1237f, 1501f, -931f, -1000f), vec4<f32>(1002f, -539f, -130f, 663f), vec4<f32>(-1275f, -1325f, 982f, -1000f), vec4<f32>(1133f, 463f, -196f, -101f), vec4<f32>(211f, 1000f, -825f, -1059f), vec4<f32>(-1403f, -128f, -551f, -1568f), vec4<f32>(-1000f, -338f, -2025f, 1234f));

var<private> global2: array<i32, 21>;

var<private> global3: i32 = 1i;

var<private> global4: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 27306u, 14863u), vec3<u32>(16427u, 1969u, 32551u), vec3<u32>(38619u, 0u, 122600u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1663f, global0.a, -1360f), vec3<f32>(697f, global0.a, global0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(705f, 334f, -115f)))))))));
    global1 = array<vec4<f32>, 29>();
    var var_1 = var_0;
    let var_2 = u_input.b.x;
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.b)))))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i, -1i, -29162i)), _wgslsmith_mod_i32(var_2, _wgslsmith_sub_i32(-1i, 0i))) | (1i | max(-1450i, max(u_input.b.x, global2[_wgslsmith_index_u32(u_input.c, 21u)]))), abs(u_input.b.x));
}

