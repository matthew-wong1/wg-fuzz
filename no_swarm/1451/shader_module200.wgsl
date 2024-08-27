struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 1u, 46328u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec4<f32> {
    global1 = reverseBits(~_wgslsmith_clamp_vec3_u32(arg_0.e, ~select(arg_2.e, vec3<u32>(global0.b, arg_0.d.b, arg_0.d.b), vec3<bool>(false, false, false)), arg_2.e));
    var var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(max(~vec2<u32>(arg_1, arg_1), select(vec2<u32>(arg_0.c, arg_0.c), vec2<u32>(u_input.d, global0.b), true)), max(abs(vec2<u32>(u_input.d, 1u)), ~vec2<u32>(global1.x, global1.x))), _wgslsmith_add_u32(abs(~arg_1), firstTrailingBit(firstTrailingBit(64250u)) | max(arg_0.c, 6462u)), arg_1, _wgslsmith_dot_vec2_u32(reverseBits(arg_2.e.yy), max(vec2<u32>(0u, 0u), ~arg_2.e.xy)));
    var var_1 = true;
    var var_2 = max(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, ~arg_0.b.b, 22839u, var_0.x), vec4<u32>(firstLeadingBit(~43416u), 55961u, _wgslsmith_sub_u32(u_input.c, 25525u), _wgslsmith_dot_vec3_u32(arg_0.e & arg_2.e, _wgslsmith_div_vec3_u32(var_0.yzw, var_0.xyz)))), _wgslsmith_div_vec4_u32(vec4<u32>(67589u, _wgslsmith_mod_u32(firstLeadingBit(arg_1), abs(global0.b)), arg_2.d.b, _wgslsmith_dot_vec2_u32(arg_2.e.xx << (vec2<u32>(arg_1, 3423u) % vec2<u32>(32u)), ~vec2<u32>(global1.x, arg_0.e.x))), max(~vec4<u32>(global1.x, 69918u, 21296u, 25923u), ~(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, global0.b)))));
    let var_3 = Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(global0.a.x)), arg_2.a.x, arg_2.a.x), 1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -940f))))), _wgslsmith_f_op_vec4_f32(-global0.d));
    return _wgslsmith_f_op_vec4_f32(-global0.d);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.a.zwx))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * global0.d.x), 449f, _wgslsmith_div_f32(-314f, 766f), global0.a.x) + vec4<f32>(_wgslsmith_div_f32(-116f, 204f), _wgslsmith_f_op_f32(-1000f * 663f), global0.c, _wgslsmith_f_op_f32(1000f - -354f))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global0.d.wyw, Struct_1(vec4<f32>(290f, -993f, -1498f, global0.c), 29933u, global0.d.x, vec4<f32>(1105f, -742f, global0.c, global0.a.x)), 102247u, Struct_1(global0.d, global0.b, 1245f, global0.d), vec3<u32>(u_input.c, global1.x, global1.x)), u_input.d, Struct_2(global0.d.yyy, Struct_1(global0.d, global1.x, global0.a.x, global0.d), u_input.c, Struct_1(vec4<f32>(-716f, global0.a.x, global0.c, global0.a.x), 4294967295u, global0.d.x, vec4<f32>(506f, global0.a.x, 1000f, 1123f)), vec3<u32>(101240u, 39953u, global0.b)))) + _wgslsmith_f_op_vec4_f32(-global0.a)) + global0.d)), u_input.d, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.d.x, -417f, 1257f, -1380f))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, global0.c, global0.d.x, -1501f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, global0.a.x, 1392f, -460f)))), u_input.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(global0.c, global0.a.x, 1663f, global0.d.x)) * _wgslsmith_f_op_vec4_f32(-global0.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -1509f, 1000f, global0.a.x)) - global0.a))), _wgslsmith_mod_vec3_u32(select(vec3<u32>(~u_input.d, u_input.d, u_input.c), _wgslsmith_clamp_vec3_u32(~vec3<u32>(32574u, 67264u, global0.b), select(vec3<u32>(1u, 52253u, 36383u), vec3<u32>(4294967295u, global1.x, 10363u), arg_0), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 43167u, 8551u), vec3<u32>(global0.b, u_input.d, global0.b))), select(!vec3<bool>(false, arg_0.x, arg_0.x), arg_0, all(arg_0.xy))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 25207u, global1.x), max(vec3<u32>(4294967295u, 4294967295u, 25111u), vec3<u32>(0u, global0.b, global0.b))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(4294967295u, 0u, 47858u)), vec3<u32>(1u, u_input.d, global1.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(var_0.a + var_0.d.d.yxz);
    var var_2 = _wgslsmith_add_vec2_i32(-vec2<i32>(24447i, _wgslsmith_clamp_i32(-32328i, -1i, ~13788i)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(2685i, 42034i)), _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-38022i, u_input.b)), min(vec2<i32>(-2147483647i, 53176i), vec2<i32>(-9579i, 24020i)))), reverseBits(-(vec2<i32>(arg_2, arg_2) >> (vec2<u32>(var_0.b.b, 0u) % vec2<u32>(32u))))));
    let var_3 = Struct_2(var_0.a, Struct_1(global0.a, 0u, var_1.x, vec4<f32>(_wgslsmith_f_op_f32(floor(global0.d.x)), var_0.d.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1825f + -875f))), _wgslsmith_f_op_f32(select(-585f, -1020f, any(arg_0.zy))))), 4168u, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) * 1f), _wgslsmith_f_op_f32(-1332f * -308f), 823f, var_0.a.x), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 32241u, 0u), var_0.e) << (_wgslsmith_sub_u32(var_0.d.b, 12413u) % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c) + -260f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1120f, var_1.x, var_0.d.a.x, global0.d.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a, var_0.d.a, vec4<bool>(false, true, false, arg_0.x))) + global0.d))), var_0.e);
    let var_4 = arg_1;
    return _wgslsmith_f_op_vec3_f32(-global0.a.xxx);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1340f, 1000f, arg_2.a.x, _wgslsmith_f_op_f32(floor(arg_0.b.c))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -110f), arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c - 2274f) + -427f), -1822f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(min(arg_1.c, 1038f))))), max(~select(u_input.c, ~global0.b, all(vec2<bool>(true, false))), 17094u), arg_2.b.c, global0.a);
    var var_0 = vec4<i32>(-u_input.a, reverseBits(-2147483647i), u_input.b, _wgslsmith_add_i32(u_input.e, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, u_input.b, u_input.a, 0i), vec4<i32>(u_input.b, -9159i, u_input.e, 1i), false), vec4<i32>(6279i, -20233i, 1i, 33078i))));
    var var_1 = var_0.yy;
    var_1 = var_0.ww;
    var var_2 = 329f;
    return arg_0.d;
}

