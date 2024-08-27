struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, Struct_1(-3551i, -1i, -12990i), Struct_1(-10281i, -6064i, i32(-2147483648)));

var<private> global1: u32 = 33194u;

var<private> global2: f32 = -1160f;

var<private> global3: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-444f, 1517f, -339f), vec3<f32>(-706f, -1065f, 997f), vec3<f32>(1303f, 889f, 538f), vec3<f32>(1242f, 909f, 635f), vec3<f32>(1822f, -744f, 807f), vec3<f32>(1597f, -128f, -789f), vec3<f32>(-1300f, -1203f, 3462f), vec3<f32>(-415f, 128f, 747f), vec3<f32>(-210f, 1868f, -1131f), vec3<f32>(-408f, 1786f, 467f), vec3<f32>(833f, -503f, -1933f), vec3<f32>(-243f, 525f, -1243f), vec3<f32>(-1633f, 1157f, 1340f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = global0.b;
    global1 = _wgslsmith_mult_u32(u_input.b, min(~1u, ~(~4294967295u)));
    var var_1 = Struct_2(1i, global0.c, Struct_1(min(0i, 13681i), arg_0 | global0.b.b, _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0, ~1i, var_0.a), 8160i)));
    let var_2 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), false), false), true), all(!vec4<bool>(true, all(vec2<bool>(true, false)), all(vec2<bool>(true, false)), true)));
    return -866f;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> vec4<bool> {
    global3 = array<vec3<f32>, 13>();
    let var_0 = ~u_input.c;
    var var_1 = global0.b;
    global2 = _wgslsmith_f_op_f32(func_3(min(i32(-1i) * -34027i, ~(-global0.c.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1093f, -614f, _wgslsmith_f_op_f32(arg_0.x * -802f), _wgslsmith_f_op_f32(min(-125f, -1679f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, arg_0.x, -1253f, 949f), vec4<f32>(-982f, arg_0.x, arg_0.x, 590f))))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1309f, -1467f, 181f) + vec4<f32>(-252f, arg_0.x, arg_0.x, arg_0.x)) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))));
    return vec4<bool>(true, arg_2, arg_2, !all(vec2<bool>(arg_2, arg_2)));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_dot_vec3_i32(abs(~(~vec3<i32>(-1i, arg_1.c.c, 0i))), _wgslsmith_div_vec3_i32(-vec3<i32>(global0.a, global0.c.b, arg_1.a) << (~vec3<u32>(u_input.c.x, u_input.b, 1u) % vec3<u32>(32u)), ~vec3<i32>(40952i, -10119i, 1i))), Struct_1(~arg_1.b.b | _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.a, 14103i, global0.c.c), global0.b.c & global0.b.a), _wgslsmith_add_i32(arg_1.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -27818i), vec2<i32>(-1i, -2147483647i)), 0i)), ~61787i), Struct_1(1i, ~global0.a, global0.b.b));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(19095i, firstTrailingBit(~(-61503i))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f))));
    let var_0 = vec4<bool>(!arg_0, arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-829f * -1448f))) >= -1483f, arg_0);
    let var_1 = ~vec3<i32>(15925i, arg_1.b.c, 0i);
    let var_2 = max(_wgslsmith_sub_vec3_u32(u_input.d.zyz, u_input.d.yww), abs(vec3<u32>(0u, u_input.b, u_input.a)) & ~u_input.d.wyy);
    return Struct_2(arg_1.a, Struct_1(1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.b.b << (u_input.c.x % 32u), abs(global0.c.b)), 7955i), -1i), global0.c);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global3 = array<vec3<f32>, 13>();
    global3 = array<vec3<f32>, 13>();
    var var_0 = func_4(~u_input.d.x >= _wgslsmith_add_u32(u_input.b, 63107u), func_4(any(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(330f, -1000f, -909f), global3[_wgslsmith_index_u32(u_input.a, 13u)], false)), ~u_input.d.xzw, false, arg_2.b.b)), arg_2)).b;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(var_0.a, arg_0, arg_0)), min(vec3<i32>(arg_1.c.b, global0.c.a, 26598i), vec3<i32>(arg_0, -17126i, arg_1.c.b)) << (vec3<u32>(4294967295u, u_input.b, u_input.d.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(1i, 2147483647i, arg_0)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -64130i, var_0.c), vec3<i32>(arg_2.c.a, var_1.b.c, -1i)))), -(vec3<i32>(-2147483647i, 5630i, arg_2.c.b) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.a, global0.c.a), vec3<i32>(var_1.c.b, 1i, -1i)))), -(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_1.c.a, 435i), -vec3<i32>(var_0.b, var_0.a, var_0.a))), -vec3<i32>(global0.b.c, firstTrailingBit(-1i), global0.b.b));
    return func_4(all(!vec3<bool>(true, true, all(vec2<bool>(true, false)))), Struct_2(-33957i >> (~u_input.b % 32u), Struct_1(arg_0, arg_1.a | var_1.a, arg_2.c.b), Struct_1(var_2.x, 41078i, ~var_2.x)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_5(~0i, func_4(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), func_2(global3[_wgslsmith_index_u32(89162u, 13u)], u_input.d.xwy, false, global0.a))), Struct_2(firstTrailingBit(_wgslsmith_add_i32(-2147483647i, 700i)), global0.c, global0.b)), func_4(true, Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-4020i, 0i), firstTrailingBit(vec2<i32>(arg_0, -13290i))), Struct_1(global0.b.b, ~2147483647i, global0.a), Struct_1(-2147483647i, countOneBits(2147483647i), arg_0))));
    let var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, -348f, _wgslsmith_f_op_f32(floor(-223f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(678f, -1312f))))));
    global1 = ~(0u ^ ~var_1);
    var var_3 = var_0.c;
    return var_0;
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))))) * global3[_wgslsmith_index_u32(1u, 13u)]);
    var var_1 = -1694f;
    global3 = array<vec3<f32>, 13>();
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-(~29631i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.a, arg_1.b.c, 14710i), vec4<i32>(1i, arg_1.b.c, 33869i, global0.c.b))), _wgslsmith_clamp_i32(select(arg_1.a, global0.c.c | -1i, true), arg_1.c.b, ~global0.b.c)), ~abs(_wgslsmith_mod_i32(2147483647i, i32(-1i) * -2147483647i)));
    var_1 = _wgslsmith_f_op_f32(round(987f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f));
}

