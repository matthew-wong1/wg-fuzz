struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-13052i, vec3<f32>(-279f, -767f, 138f));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(28972i, vec3<f32>(1772f, -480f, 1058f)), Struct_1(-60188i, vec3<f32>(292f, -346f, -460f)), Struct_1(0i, vec3<f32>(1000f, -763f, 326f)), Struct_1(1i, vec3<f32>(1608f, -263f, -1275f)), Struct_1(19794i, vec3<f32>(-201f, 1000f, -812f)), Struct_1(-1119i, vec3<f32>(1348f, -1320f, 1191f)), Struct_1(-11802i, vec3<f32>(862f, 748f, -549f)), Struct_1(-27966i, vec3<f32>(344f, -413f, -963f)), Struct_1(i32(-2147483648), vec3<f32>(122f, -480f, -124f)), Struct_1(12335i, vec3<f32>(303f, 596f, 1204f)), Struct_1(14893i, vec3<f32>(-488f, -327f, 264f)), Struct_1(-8698i, vec3<f32>(421f, 1360f, -1826f)), Struct_1(33403i, vec3<f32>(-686f, 429f, -1907f)), Struct_1(0i, vec3<f32>(-123f, 247f, -1887f)), Struct_1(16150i, vec3<f32>(-1132f, 218f, 1226f)), Struct_1(-48810i, vec3<f32>(934f, 1000f, 354f)), Struct_1(2147483647i, vec3<f32>(1083f, -360f, -1132f)), Struct_1(2147483647i, vec3<f32>(252f, -1314f, -1045f)), Struct_1(-33137i, vec3<f32>(184f, 599f, 413f)), Struct_1(54551i, vec3<f32>(2344f, 110f, -1213f)), Struct_1(i32(-2147483648), vec3<f32>(1000f, 180f, 1948f)), Struct_1(16275i, vec3<f32>(121f, -1000f, -1417f)), Struct_1(17072i, vec3<f32>(680f, -1000f, -1017f)), Struct_1(0i, vec3<f32>(-1142f, 815f, 1008f)), Struct_1(-90846i, vec3<f32>(390f, 353f, -629f)), Struct_1(i32(-2147483648), vec3<f32>(1241f, 335f, 968f)), Struct_1(-8240i, vec3<f32>(719f, -488f, -2015f)), Struct_1(-43519i, vec3<f32>(-121f, -893f, 1091f)), Struct_1(-26128i, vec3<f32>(166f, 179f, -1040f)));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(i32(-2147483648), vec3<f32>(121f, -548f, 551f)), Struct_1(-1i, vec3<f32>(-1000f, 332f, 817f)), Struct_1(2147483647i, vec3<f32>(278f, -480f, -973f)), Struct_1(-13873i, vec3<f32>(2043f, 198f, 275f)), Struct_1(0i, vec3<f32>(1205f, -1236f, -865f)), Struct_1(9587i, vec3<f32>(-851f, -764f, 1286f)), Struct_1(0i, vec3<f32>(691f, -1000f, 1402f)), Struct_1(-269i, vec3<f32>(1721f, 1281f, -1315f)), Struct_1(-42969i, vec3<f32>(-620f, 321f, -1194f)));

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(2147483647i, vec3<f32>(-1000f, 1029f, 1686f)), Struct_1(15581i, vec3<f32>(1116f, 211f, 951f)), Struct_1(-22873i, vec3<f32>(1280f, -504f, 731f)), Struct_1(45571i, vec3<f32>(-1345f, -1675f, -369f)), Struct_1(-1i, vec3<f32>(-1000f, 654f, -477f)), Struct_1(-34345i, vec3<f32>(309f, -639f, 1681f)), Struct_1(-1i, vec3<f32>(870f, -1384f, -1000f)), Struct_1(-33426i, vec3<f32>(-938f, 1000f, 1378f)), Struct_1(-9937i, vec3<f32>(-153f, 345f, 2044f)), Struct_1(i32(-2147483648), vec3<f32>(324f, 265f, -1237f)), Struct_1(1i, vec3<f32>(2018f, 2069f, 370f)), Struct_1(14206i, vec3<f32>(1821f, -212f, -1000f)), Struct_1(7420i, vec3<f32>(-401f, -1221f, 1000f)), Struct_1(77459i, vec3<f32>(497f, -742f, 169f)), Struct_1(8931i, vec3<f32>(709f, -176f, 994f)), Struct_1(20341i, vec3<f32>(-269f, -597f, -1000f)), Struct_1(-27513i, vec3<f32>(1000f, 679f, -360f)), Struct_1(-1i, vec3<f32>(529f, -1280f, -364f)), Struct_1(44590i, vec3<f32>(-336f, -1464f, -637f)));

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    global0 = Struct_1(firstLeadingBit(-59418i), _wgslsmith_f_op_vec3_f32(-arg_1.b));
    let var_0 = global2[_wgslsmith_index_u32(~16040u, 9u)];
    let var_1 = arg_0;
    global3 = array<Struct_1, 19>();
    let var_2 = true;
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(65995i, -1i), vec2<i32>(u_input.a, arg_1.a)) ^ max(vec2<i32>(u_input.a, 863i), firstLeadingBit(vec2<i32>(arg_1.a, -35699i))), (vec2<i32>(-1i) * -vec2<i32>(2147483647i, 38064i)) | max(-vec2<i32>(arg_1.a, arg_1.a), min(vec2<i32>(global0.a, -2147483647i), vec2<i32>(39503i, arg_1.a)))), vec3<f32>(-320f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x - global0.b.x), _wgslsmith_f_op_f32(floor(global0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1084f - global0.b.x) + _wgslsmith_f_op_f32(max(global0.b.x, 1321f))))));
    global2 = array<Struct_1, 9>();
    global2 = array<Struct_1, 9>();
    global3 = array<Struct_1, 19>();
    global0 = Struct_1(global0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(703f))), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(ceil(global0.b.x))));
    return global0.b.x != var_0.b.x;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    global2 = array<Struct_1, 9>();
    global2 = array<Struct_1, 9>();
    global4 = array<Struct_1, 10>();
    let var_1 = func_4(max(1u, (4294967295u >> (func_3(global3[_wgslsmith_index_u32(4294967295u, 19u)], Struct_1(36334i, vec3<f32>(1000f, 1000f, var_0)), Struct_1(global0.a, vec3<f32>(-1277f, global0.b.x, var_0)), true) % 32u)) >> (0u % 32u)), global4[_wgslsmith_index_u32(~reverseBits(func_3(Struct_1(19194i, vec3<f32>(global0.b.x, var_0, 183f)), global4[_wgslsmith_index_u32(0u, 10u)], Struct_1(u_input.a, vec3<f32>(arg_0.x, 944f, global0.b.x)), true)) ^ 4294967295u, 10u)]);
    return global3[_wgslsmith_index_u32(~(~(~(~1u) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(35330u, 11952u, 13103u)))), 19u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = reverseBits(_wgslsmith_mod_i32(global0.a, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-1i, 16246i)), vec2<i32>(firstLeadingBit(arg_0.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, -7935i), vec2<i32>(-11970i, arg_0.a))))));
    let var_1 = global0.b;
    var var_2 = arg_2;
    var var_3 = func_2(global0.b);
    let var_4 = func_2(arg_2.b);
    return ~(~(~abs(_wgslsmith_mod_u32(23588u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, func_1(Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0.a, -1i), vec3<i32>(u_input.a, 2147483647i, global0.a)), global0.b), vec4<bool>(true, false, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), Struct_1(~2147483647i, vec3<f32>(-2545f, global0.b.x, _wgslsmith_f_op_f32(sign(1532f)))))), 29u)];
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~32310u, ~(~39566u), _wgslsmith_mod_u32(max(27409u, 1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(11496u, 14633u, 4294967295u, 4294967295u), vec4<u32>(10481u, 21893u, 29224u, 3492u)), 64954u), _wgslsmith_mult_u32(44610u, _wgslsmith_dot_vec4_u32(vec4<u32>(2935u, 41950u, 0u, 1u), abs(vec4<u32>(0u, 17810u, 96709u, 0u))))), ~vec4<u32>(select(1u, 127180u, true) & reverseBits(26251u), 1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(27938u, 0u, 1u), vec3<u32>(28887u, 47509u, 4790u))), abs(~0u)), reverseBits(~(~(vec4<u32>(0u, 4294967295u, 18837u, 33642u) >> (vec4<u32>(0u, 1u, 1u, 1u) % vec4<u32>(32u))))));
    let var_2 = Struct_1(-func_2(_wgslsmith_f_op_vec3_f32(floor(global0.b))).a, var_0.b);
    global1 = array<Struct_1, 29>();
    var var_3 = _wgslsmith_mod_i32(~(-(~var_0.a)), 19306i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~4294967295u), ~14195i);
}

