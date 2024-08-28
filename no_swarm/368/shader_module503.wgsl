struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<i32>(40397i, -1i, -26916i), -3401i, 4294967295u, -146i, vec4<i32>(-8898i, 2147483647i, 15860i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, -1i), i32(-2147483648), 71277u, 15907i, vec4<i32>(0i, -36690i, 1i, i32(-2147483648))), Struct_1(vec3<i32>(1i, -1442i, 44789i), -3325i, 72344u, -34389i, vec4<i32>(-1i, 1i, 0i, 21798i)), Struct_1(vec3<i32>(-29512i, -25984i, 12267i), -66968i, 0u, 23162i, vec4<i32>(0i, 1i, 2147483647i, -1i)), Struct_1(vec3<i32>(2147483647i, 35719i, -1i), 20519i, 0u, -31718i, vec4<i32>(10380i, -12966i, 2147483647i, 15990i)), Struct_1(vec3<i32>(-34397i, -20197i, -47726i), -1i, 4294967295u, 22237i, vec4<i32>(i32(-2147483648), -12341i, 27757i, -62073i)), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), -1i, 0u, 0i, vec4<i32>(-15340i, -786i, 1i, -1742i)), Struct_1(vec3<i32>(45088i, i32(-2147483648), 2147483647i), 0i, 24771u, 0i, vec4<i32>(-13i, -1i, 10072i, -35642i)), Struct_1(vec3<i32>(0i, 31557i, -27423i), -1546i, 1u, i32(-2147483648), vec4<i32>(-1i, -38291i, -17907i, 0i)), Struct_1(vec3<i32>(29966i, -33017i, 5112i), -1i, 10449u, i32(-2147483648), vec4<i32>(0i, -1i, 865i, -38882i)), Struct_1(vec3<i32>(-1i, 5746i, 1i), 2198i, 1u, 0i, vec4<i32>(25515i, 21918i, 0i, 0i)), Struct_1(vec3<i32>(-17653i, 1i, i32(-2147483648)), -4259i, 41639u, 1i, vec4<i32>(60491i, -35304i, 28404i, i32(-2147483648))), Struct_1(vec3<i32>(-21757i, 12100i, -1i), -30512i, 39702u, i32(-2147483648), vec4<i32>(-14901i, -86369i, 1i, 25466i)), Struct_1(vec3<i32>(-34150i, 2147483647i, 1i), 31665i, 0u, 0i, vec4<i32>(2734i, 0i, -1i, -24032i)), Struct_1(vec3<i32>(-13988i, 17109i, 2147483647i), -16745i, 0u, 1i, vec4<i32>(-5312i, 0i, -1i, -26952i)), Struct_1(vec3<i32>(-4977i, 48300i, 0i), -41191i, 93730u, -46991i, vec4<i32>(2709i, i32(-2147483648), 26377i, -3876i)));

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    return Struct_1(global3.a, 2147483647i, 4105u, global0.b, firstLeadingBit(global0.e));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-1100f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1071f, 955f)))) + -1493f));
    var var_1 = vec3<bool>(true, true, false);
    let var_2 = !(!select(!(!vec4<bool>(false, false, var_1.x, true)), select(select(vec4<bool>(arg_0.x, false, var_1.x, var_1.x), vec4<bool>(true, arg_0.x, arg_0.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false)), vec4<bool>(true, var_1.x, false, false), !vec4<bool>(false, arg_0.x, false, false)), select(vec4<bool>(false, true, var_1.x, false), select(vec4<bool>(arg_0.x, true, true, false), vec4<bool>(arg_0.x, true, var_1.x, false), vec4<bool>(false, var_1.x, true, true)), false)));
    var_1 = select(var_2.xzx, vec3<bool>(true, var_1.x, var_2.x), vec3<bool>(true, true, true));
    var_1 = var_2.zyy;
    return u_input.e.x ^ -2723i;
}

fn func_2(arg_0: u32) -> vec2<i32> {
    global3 = global2[_wgslsmith_index_u32(global3.c, 16u)];
    global3 = global2[_wgslsmith_index_u32(u_input.c, 16u)];
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))));
    var var_1 = ~max(0u, countOneBits(arg_0));
    let var_2 = Struct_1(global3.a, _wgslsmith_clamp_i32(-global3.b, 0i, func_3(vec2<bool>(false, all(vec3<bool>(true, false, true))), abs(~u_input.b))), ~max(u_input.c, _wgslsmith_dot_vec4_u32(~u_input.a, firstLeadingBit(vec4<u32>(u_input.c, 39920u, 1u, 4294967295u)))), (-7330i << (select(global3.c, ~arg_0, any(vec3<bool>(true, true, true))) % 32u)) >> (u_input.a.x % 32u), max(global3.e >> ((~vec4<u32>(arg_0, 58623u, 35717u, global0.c) << (~u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), min(vec4<i32>(global3.a.x, 1i, i32(-1i) * -1i, global0.b), global3.e)));
    return -var_2.e.xw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(31226i);
    let var_1 = -u_input.e.zy >> (~u_input.b % vec2<u32>(32u));
    let var_2 = func_1(0i & _wgslsmith_sub_i32(~_wgslsmith_sub_i32(0i, u_input.d.x), global0.d));
    global3 = func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -(~var_0.a.x)), func_2(~303u)));
    let var_3 = func_1(countOneBits(0i >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(12425u, global0.c), vec2<u32>(u_input.a.x, global0.c)) % 32u)));
    global3 = Struct_1(var_3.e.zyz, u_input.d.x, _wgslsmith_sub_u32(abs(global3.c | 1u), 0u) & reverseBits(var_2.c), -(~(-1i)), vec4<i32>(var_2.d, -1985i, (abs(u_input.d.x) >> ((global3.c >> (1u % 32u)) % 32u)) | _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(-2147483647i, var_1.x)), var_3.a.x));
    var var_4 = abs(u_input.a.wyz ^ _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_3.c, 35277u, u_input.c), u_input.a.xwx), vec3<u32>(4294967295u, 28119u, var_2.c) | u_input.a.ywz, vec3<u32>(var_2.c, var_3.c, var_2.c)), vec3<u32>(var_2.c, 209u, 56118u) | (vec3<u32>(var_0.c, global0.c, 0u) << (vec3<u32>(u_input.c, global0.c, 56u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(abs(u_input.a.zzy), firstTrailingBit(vec3<u32>(var_3.c, var_0.c, var_3.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~reverseBits(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.a.x, global0.a.x, var_2.d), vec4<i32>(var_3.b, var_1.x, -18020i, global0.e.x)), -2147483647i)), vec4<u32>(0u, 35911u, 4294967295u, 4294967295u));
}

