struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec2<u32>(0u, 412u), 1i, vec4<f32>(-549f, -758f, 1046f, 1337f), vec2<i32>(4643i, 24403i), 4294967295u)), Struct_2(Struct_1(vec2<u32>(0u, 1u), -1i, vec4<f32>(286f, -667f, 210f, -1000f), vec2<i32>(16683i, 2147483647i), 1u)), Struct_2(Struct_1(vec2<u32>(29860u, 16531u), 10531i, vec4<f32>(-560f, 199f, -1000f, 301f), vec2<i32>(-6629i, -3026i), 81577u)), Struct_2(Struct_1(vec2<u32>(22398u, 4294967295u), -1i, vec4<f32>(-808f, -874f, -699f, 456f), vec2<i32>(14020i, 2147483647i), 56574u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4329u), 1i, vec4<f32>(-251f, 175f, -791f, 1638f), vec2<i32>(i32(-2147483648), 41621i), 36371u)), Struct_2(Struct_1(vec2<u32>(36101u, 1u), 0i, vec4<f32>(-1209f, 321f, 1564f, 1432f), vec2<i32>(-30596i, -1201i), 29260u)), Struct_2(Struct_1(vec2<u32>(8572u, 61662u), 2147483647i, vec4<f32>(1951f, -144f, -559f, -490f), vec2<i32>(1i, 7718i), 12729u)), Struct_2(Struct_1(vec2<u32>(1u, 0u), i32(-2147483648), vec4<f32>(1413f, 795f, 1220f, -904f), vec2<i32>(i32(-2147483648), i32(-2147483648)), 1u)), Struct_2(Struct_1(vec2<u32>(31059u, 1u), -32211i, vec4<f32>(-517f, -1000f, 861f, -414f), vec2<i32>(-43857i, 23713i), 54149u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 24776u), i32(-2147483648), vec4<f32>(1559f, 1000f, -1063f, 1380f), vec2<i32>(i32(-2147483648), -10172i), 14248u)), Struct_2(Struct_1(vec2<u32>(10549u, 1u), -18360i, vec4<f32>(-1638f, -2384f, -778f, -714f), vec2<i32>(-9533i, -32291i), 1u)), Struct_2(Struct_1(vec2<u32>(3563u, 4294967295u), 12232i, vec4<f32>(-2870f, -1000f, -556f, -1000f), vec2<i32>(i32(-2147483648), -53339i), 30146u)), Struct_2(Struct_1(vec2<u32>(11713u, 57949u), 1i, vec4<f32>(450f, -232f, -834f, 694f), vec2<i32>(-27020i, 1i), 17488u)), Struct_2(Struct_1(vec2<u32>(38816u, 20614u), -668i, vec4<f32>(870f, 2262f, 819f, 713f), vec2<i32>(-18732i, 1i), 66500u)), Struct_2(Struct_1(vec2<u32>(19921u, 31760u), 20128i, vec4<f32>(209f, 516f, -235f, -214f), vec2<i32>(-44259i, 29941i), 6400u)), Struct_2(Struct_1(vec2<u32>(6514u, 23896u), 31090i, vec4<f32>(645f, 219f, 181f, -149f), vec2<i32>(-102200i, i32(-2147483648)), 36954u)), Struct_2(Struct_1(vec2<u32>(0u, 0u), 2147483647i, vec4<f32>(1000f, -578f, -366f, 1550f), vec2<i32>(19166i, 1i), 32778u)), Struct_2(Struct_1(vec2<u32>(15405u, 4294967295u), 21230i, vec4<f32>(-1658f, -346f, 666f, 354f), vec2<i32>(35977i, 18020i), 78516u)), Struct_2(Struct_1(vec2<u32>(51353u, 21984u), 0i, vec4<f32>(-1002f, -1000f, -559f, -793f), vec2<i32>(1i, 1i), 22258u)), Struct_2(Struct_1(vec2<u32>(9102u, 42805u), -1i, vec4<f32>(1667f, -722f, -329f, -1648f), vec2<i32>(2147483647i, i32(-2147483648)), 7638u)));

var<private> global1: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(2147483647i, 45594i), vec2<i32>(-1i, -47008i), vec2<i32>(-34018i, -11863i), vec2<i32>(i32(-2147483648), 26264i), vec2<i32>(-15002i, 2147483647i), vec2<i32>(1i, 19307i), vec2<i32>(2147483647i, -16496i), vec2<i32>(43387i, 15716i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 20312i), vec2<i32>(1i, 1i), vec2<i32>(0i, -16477i), vec2<i32>(0i, -2825i), vec2<i32>(-67507i, 1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    global1 = array<vec2<i32>, 14>();
    global1 = array<vec2<i32>, 14>();
    global0 = array<Struct_2, 20>();
    let var_0 = true;
    global1 = array<vec2<i32>, 14>();
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c.x, arg_0.c.x, -327f), vec3<f32>(arg_0.c.x, arg_0.c.x, 801f))) + _wgslsmith_f_op_vec3_f32(sign(arg_0.c.wyw))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(reverseBits(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 28184u, 13009u, 32711u), vec4<u32>(1u, 1u, 1u, 1u)))), ~1u, 1u);
    global1 = array<vec2<i32>, 14>();
    let var_1 = -2147483647i;
    var var_2 = var_1;
    var var_3 = global0[_wgslsmith_index_u32(~var_0.x, 20u)];
    let var_4 = true;
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_1(var_3.a)), var_3.a.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a.c.x, -1680f, _wgslsmith_f_op_f32(866f * 1363f), var_3.a.c.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(var_3.a.c)))), true))));
}

