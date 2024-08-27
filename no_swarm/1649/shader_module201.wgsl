struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, false, false, false, false, false, true, false, false, true, true, true, true, false, false, true, false, true);

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(379f, 393f, -1151f), vec3<f32>(1000f, 1752f, 430f), vec3<f32>(-1046f, -628f, 857f), vec3<f32>(-287f, -1125f, -590f), vec3<f32>(235f, -242f, 1417f), vec3<f32>(1583f, -1378f, 126f), vec3<f32>(279f, 432f, 951f), vec3<f32>(-212f, 1178f, -509f), vec3<f32>(109f, 1293f, -1156f), vec3<f32>(-172f, -1605f, -717f), vec3<f32>(962f, 1454f, 488f), vec3<f32>(-1000f, -1086f, 360f), vec3<f32>(-236f, -789f, -807f), vec3<f32>(110f, -877f, -489f), vec3<f32>(1000f, 329f, -481f), vec3<f32>(1000f, -1439f, 868f), vec3<f32>(701f, 239f, 1212f), vec3<f32>(-525f, 1000f, -619f), vec3<f32>(-1022f, 736f, -760f), vec3<f32>(-1138f, -1000f, 1205f), vec3<f32>(-1702f, -492f, -611f), vec3<f32>(-1000f, -1565f, -258f));

var<private> global3: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f - 1246f) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(414f)) - _wgslsmith_f_op_f32(global1.x + global1.x)), global1.x, global1.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(487f, 822f, global1.x, global1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, -944f, 1157f, 1818f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(463f, global1.x, _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_div_f32(global1.x, 258f), global3.b.x | global3.b.x)), global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-932f * -202f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -204f), -688f)), true)), global3.b.x));
    global2 = array<vec3<f32>, 22>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1f), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f)), 258f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1825f))), _wgslsmith_f_op_f32(-1f), var_0.x, var_0.x));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, -536f, var_0.x)))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -183f), -106f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(750f, var_0.x, -475f, -137f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -970f, 487f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1081f, -806f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1211f, global1.x)), 287f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1283f - -1000f), var_0.x), var_0.x, -141f)));
    return -vec2<i32>(select(~(-arg_1), arg_1, global3.b.x), countOneBits(-_wgslsmith_mult_i32(u_input.b.x, 84253i)));
}

fn func_2() -> i32 {
    var var_0 = -_wgslsmith_mod_i32(_wgslsmith_mod_i32(53333i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 10318i, -2147483647i), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.b.x))), u_input.a.x | -countOneBits(-1i));
    let var_1 = select(global3.b, global3.b, true);
    var var_2 = true;
    let var_3 = max(u_input.a.yx, ~func_3(vec2<bool>(true, var_1.x), u_input.b.x, firstTrailingBit(vec3<u32>(global3.a, 4294967295u, global3.a))));
    var var_4 = 1055f;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-(~max(var_3, vec2<i32>(2147483647i, u_input.b.x))), vec2<i32>(~(var_3.x ^ 15480i), 52254i)), u_input.a.x);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_1(firstTrailingBit(~34695u), vec2<bool>(select(all(!vec3<bool>(true, global3.b.x, true)), true, any(vec2<bool>(true, true))), (25132i <= (u_input.a.x >> (global3.a % 32u))) && (u_input.a.x <= firstLeadingBit(u_input.a.x))));
    var var_1 = Struct_1(abs(~firstTrailingBit(var_0.a)), global3.b);
    let var_2 = var_0;
    var var_3 = arg_1;
    let var_4 = ~4294967295u;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-476f, _wgslsmith_f_op_f32(exp2(global1.x)), global1.x, _wgslsmith_f_op_f32(max(-759f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(262f - global1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 223f), global1.x, global1.x, global1.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1626f, -1043f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x)), vec4<f32>(-543f, -1001f, global1.x, 657f)), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(global3.a, 18u)], true, global0[_wgslsmith_index_u32(4294967295u, 18u)]), !vec4<bool>(false, false, global3.b.x, var_1.b.x), select(vec4<bool>(var_0.b.x, false, global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_0), vec4<bool>(true, var_2.b.x, global3.b.x, var_2.b.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 18u)], true, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)])))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_add_i32(0i, u_input.b.x)) | u_input.a.x;
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    let var_1 = _wgslsmith_mult_i32(countOneBits(_wgslsmith_clamp_i32(-(~940i), -1i, -1i)), u_input.b.x);
    global2 = array<vec3<f32>, 22>();
    return Struct_1(arg_0.a, global3.b);
}

