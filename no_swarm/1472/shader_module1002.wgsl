struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(492f, 130f);

var<private> global1: vec4<u32> = vec4<u32>(1171u, 0u, 1u, 4294967295u);

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<u32>(27746u, 13789u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 44980u), vec2<i32>(0i, 0i), vec4<f32>(101f, -475f, -1000f, 1872f)), Struct_3(vec4<u32>(1u, 26651u, 15963u, 68700u), vec3<u32>(0u, 2113u, 1u), vec2<i32>(4502i, 0i), vec4<f32>(-934f, 773f, 161f, 798f)), Struct_3(vec4<u32>(1u, 0u, 26398u, 4860u), vec3<u32>(44196u, 1u, 62911u), vec2<i32>(2147483647i, 2147483647i), vec4<f32>(-2603f, -1064f, -145f, 1266f)), Struct_3(vec4<u32>(22192u, 4294967295u, 34744u, 3455u), vec3<u32>(1u, 8318u, 34366u), vec2<i32>(0i, 0i), vec4<f32>(1000f, -1170f, -1735f, -358f)), Struct_3(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec3<u32>(11375u, 0u, 0u), vec2<i32>(-20835i, 0i), vec4<f32>(458f, -235f, 1000f, -480f)), Struct_3(vec4<u32>(38099u, 52512u, 12087u, 45272u), vec3<u32>(36782u, 3588u, 0u), vec2<i32>(0i, 2147483647i), vec4<f32>(-2571f, 393f, 654f, -175f)), Struct_3(vec4<u32>(4294967295u, 61380u, 45271u, 0u), vec3<u32>(55266u, 0u, 1u), vec2<i32>(-13665i, 1i), vec4<f32>(-1000f, 587f, 1055f, -1000f)), Struct_3(vec4<u32>(22457u, 1u, 68759u, 1u), vec3<u32>(0u, 4294967295u, 4256u), vec2<i32>(31231i, 2147483647i), vec4<f32>(-1109f, -201f, -1241f, -1067f)), Struct_3(vec4<u32>(1u, 0u, 87180u, 1u), vec3<u32>(4294967295u, 46738u, 1u), vec2<i32>(74815i, 2147483647i), vec4<f32>(-525f, -238f, -858f, 217f)), Struct_3(vec4<u32>(1u, 36660u, 1u, 0u), vec3<u32>(2973u, 0u, 0u), vec2<i32>(-26961i, -46816i), vec4<f32>(-1815f, 1000f, -138f, 1858f)), Struct_3(vec4<u32>(4294967295u, 2331u, 1u, 16227u), vec3<u32>(24047u, 0u, 0u), vec2<i32>(i32(-2147483648), -27740i), vec4<f32>(-313f, -1000f, -794f, 538f)), Struct_3(vec4<u32>(0u, 1u, 81796u, 1u), vec3<u32>(8007u, 18501u, 23545u), vec2<i32>(37699i, 73577i), vec4<f32>(-1095f, -1026f, 160f, 897f)), Struct_3(vec4<u32>(65768u, 75775u, 4294967295u, 0u), vec3<u32>(947u, 4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(459f, 2899f, 1000f, 543f)), Struct_3(vec4<u32>(6085u, 88514u, 4294967295u, 2976u), vec3<u32>(1u, 32156u, 38199u), vec2<i32>(2147483647i, -72513i), vec4<f32>(-722f, -624f, 1000f, 1000f)), Struct_3(vec4<u32>(1u, 0u, 30537u, 0u), vec3<u32>(83836u, 59779u, 1u), vec2<i32>(i32(-2147483648), 1i), vec4<f32>(1100f, -465f, 650f, 242f)), Struct_3(vec4<u32>(56456u, 0u, 2783u, 8758u), vec3<u32>(0u, 52773u, 24292u), vec2<i32>(-827i, 2147483647i), vec4<f32>(846f, -891f, -1000f, -188f)), Struct_3(vec4<u32>(14637u, 1469u, 0u, 62208u), vec3<u32>(21255u, 9743u, 113056u), vec2<i32>(-24925i, i32(-2147483648)), vec4<f32>(-1235f, -994f, -251f, -907f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global1 = select(~select(vec4<u32>(1u, 39782u, 1u, 24988u) >> (vec4<u32>(47650u, global1.x, arg_0.a.x, arg_0.a.x) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 32165u, 1u, arg_0.a.x), vec4<u32>(global1.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), !vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c)), ~(select(~vec4<u32>(arg_0.a.x, 4294967295u, 41407u, 20164u), vec4<u32>(1u, 4007u, global1.x, 37510u) | vec4<u32>(1u, arg_0.a.x, global1.x, 4294967295u), select(vec4<bool>(arg_0.c, false, true, arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, false), true)) << (select(vec4<u32>(17492u, arg_0.a.x, 4294967295u, global1.x), ~vec4<u32>(35006u, arg_0.a.x, global1.x, arg_0.a.x), !vec4<bool>(false, true, arg_0.c, true)) % vec4<u32>(32u))), vec4<bool>(true, arg_0.c, true, all(!vec3<bool>(true, true, arg_0.c)) || !any(vec3<bool>(false, false, true))));
    var var_0 = false;
    var var_1 = u_input.b;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-975f + _wgslsmith_f_op_f32(-477f - 1050f)), 996f);
    let var_2 = vec3<u32>(112666u, _wgslsmith_add_u32(global1.x, ~_wgslsmith_add_u32(_wgslsmith_add_u32(63292u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, global1.x, 23154u), global1.wzw))), arg_0.a.x);
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x))), _wgslsmith_f_op_f32(-112f - global0.x), 234f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_div_f32(global0.x, global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = min(firstTrailingBit(~global1.x), _wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(1u, global1.x, global1.x)), ~vec3<u32>(11583u, global1.x, global1.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))) << (vec3<u32>(75989u, 1u, global1.x) % vec3<u32>(32u)), ~(~(~global1.zzx))));
    let var_2 = vec2<u32>(reverseBits(_wgslsmith_add_u32(max(global1.x, 4294967295u), reverseBits(global1.x >> (1u % 32u)))), ~1u);
    let x = u_input.a;
    s_output = func_1(Struct_1(vec2<u32>(var_2.x, 59156u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -211f, global0.x) - vec3<f32>(global0.x, -700f, 656f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1862f)))), true));
}

