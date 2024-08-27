struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(-324f, vec2<i32>(30141i, -7997i), Struct_1(0i, vec3<f32>(-704f, 2765f, 324f), 2147483647i, -1187i), 0i), Struct_3(-1000f, vec2<i32>(22418i, -1i), Struct_1(i32(-2147483648), vec3<f32>(564f, 1054f, 710f), 2147483647i, -1i), i32(-2147483648)), Struct_3(753f, vec2<i32>(i32(-2147483648), -1i), Struct_1(-1i, vec3<f32>(2055f, -246f, 665f), -1i, 0i), 25338i), Struct_3(772f, vec2<i32>(-42450i, 0i), Struct_1(1i, vec3<f32>(-1010f, -906f, 443f), -33378i, -55299i), 24280i), Struct_3(667f, vec2<i32>(-58822i, -1i), Struct_1(-60891i, vec3<f32>(1062f, -543f, 1211f), 44425i, i32(-2147483648)), 0i), Struct_3(1270f, vec2<i32>(-9424i, 23718i), Struct_1(14114i, vec3<f32>(1733f, 190f, 537f), i32(-2147483648), i32(-2147483648)), 62281i), Struct_3(1000f, vec2<i32>(-3534i, 59106i), Struct_1(2147483647i, vec3<f32>(131f, -1197f, 1103f), -1i, 2147483647i), -37957i), Struct_3(-2541f, vec2<i32>(-7328i, i32(-2147483648)), Struct_1(24539i, vec3<f32>(322f, 611f, -929f), -1i, -67559i), 37580i), Struct_3(-228f, vec2<i32>(2147483647i, -1i), Struct_1(6418i, vec3<f32>(1000f, 1000f, 489f), 2147483647i, 1i), -10422i), Struct_3(1040f, vec2<i32>(-12154i, -41360i), Struct_1(32516i, vec3<f32>(-424f, 584f, 1249f), 1i, 34253i), 0i), Struct_3(1051f, vec2<i32>(i32(-2147483648), -15133i), Struct_1(-16278i, vec3<f32>(-512f, -472f, 1038f), -1i, 6612i), i32(-2147483648)), Struct_3(-1737f, vec2<i32>(2147483647i, -40721i), Struct_1(-11521i, vec3<f32>(-631f, -379f, 1098f), i32(-2147483648), -21136i), i32(-2147483648)), Struct_3(1958f, vec2<i32>(2147483647i, 19730i), Struct_1(2147483647i, vec3<f32>(388f, -1073f, 209f), 0i, -1i), 2147483647i), Struct_3(1538f, vec2<i32>(-58269i, 1i), Struct_1(-906i, vec3<f32>(-131f, 204f, 738f), -1i, 1i), -8462i), Struct_3(190f, vec2<i32>(2147483647i, -82908i), Struct_1(2147483647i, vec3<f32>(-794f, 1208f, 479f), 47347i, 70672i), 0i), Struct_3(-378f, vec2<i32>(0i, 15952i), Struct_1(i32(-2147483648), vec3<f32>(-1849f, 1645f, 107f), -25583i, 4939i), 16722i), Struct_3(1484f, vec2<i32>(0i, 2147483647i), Struct_1(-7747i, vec3<f32>(-624f, -2839f, 274f), -7656i, -33345i), 1i));

var<private> global1: vec4<i32>;

var<private> global2: Struct_2 = Struct_2(false);