fn func_7(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(~1u, 13u)] + _wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(~u_input.c.x, 13u)]))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1105f)), -973f)) + _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(1u, 13u)]));
    var var_1 = -(~_wgslsmith_mult_i32(-1i, 1i));
    var var_2 = Struct_1(~_wgslsmith_clamp_i32(13496i, -6156i, _wgslsmith_clamp_i32(1i, countOneBits(global0.c.c), _wgslsmith_div_i32(-28811i, -3667i))), -select(-27560i, 49655i, global0.b.c >= -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(~global0.a, func_5(global0.c.c, Struct_2(-20575i, global0.c, Struct_1(1i, -6812i, global0.a)), func_1(global0.c.b)).b.a, global0.b.a, _wgslsmith_clamp_i32(0i, global0.c.b, -global0.c.a)), vec4<i32>(global0.c.a, countOneBits(firstLeadingBit(global0.b.a)), ~global0.a, global0.c.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.xy * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, var_0.x))), vec2<f32>(252f, 247f))), var_0.xy, -56451i <= reverseBits(global0.b.c))) * vec2<f32>(-204f, _wgslsmith_f_op_f32(func_3(var_2.a))));
    var var_4 = Struct_2(-31606i, Struct_1(-_wgslsmith_clamp_i32(1i >> (u_input.d.x % 32u), reverseBits(var_2.a), firstTrailingBit(15050i)), _wgslsmith_div_i32(-24479i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1420i, 13838i, -4193i, 54813i), min(vec4<i32>(53237i, var_2.a, 14997i, -1i), vec4<i32>(var_2.b, var_2.b, -1i, global0.a)))), global0.c.a), Struct_1(i32(-1i) * -func_5(17639i, Struct_2(-2147483647i, Struct_1(var_2.c, var_2.c, 0i), global0.b), Struct_2(0i, Struct_1(var_2.b, 2147483647i, global0.b.a), global0.b)).a, 1i, -global0.b.c));
    return global0.c;
}

fn func_8(arg_0: Struct_1) -> Struct_2 {
    global1 = u_input.d.x;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-180f)) - -1730f) - _wgslsmith_f_op_f32(-603f * _wgslsmith_f_op_f32(f32(-1f) * -611f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-238f, _wgslsmith_f_op_f32(f32(-1f) * -432f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-910f))))));
    global1 = u_input.b;
    let var_0 = reverseBits(_wgslsmith_sub_vec2_i32(min(-vec2<i32>(1i, arg_0.b), abs(vec2<i32>(global0.b.b, global0.a))) | _wgslsmith_clamp_vec2_i32(select(vec2<i32>(arg_0.b, global0.c.b), vec2<i32>(global0.a, arg_0.b), vec2<bool>(false, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(-16722i, arg_0.c), vec2<i32>(arg_0.b, 21958i)), vec2<i32>(arg_0.b, arg_0.a)), _wgslsmith_sub_vec2_i32((vec2<i32>(2147483647i, 561i) ^ vec2<i32>(arg_0.c, 1i)) ^ vec2<i32>(-2147483647i, -2147483647i), ~vec2<i32>(2147483647i, global0.b.a))));
    var var_1 = countOneBits(~11960u);
    return func_5(1i, Struct_2(func_1(-1i).a, arg_0, func_1(2147483647i).b), Struct_2(7785i, global0.c, global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 13>();
    let var_0 = func_8(func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(-317f, func_1(1i))))));
    let var_1 = var_0.b;
    let var_2 = ~(~u_input.a);
    let var_3 = global0.c;
    var var_4 = func_1(global0.b.b).b;
    global3 = array<vec3<f32>, 13>();
    let var_5 = !select(!select(vec2<bool>(true, true), func_2(global3[_wgslsmith_index_u32(1u, 13u)], vec3<u32>(4294967295u, u_input.b, var_2), false, var_0.c.a).wz, true), vec2<bool>(_wgslsmith_dot_vec3_u32(u_input.d.zyx, u_input.d.zxz) >= ~u_input.c.x, false), func_2(vec3<f32>(296f, _wgslsmith_div_f32(2377f, -464f), _wgslsmith_f_op_f32(-383f * -228f)), u_input.d.www >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 0u, 1u), vec3<u32>(4294967295u, var_2, 1u)) % vec3<u32>(32u)), all(vec3<bool>(true, true, true)), func_8(Struct_1(-20591i, var_4.b, var_4.a)).b.a).wz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-vec4<i32>(global0.c.a, 2147483647i, var_4.a, 1i) ^ vec4<i32>(_wgslsmith_div_i32(0i, -2147483647i), func_4(false, var_0).b.c, 9661i, _wgslsmith_div_i32(var_3.b, 1i)), abs(-max(vec4<i32>(var_1.c, -21645i, var_0.a, 58641i), vec4<i32>(2147483647i, global0.c.c, var_1.c, var_1.a)))));
}