fn func_1() -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global0.c, 454f)), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_div_f32(-312f, 286f)))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~10855u, ~global0.b), 4294967295u) | 4294967295u, _wgslsmith_f_op_f32(-210f - 2162f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-3038f, -844f, false)) - global0.a.x), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - global0.c))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 1183f, -678f, -1484f)), true)), vec4<f32>(-1885f, _wgslsmith_div_f32(global0.c, 1436f), _wgslsmith_f_op_f32(-445f * 2593f), _wgslsmith_f_op_f32(round(954f)))))));
    let var_0 = global0.d.x;
    let var_1 = 0i;
    let var_2 = any(select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true));
    global0 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.d.x + -177f), _wgslsmith_f_op_f32(993f * global0.a.x), -1387f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(false, true, false), var_2, 0i)) * global0.a.wzz)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.d))), ~7064u, _wgslsmith_f_op_f32(-global0.c), vec4<f32>(_wgslsmith_f_op_f32(global0.d.x - 1500f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, global0.c)), abs(_wgslsmith_add_u32(global0.b, ~0u)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, 416f, 1000f, global0.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, -345f, 455f, 641f) + vec4<f32>(global0.a.x, global0.d.x, global0.d.x, -778f)), !vec4<bool>(var_2, var_2, false, false))), ~_wgslsmith_sub_u32(global0.b, global1.x), -190f, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec3<f32>(-182f, -1472f, global0.a.x), Struct_1(vec4<f32>(global0.c, global0.a.x, -475f, global0.d.x), u_input.c, global0.a.x, vec4<f32>(global0.c, global0.a.x, 1000f, global0.d.x)), 1u, Struct_1(global0.a, global1.x, global0.c, vec4<f32>(-604f, -1000f, global0.c, global0.d.x)), vec3<u32>(121355u, 26648u, 64801u)), global0.b, Struct_2(vec3<f32>(-1379f, global0.d.x, 1695f), Struct_1(vec4<f32>(1614f, -1000f, -1256f, global0.c), 12816u, global0.d.x, vec4<f32>(1000f, 528f, global0.a.x, global0.a.x)), u_input.d, Struct_1(global0.d, 76271u, global0.d.x, vec4<f32>(global0.d.x, global0.a.x, global0.d.x, global0.a.x)), vec3<u32>(15504u, 4294967295u, 63265u))))), vec3<u32>(global0.b, select(_wgslsmith_clamp_u32(u_input.c, 4294967295u, global0.b), ~1u, !var_2), reverseBits(1u))), Struct_1(global0.d, global1.x, -470f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * _wgslsmith_f_op_vec4_f32(sign(global0.a)))))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.wzx) - global0.a.xzy), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(787f, global0.d.x, 1317f, global0.c) - _wgslsmith_f_op_vec4_f32(-global0.a)), ~4294967295u, -1766f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, -460f, global0.c, 981f)))), u_input.d, Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_div_vec4_f32(global0.a, global0.a)), _wgslsmith_clamp_u32(104663u, u_input.c, global0.b) | max(34968u, global0.b), _wgslsmith_div_f32(-774f, -166f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c, global0.a.x, global0.a.x, global0.c))), _wgslsmith_f_op_vec4_f32(max(global0.d, vec4<f32>(1724f, global0.a.x, 461f, -613f)))))), vec3<u32>(_wgslsmith_sub_u32(1u | u_input.c, global1.x), global1.x, 44314u)));
    return u_input.e & -2147483647i;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    var var_0 = arg_1;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-629f, global0.d.x, arg_1.a.x)), Struct_1(vec4<f32>(global0.c, 520f, -960f, 1000f), global0.b, _wgslsmith_f_op_f32(var_0.d.x - var_0.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(146f, global0.a.x, arg_1.a.x, global0.c), var_0.a)), ~_wgslsmith_add_u32(var_0.b, global1.x), Struct_1(vec4<f32>(global0.a.x, global0.c, arg_1.a.x, global0.c), ~1u, arg_1.a.x, vec4<f32>(-1000f, var_0.c, arg_1.c, var_0.c)), countOneBits(~vec3<u32>(arg_1.b, 31054u, arg_1.b))), select(global1.x, u_input.c, _wgslsmith_div_i32(u_input.e, -9871i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.b, arg_0.x))), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(arg_1.d.xww)), arg_1, 53087u | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 39898u, var_0.b), vec3<u32>(38138u, var_0.b, global1.x)), arg_1, abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, global0.b), vec3<u32>(4294967295u, global0.b, global1.x)))))).xyx, arg_1, ~global0.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.d.x)) + _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(561f))))), global0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec3<f32>(-912f, global0.c, var_0.d.x), arg_1, 58556u, Struct_1(global0.d, u_input.c, 1138f, vec4<f32>(-393f, global0.c, global0.a.x, arg_1.a.x)), vec3<u32>(u_input.d, global0.b, 33555u)), 1u, Struct_2(var_0.a.xzw, arg_1, global1.x, Struct_1(vec4<f32>(1866f, arg_1.d.x, var_0.c, arg_1.c), 0u, var_0.d.x, var_0.a), vec3<u32>(arg_1.b, u_input.d, 107654u)))).x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.d.x, arg_1.c), _wgslsmith_f_op_f32(-var_0.c), -1726f, global0.d.x))), vec3<u32>(1u, func_4(Struct_2(vec3<f32>(-188f, global0.a.x, 257f), Struct_1(var_0.d, 21747u, 121f, vec4<f32>(var_0.c, arg_1.a.x, var_0.c, arg_1.a.x)), var_0.b, arg_1, vec3<u32>(global0.b, global0.b, arg_1.b)), arg_1, Struct_2(vec3<f32>(-260f, -335f, var_0.c), Struct_1(vec4<f32>(global0.c, arg_1.d.x, var_0.c, -117f), var_0.b, global0.c, vec4<f32>(-1059f, -1000f, var_0.d.x, -1161f)), global1.x, Struct_1(vec4<f32>(325f, global0.c, global0.c, -147f), global0.b, -1000f, global0.a), vec3<u32>(arg_1.b, 4294967295u, global0.b))).b, var_0.b) | ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(36697u, u_input.d, 0u), vec3<u32>(global1.x, global0.b, global1.x))));
    var var_2 = var_0.b;
    var_0 = arg_1;
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(var_0.a.x)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - var_1.b.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.d.c))))))), ~max(_wgslsmith_mult_u32(~global1.x, 35402u), 30475u), var_1.d.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-383f, -1058f, arg_1.a.x, -256f) * arg_1.d) - _wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(var_1.d.c, global0.a.x, var_0.d.x, 492f), vec4<bool>(arg_2, arg_2, arg_2, false))))))));
    return StorageBuffer(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~countOneBits(~vec3<u32>(global1.x, global1.x, 4294967295u))) ^ _wgslsmith_mod_vec3_u32(abs(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.d, 4294967295u, global1.x), vec3<u32>(20053u, global1.x, global0.b), vec3<bool>(true, false, false)), firstTrailingBit(vec3<u32>(4294967295u, 26443u, 4294967295u)))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b, global0.b, global0.b), vec3<u32>(global1.x, 9370u, 62461u), vec3<u32>(global0.b, 19u, 23815u))));
    let var_1 = false;
    var var_2 = 20572u;
    var var_3 = global0.c;
    var_2 = max(39022u, ~u_input.d);
    var_0 = vec3<u32>(43348u, global0.b, ~4294967295u);
    let x = u_input.a;
    s_output = func_5(vec3<i32>(~(func_1() ^ -u_input.a), -u_input.a, u_input.b), Struct_1(global0.a, 19874u, _wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(661f, global0.d.x, global0.a.x, 681f), global0.d) * global0.d)))), select(var_0.x <= ~var_0.x, (u_input.a >= u_input.b) | any(vec3<bool>(var_1, false, var_1)), any(!vec2<bool>(var_1, var_1))) & (any(vec2<bool>(true, true)) == all(select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(false, var_1, false, false), vec4<bool>(var_1, true, var_1, var_1)))));
}

