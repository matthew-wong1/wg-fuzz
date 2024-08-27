struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<f32, 4> = array<f32, 4>(-1662f, 333f, 185f, 103f);

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec4<f32>(1048f, 660f, -1220f, 1537f), 1i, 1u, false, vec3<f32>(-177f, -1125f, 1050f)), Struct_3(vec4<f32>(753f, -1743f, 919f, 409f), 0i, 36010u, true, vec3<f32>(-1091f, 184f, 1780f)), Struct_3(vec4<f32>(-678f, -1919f, -1278f, 495f), -1i, 4294967295u, false, vec3<f32>(690f, 730f, 403f)), Struct_3(vec4<f32>(-389f, -577f, -1928f, 723f), 6130i, 19037u, false, vec3<f32>(1133f, 1000f, -1163f)), Struct_3(vec4<f32>(-671f, 1025f, -547f, -1857f), 2147483647i, 1u, true, vec3<f32>(1817f, 799f, 1001f)), Struct_3(vec4<f32>(934f, -221f, 584f, -825f), 1i, 4294967295u, false, vec3<f32>(-786f, 309f, 821f)), Struct_3(vec4<f32>(1640f, 1955f, -1286f, 1000f), 0i, 108407u, true, vec3<f32>(-1331f, 337f, 1532f)), Struct_3(vec4<f32>(1085f, -220f, -1038f, -1020f), -36717i, 1u, false, vec3<f32>(418f, 1352f, 769f)), Struct_3(vec4<f32>(946f, -940f, -783f, 978f), -1i, 0u, true, vec3<f32>(794f, -1543f, 336f)), Struct_3(vec4<f32>(802f, -882f, -399f, 956f), 1i, 29122u, true, vec3<f32>(-174f, -1444f, -912f)), Struct_3(vec4<f32>(-535f, 469f, 1191f, -276f), 2147483647i, 0u, true, vec3<f32>(-1000f, 2532f, -1342f)), Struct_3(vec4<f32>(-349f, -590f, 690f, -1246f), -1i, 61906u, false, vec3<f32>(-1000f, -172f, 1000f)), Struct_3(vec4<f32>(358f, 1775f, 337f, -595f), 1i, 39189u, true, vec3<f32>(-524f, 1934f, -633f)), Struct_3(vec4<f32>(1000f, 610f, 523f, 167f), 15817i, 4294967295u, true, vec3<f32>(615f, -1000f, 855f)), Struct_3(vec4<f32>(-903f, 1633f, 562f, -934f), 1i, 0u, true, vec3<f32>(1000f, -879f, -1099f)), Struct_3(vec4<f32>(-731f, -1913f, -874f, 2489f), i32(-2147483648), 4294967295u, false, vec3<f32>(-1606f, -652f, -1000f)), Struct_3(vec4<f32>(133f, 761f, 478f, -546f), 2147483647i, 20576u, true, vec3<f32>(287f, 196f, 858f)), Struct_3(vec4<f32>(-176f, 1569f, -1541f, 910f), 25371i, 0u, false, vec3<f32>(3041f, -2667f, 1011f)), Struct_3(vec4<f32>(-1977f, 1680f, -263f, 404f), i32(-2147483648), 9561u, true, vec3<f32>(233f, 1521f, -688f)), Struct_3(vec4<f32>(1000f, 633f, -764f, 1375f), -6946i, 131960u, false, vec3<f32>(-158f, -139f, -434f)), Struct_3(vec4<f32>(2237f, 1222f, -1417f, 1766f), 0i, 44183u, true, vec3<f32>(-1000f, -225f, -1194f)), Struct_3(vec4<f32>(377f, 444f, 1348f, 947f), -9746i, 11284u, false, vec3<f32>(281f, -1156f, -1637f)), Struct_3(vec4<f32>(1403f, 956f, -1945f, -1000f), 1i, 6333u, false, vec3<f32>(-953f, 396f, -155f)), Struct_3(vec4<f32>(1147f, -1920f, -551f, -788f), 15404i, 50141u, true, vec3<f32>(-1144f, -211f, -1000f)), Struct_3(vec4<f32>(-487f, 1002f, -370f, -886f), 2147483647i, 26746u, false, vec3<f32>(1000f, 1618f, -535f)), Struct_3(vec4<f32>(385f, -539f, 511f, -1360f), 40508i, 1u, true, vec3<f32>(2010f, 105f, -654f)));

var<private> global3: u32 = 4294967295u;

var<private> global4: array<i32, 29>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-903f - -778f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-602f)) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, arg_0), 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 4u)]))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(72061u, 4u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_div_f32(299f, _wgslsmith_f_op_f32(floor(-1873f)))));
    var var_1 = Struct_3(var_0, -(1i & -(global4[_wgslsmith_index_u32(41692u, 29u)] << (1291u % 32u))), min(36420u, 1u), true, vec3<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_0.x, 4u)])), global1[_wgslsmith_index_u32(min(~_wgslsmith_clamp_u32(arg_0.x, 41729u, 0u), abs(arg_0.x)), 4u)], -682f));
    global0 = array<Struct_2, 31>();
    return !select(select(vec2<bool>(any(vec2<bool>(var_1.d, var_1.d)), var_1.d), vec2<bool>(true, true), any(!vec3<bool>(true, var_1.d, var_1.d))), vec2<bool>(any(vec2<bool>(false, var_1.d)), var_1.d), false);
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_2, 31>();
    let var_0 = all(func_3(countOneBits(max(vec3<u32>(4294967295u, 0u, 8754u), vec3<u32>(20956u, 1u, 0u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    return !(!select(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, true), var_0), vec2<bool>(true, any(vec2<bool>(var_0, true))), all(select(vec2<bool>(true, false), vec2<bool>(false, var_0), vec2<bool>(true, var_0)))));
}

fn func_1() -> Struct_1 {
    return Struct_1(!func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = 1u;
    global1 = array<f32, 4>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(~var_1, 4u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_1, 4u)])))))));
    let var_3 = _wgslsmith_div_f32(620f, -1549f);
    global3 = 4294967295u;
    let var_4 = countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, 259u, ~(var_1 ^ 1u), var_1), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 79783u, var_1, 0u), ~vec4<u32>(var_1, 0u, 23349u, var_1)) | ~select(vec4<u32>(var_1, var_1, 1u, var_1), vec4<u32>(var_1, var_1, 81454u, 10251u), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x))));
    global2 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(var_4, vec4<u32>(4294967295u, 61811u, 4294967295u, 7783u)), var_4.x) << (vec2<u32>(countOneBits(var_4.x), _wgslsmith_sub_u32(var_1, var_1)) % vec2<u32>(32u))));
}

