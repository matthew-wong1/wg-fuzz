struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), false);

var<private> global2: vec4<i32> = vec4<i32>(-49875i, 1i, 30816i, -1i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -741f))), _wgslsmith_f_op_f32(-970f + -719f)))));
}

fn func_2(arg_0: u32) -> u32 {
    global0 = array<u32, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -159f)) * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1951f))), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2348f, 1750f, 752f))))));
    global1 = Struct_1(vec4<bool>(!global1.a.x, false, true, global1.a.x), any(vec2<bool>(true || (var_0.x <= -680f), global1.a.x)));
    var var_1 = vec3<u32>(6105u, _wgslsmith_div_u32(~_wgslsmith_add_u32(1u, select(u_input.a, global0[_wgslsmith_index_u32(1u, 13u)], global1.a.x)), max(abs(arg_0 << (global0[_wgslsmith_index_u32(arg_0, 13u)] % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(22003u, 45578u), vec2<u32>(7308u, u_input.a)) >> (_wgslsmith_clamp_u32(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(44956u, 13u)]) % 32u))), _wgslsmith_mod_u32(~abs(3020u | u_input.a), u_input.a));
    var var_2 = true;
    return global0[_wgslsmith_index_u32(select(_wgslsmith_add_u32(25053u, (52288u >> (var_1.x % 32u)) >> (_wgslsmith_mult_u32(u_input.a, 66509u) % 32u)) & ~1u, min(~(~u_input.a), 32851u), global1.b), 13u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<u32>) -> f32 {
    let var_0 = Struct_1(select(vec4<bool>(!arg_2.x, false, true, true & !arg_2.x), vec4<bool>(select(true, !global1.a.x, true), all(vec2<bool>(false, arg_2.x)), !all(vec3<bool>(false, true, false)), global1.b), vec4<bool>(true, global1.b, true, true)), arg_2.x);
    var var_1 = var_0;
    var_1 = Struct_1(!select(select(global1.a, !vec4<bool>(var_0.a.x, var_0.b, true, arg_2.x), any(vec4<bool>(false, true, var_0.a.x, var_1.b))), var_0.a, var_0.b), arg_2.x);
    var var_2 = 1000f;
    var var_3 = select(var_0.a, !select(!global1.a, global1.a, select(select(vec4<bool>(true, var_1.b, arg_2.x, false), global1.a, var_0.a), select(vec4<bool>(false, var_0.b, var_1.b, var_0.a.x), var_0.a, vec4<bool>(true, true, false, var_1.a.x)), !global1.b)), vec4<bool>(true, true, true, true));
    return _wgslsmith_f_op_f32(327f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -622f), -998f))), 1136f));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_4(countOneBits(global2.wyx), ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(54416u, u_input.a), vec2<u32>(u_input.a, u_input.a)) >> (max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(51550u, global0[_wgslsmith_index_u32(22944u, 13u)])) % vec2<u32>(32u)), abs(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], 4294967295u))), select(global1.a.wwz, select(global1.a.zyy, arg_1.a.zwx, vec3<bool>(true, false, false && arg_0.x)), vec3<bool>(true, any(vec2<bool>(global1.b, arg_1.b)), true)), vec3<u32>(~_wgslsmith_div_u32(4294967295u, ~global0[_wgslsmith_index_u32(65219u, 13u)]), func_2(_wgslsmith_mult_u32(1u, 1u)) >> (abs(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 13u)])) % 32u), max(global0[_wgslsmith_index_u32(~40177u, 13u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~55966u), 13u)]))));
    global1 = arg_1;
    global0 = array<u32, 13>();
    let var_1 = arg_1;
    var var_2 = ~vec3<u32>(global0[_wgslsmith_index_u32(108335u, 13u)], ~_wgslsmith_div_u32(~u_input.a, ~0u), _wgslsmith_mult_u32(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 13u)]));
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = func_1(arg_0.a.zy, arg_0, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1644f, -690f, 1023f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1021f, -1239f, -335f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-442f, 867f, -580f), vec3<f32>(-926f, 2819f, -700f))))))), -254f);
    global0 = array<u32, 13>();
    let var_1 = !var_0.a.x;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 13u)], ~_wgslsmith_add_u32(firstLeadingBit(u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(14657u), abs(11458u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 13u)]), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 13u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(22017u, 13u)], u_input.a)) << (~vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 13u)], u_input.a) % vec3<u32>(32u)))), min(~(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36069u, 13u)], 13u)], 13u)], 13u)], u_input.a, u_input.a, global0[_wgslsmith_index_u32(1u, 13u)]) | min(vec4<u32>(4294967295u, u_input.a, 31586u, u_input.a), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a))), min(vec4<u32>(~11413u, 16934u, 5638u >> (u_input.a % 32u), abs(20826u)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, 1u, 0u), vec4<u32>(3305u, 81863u, global0[_wgslsmith_index_u32(0u, 13u)], 0u), vec4<u32>(14086u, 26136u, 1u, u_input.a)), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 15794u, u_input.a)))));
    let var_3 = Struct_1(select(!func_1(vec2<bool>(arg_0.b, var_1), func_1(global1.a.xz, var_0, vec3<f32>(-1465f, 692f, -202f), -1114f), _wgslsmith_div_vec3_f32(vec3<f32>(-225f, 682f, 519f), vec3<f32>(1204f, 292f, 245f)), _wgslsmith_f_op_f32(ceil(-1333f))).a, func_1(var_0.a.zx, arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1501f, -495f, -443f), vec3<f32>(-1000f, 866f, -526f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-264f, 919f, 687f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-488f)), _wgslsmith_f_op_f32(764f - 515f))).a, vec4<bool>(!var_1, !(var_2.x <= 1u), true, arg_0.b)), var_0.a.x);
    return vec4<i32>(-1i) * -(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, global2.x, 77283i, -22258i), vec4<i32>(1i, -2147483647i, -48334i, 0i)) >> (max(~vec4<u32>(u_input.a, var_2.x, u_input.a, 1u), ~vec4<u32>(40747u, u_input.a, 68217u, var_2.x)) % vec4<u32>(32u)));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_1(!(!vec2<bool>(arg_1.a.x, global1.b)), arg_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1720f * -1063f) * _wgslsmith_div_f32(556f, -942f))), -1134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f - -1000f)) + 854f)), _wgslsmith_f_op_f32(-946f + 104f));
    let var_1 = 1000f;
    let var_2 = -16734i < _wgslsmith_mult_i32(countOneBits(abs(global2.x)), func_5(func_1(vec2<bool>(var_0.b, global1.a.x), Struct_1(global1.a, global1.b), _wgslsmith_div_vec3_f32(vec3<f32>(671f, var_1, var_1), vec3<f32>(-1913f, 994f, var_1)), var_1)).x);
    global2 = min(~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, ~u_input.b, 2147483647i >> (global0[_wgslsmith_index_u32(1u, 13u)] % 32u), 26981i), -firstLeadingBit(vec4<i32>(-1i, u_input.b, arg_0.x, arg_2.x))), abs(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -36776i, arg_0.x, -50184i), firstTrailingBit(vec4<i32>(1i, arg_2.x, arg_0.x, arg_0.x))))));
    var_0 = func_1(func_1(vec2<bool>(var_0.a.x, _wgslsmith_div_f32(-2060f, var_1) >= -381f), func_1(var_0.a.xx, func_1(vec2<bool>(var_0.b, false), arg_1, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-628f, -1038f, var_1), vec3<f32>(var_1, var_1, -1684f), var_2)), var_1), vec3<f32>(_wgslsmith_f_op_f32(select(570f, -1000f, global1.a.x)), _wgslsmith_f_op_f32(max(795f, var_1)), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -2560f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, var_1, -115f)) - vec3<f32>(var_1, var_1, var_1))), _wgslsmith_f_op_f32(f32(-1f) * -903f)).a.yy, func_1(global1.a.zz, arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, 268f, -648f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(649f, -1380f, var_1))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, 163f), vec3<f32>(-1324f, var_1, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(852f + 953f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -473f, var_1)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1), var_1, 488f))), var_1);
    return func_1(func_1(global1.a.yy, Struct_1(select(!vec4<bool>(true, true, arg_1.b, true), !arg_1.a, false), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -748f, _wgslsmith_f_op_f32(sign(-1661f))) + vec3<f32>(_wgslsmith_f_op_f32(round(var_1)), 567f, _wgslsmith_f_op_f32(-335f + 598f))), -117f).a.wz, arg_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -836f), -253f))), _wgslsmith_f_op_f32(1184f - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1)))), _wgslsmith_f_op_f32(f32(-1f) * -2509f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, u_input.b, 2147483647i, global2.x), vec4<i32>(18128i, global2.x, global2.x, -1i)), select(vec4<i32>(global2.x, global2.x, 0i, global2.x), vec4<i32>(-2828i, global2.x, global2.x, global2.x), global1.a), -vec4<i32>(u_input.b, 24535i, -20041i, global2.x)), func_5(func_1(vec2<bool>(global1.b, false), Struct_1(vec4<bool>(global1.b, true, global1.a.x, global1.b), true), vec3<f32>(-255f, 1000f, 1389f), 249f))), global2.x, -countOneBits(_wgslsmith_clamp_i32(1i, u_input.b, global2.x))), Struct_1(vec4<bool>(global1.a.x, false, false && any(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false)), (global2.x <= u_input.b) & (u_input.a == 14737u)), true), -func_5(Struct_1(!global1.a, false & global1.b)).zwz);
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1674f * -1455f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(504f + 510f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-147f + 2265f), -1630f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(106f)), -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(floor(-1310f)));
    var var_1 = !(!(!select(select(vec4<bool>(global1.b, global1.a.x, false, false), vec4<bool>(global1.b, global1.b, false, false), global1.a), select(vec4<bool>(global1.b, global1.a.x, global1.a.x, global1.b), vec4<bool>(global1.b, global1.a.x, global1.a.x, true), vec4<bool>(global1.b, global1.a.x, false, true)), select(vec4<bool>(global1.b, global1.a.x, global1.b, true), global1.a, vec4<bool>(true, false, true, global1.a.x)))));
    global1 = func_1(!vec2<bool>(all(!vec2<bool>(false, var_1.x)), true), Struct_1(select(!vec4<bool>(var_1.x, false, var_1.x, false), select(!global1.a, global1.a, !vec4<bool>(var_1.x, false, true, var_1.x)), !var_1.x), var_1.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-634f, 2376f, var_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 704f, _wgslsmith_f_op_f32(-623f * -1977f)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.wzx)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-833f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1042f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -343f)), -647f, 489f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1975f, 655f, var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1142f, 470f, var_0.x, -1796f) * vec4<f32>(2623f, var_0.x, 413f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2215f, 569f, var_0.x, var_0.x))))));
    let var_2 = _wgslsmith_sub_u32(4294967295u, ~89254u);
    let x = u_input.a;
    s_output = StorageBuffer(1433f);
}