fn func_1() -> u32 {
    let var_0 = countOneBits(~countOneBits(~vec3<u32>(3353u, 0u, global3.a)) | (vec3<u32>(~global3.a, firstTrailingBit(global3.a), ~49412u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(3556u, 64480u, global3.a) | vec3<u32>(global3.a, global3.a, 44341u), vec3<u32>(global3.a, global3.a, 19597u) & vec3<u32>(1u, global3.a, 0u)) % vec3<u32>(32u))));
    global0 = array<bool, 18>();
    let var_1 = func_5(Struct_1(4294967295u, !vec2<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(global3.a, 18u)], false, global3.b.x)), 47644u <= global3.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(true, vec4<i32>(_wgslsmith_mod_i32(-20384i, 2147483647i), func_2(), 0i, u_input.a.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global1.x, 179f, 585f), vec4<f32>(global1.x, global1.x, 1366f, global1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1195f, global1.x, -1320f, 1000f) * vec4<f32>(2282f, -1105f, global1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-225f, global1.x, -114f, -153f)))))));
    global0 = array<bool, 18>();
    var var_2 = select(_wgslsmith_div_vec3_u32(vec3<u32>(select(var_1.a | 4294967295u, var_1.a << (var_1.a % 32u), global3.b.x != false), countOneBits(_wgslsmith_add_u32(global3.a, 4294967295u)), 0u), ~vec3<u32>(var_0.x, ~4294967295u, min(global3.a, global3.a))), vec3<u32>(_wgslsmith_div_u32(abs(~1u), reverseBits(~var_1.a)), _wgslsmith_mod_u32(22671u, ~abs(var_0.x)), var_0.x), !func_5(var_1, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 635f, 1523f, 1908f) * vec4<f32>(global1.x, 679f, -861f, -630f))))).b.x);
    return 1u;
}

fn func_6(arg_0: vec2<i32>, arg_1: u32) -> StorageBuffer {
    let var_0 = ~arg_1;
    var var_1 = _wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, ~var_0, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_0, 46151u, arg_1), ~vec4<u32>(var_0, var_0, 4294967295u, var_0)))), vec4<u32>(var_0, _wgslsmith_div_u32(~38152u, ~arg_1) | arg_1, global3.a, ~arg_1));
    let var_2 = abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, reverseBits(firstLeadingBit(global3.a)), ~(~var_0)), _wgslsmith_sub_vec3_u32(~var_1.yxx, var_1.xyw)));
    var_1 = ~vec4<u32>(0u, var_0, _wgslsmith_mult_u32(global3.a, 52768u), _wgslsmith_mod_u32(func_5(func_5(Struct_1(global3.a, vec2<bool>(false, false)), vec4<f32>(global1.x, 1299f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1000f, global1.x, global1.x) - vec4<f32>(global1.x, global1.x, -127f, global1.x))).a, ~60332u));
    let var_3 = func_5(Struct_1(var_1.x, !global3.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(945f, -597f)), global1.x, 931f, -2087f), vec4<f32>(_wgslsmith_f_op_f32(global1.x * -321f), _wgslsmith_f_op_f32(-global1.x), -844f, _wgslsmith_f_op_f32(-601f + global1.x)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2, var_1.x), var_2, var_2), 18u)]))));
    return StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(arg_1, 22u)] - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(false, -vec4<i32>(12925i, u_input.b.x, 28804i, 34215i))).xxy)), firstTrailingBit(-abs(abs(arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    let x = u_input.a;
    s_output = func_6(u_input.b, ~func_1());
}