var<private> global3: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = ~u_input.b.yx;
    let var_1 = all(!arg_0.ww);
    var var_2 = _wgslsmith_f_op_f32(692f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -477f), 194f)));
    let var_3 = vec4<bool>(global2.a, true, true & any(vec4<bool>(true, global1.x < u_input.a.x, all(vec3<bool>(false, arg_0.x, true)), true)), true);
    let var_4 = u_input.b.wxz;
    return firstLeadingBit(-vec4<i32>(abs(-57994i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(13380i, global1.x, u_input.a.x, u_input.a.x), vec4<i32>(46628i, global1.x, -7780i, u_input.a.x)), u_input.a.x, global1.x, u_input.a.x << (min(20868u, 19969u) % 32u)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    let var_0 = u_input.b.xyx ^ u_input.b.xxx;
    var var_1 = any(select(select(vec2<bool>(true, global1.x == -60898i), vec2<bool>(arg_0, false), !any(vec3<bool>(arg_0, global3.a, false))), !vec2<bool>(!arg_0, false), !vec2<bool>(all(vec3<bool>(arg_0, false, arg_0)), any(vec3<bool>(false, arg_0, false)))));
    global1 = arg_2;
    let var_2 = Struct_2(false);
    var var_3 = false;
    return -arg_1;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = ~arg_0.b;
    global3 = Struct_2(global2.a);
    global1 = select(vec4<i32>(-_wgslsmith_sub_i32(~arg_1.c.d, ~u_input.a.x), (~(-8912i) & global1.x) | arg_3.b.x, -u_input.a.x, global1.x), vec4<i32>(0i, ~u_input.a.x, func_4(29897u >= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, 1u)), 24342i, func_3(select(vec4<bool>(global3.a, global2.a, global3.a, global3.a), vec4<bool>(false, global3.a, true, false), true)), ~_wgslsmith_div_u32(arg_2, 63618u)), u_input.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1361f)))) <= _wgslsmith_f_op_f32(min(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - -1720f)))));
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(~arg_2, 4294967295u, countOneBits(u_input.b.x << (arg_2 % 32u))), vec3<u32>(u_input.b.x, 1u, ~(~(~u_input.b.x))));
    var var_2 = i32(-1i) * -20062i;
    return !select(vec4<bool>(!global2.a, true, global2.a, true), select(!select(vec4<bool>(true, global2.a, true, false), vec4<bool>(true, global3.a, false, false), false), vec4<bool>(true, global2.a, global3.a, any(vec3<bool>(true, false, global3.a))), any(select(vec4<bool>(global3.a, false, false, false), vec4<bool>(global2.a, true, global2.a, global3.a), vec4<bool>(global3.a, global2.a, global2.a, global3.a)))), vec4<bool>(1u < (arg_2 | u_input.b.x), true, _wgslsmith_dot_vec2_i32(arg_0.b, arg_0.b) != _wgslsmith_mod_i32(u_input.a.x, arg_0.d), !global2.a && any(vec2<bool>(true, false))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(1041i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.b))), _wgslsmith_mod_i32(1i, -1i) ^ arg_3.a, arg_2.a);
    var var_1 = Struct_2(arg_1.x);
    global1 = _wgslsmith_div_vec4_i32(max(~(-vec4<i32>(666i, arg_2.a, 1i, -22692i)), ~(~vec4<i32>(arg_2.d, arg_2.d, -36009i, 2147483647i))), vec4<i32>(1i, ~(-3430i), arg_2.a, 2147483647i)) << (reverseBits(vec4<u32>(reverseBits(~u_input.b.x), u_input.b.x, ~(~89189u), select(_wgslsmith_div_u32(4294967295u, 4294967295u), u_input.b.x, true))) % vec4<u32>(32u));
    let var_2 = 24236i;
    var var_3 = arg_3;
    return arg_1.x;
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<bool>(true, true, func_5(Struct_1(~(-2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 667f, -1345f), vec3<f32>(1000f, 1000f, 680f)), -1i, u_input.a.x), select(func_2(global0[_wgslsmith_index_u32(25330u, 17u)], Struct_3(199f, u_input.a, Struct_1(u_input.a.x, vec3<f32>(-1205f, -1067f, -744f), u_input.a.x, global1.x), u_input.a.x), u_input.b.x, Struct_3(287f, global1.xw, Struct_1(-1i, vec3<f32>(566f, 1473f, 888f), -5513i, -70340i), -41102i)), vec4<bool>(true, global2.a, true, global2.a), global2.a || global3.a), Struct_1(27633i, vec3<f32>(505f, 1263f, -475f), 2147483647i, global1.x), Struct_1(1i, vec3<f32>(692f, 940f, -216f), 7758i, u_input.a.x)) != (!all(vec4<bool>(false, global3.a, true, false)) | false), global2.a);
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -43978i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i) & vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(global1.x, u_input.a.x)) >> (~25456u % 32u), ~firstLeadingBit(u_input.a.x), _wgslsmith_mod_i32(2147483647i, global1.x >> (u_input.b.x % 32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(~(~(-2147483647i)), func_4(u_input.b.x >= u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 2147483647i), global1.wxw), ~vec4<i32>(global1.x, u_input.a.x, global1.x, -13888i), u_input.b.x), firstTrailingBit(u_input.a.x), firstTrailingBit(u_input.a.x)), -vec4<i32>(global1.x, global1.x, u_input.a.x, u_input.a.x) ^ -vec4<i32>(global1.x, 0i, 15625i, 10620i)));
    return Struct_2(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global2 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(595f, 335f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(sign(-885f)), true)), -931f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(105f, 147f, -672f, 249f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-750f, -1947f, -811f, -104f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, -890f, -565f, -1162f) + vec4<f32>(997f, -1763f, 123f, 544f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-672f * -1359f), _wgslsmith_div_f32(-1191f, 404f), -1709f, _wgslsmith_f_op_f32(1248f - -209f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, 911f, -1411f, -1000f)))))), !vec4<bool>(true, func_2(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], u_input.b.x, global0[_wgslsmith_index_u32(1u, 17u)]).x != var_0, global3.a, (61246u == u_input.b.x) == func_1().a)));
    let var_2 = Struct_2(select(false, global2.a, func_5(Struct_1(0i, _wgslsmith_f_op_vec3_f32(-var_1.wyw), 44458i, global1.x), select(!vec4<bool>(global2.a, true, false, true), vec4<bool>(global3.a, global3.a, global2.a, global3.a), select(vec4<bool>(true, false, global2.a, false), vec4<bool>(global3.a, false, var_0, true), vec4<bool>(false, var_0, var_0, global2.a))), Struct_1(global1.x, vec3<f32>(var_1.x, 695f, var_1.x), u_input.a.x, firstTrailingBit(u_input.a.x)), Struct_1(_wgslsmith_sub_i32(global1.x, 2147483647i), vec3<f32>(var_1.x, 160f, var_1.x), global1.x, func_3(vec4<bool>(var_0, var_0, true, global2.a)).x))));
    let var_3 = _wgslsmith_mod_u32(abs((u_input.b.x | u_input.b.x) ^ u_input.b.x) << (u_input.b.x % 32u), 1u);
    var var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(reverseBits(u_input.a), global1.xx) << (u_input.b.xy % vec2<u32>(32u)), 26636u, _wgslsmith_add_vec3_i32(abs(abs(vec3<i32>(57120i, 39572i, -21135i))), _wgslsmith_mod_vec3_i32(-global1.ywz, vec3<i32>(-3356i, -2147483647i, -1i))) ^ vec3<i32>(func_4(any(vec4<bool>(true, global3.a, global3.a, global2.a)), -36689i, reverseBits(vec4<i32>(2147483647i, u_input.a.x, -1i, 0i)), var_3), -21171i, -max(u_input.a.x, global1.x)), ~vec3<u32>(var_3, 0u, 0u));
}

