struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1470f, -641f, -1418f), 704f, -1i);

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(-1201f, -563f, 422f), 430f, 0i), Struct_1(vec3<f32>(-194f, -524f, 132f), 445f, 2147483647i), Struct_1(vec3<f32>(-2061f, 811f, 521f), -301f, 10699i), Struct_1(vec3<f32>(-1000f, 155f, -1052f), -299f, 1i), Struct_1(vec3<f32>(500f, -1000f, 113f), 662f, 13247i), Struct_1(vec3<f32>(146f, -386f, -645f), -796f, 9025i), Struct_1(vec3<f32>(1180f, 1398f, 1000f), -185f, i32(-2147483648)), Struct_1(vec3<f32>(151f, -1152f, -490f), -247f, 1i), Struct_1(vec3<f32>(388f, -714f, -595f), -713f, 1i), Struct_1(vec3<f32>(-1156f, -2187f, 1000f), -925f, -54219i), Struct_1(vec3<f32>(645f, -223f, 1507f), -934f, -23115i), Struct_1(vec3<f32>(-622f, 926f, -328f), -1601f, 0i), Struct_1(vec3<f32>(568f, -858f, 860f), 1998f, 1i), Struct_1(vec3<f32>(-1000f, -1337f, 523f), -555f, 2147483647i), Struct_1(vec3<f32>(650f, 212f, -698f), 1326f, 1i), Struct_1(vec3<f32>(238f, 359f, -1912f), 215f, 0i), Struct_1(vec3<f32>(1000f, -1000f, -671f), 2056f, -82838i), Struct_1(vec3<f32>(-380f, -1126f, -1000f), -1631f, -53088i), Struct_1(vec3<f32>(3025f, 501f, 1378f), 611f, -8643i), Struct_1(vec3<f32>(-1360f, -1185f, -1585f), 1563f, i32(-2147483648)), Struct_1(vec3<f32>(-633f, 124f, -1168f), -808f, -12958i), Struct_1(vec3<f32>(-1176f, -475f, 454f), -735f, -40229i), Struct_1(vec3<f32>(-684f, -440f, 164f), -479f, 26715i), Struct_1(vec3<f32>(-1000f, -1000f, 120f), 1601f, -61430i), Struct_1(vec3<f32>(1746f, 1000f, -1000f), 402f, 1i), Struct_1(vec3<f32>(689f, 572f, 1000f), 947f, -1i), Struct_1(vec3<f32>(391f, -182f, 1731f), -317f, 1i), Struct_1(vec3<f32>(2297f, 1000f, 654f), 1300f, -26998i), Struct_1(vec3<f32>(-253f, 809f, -1265f), 1162f, -19264i), Struct_1(vec3<f32>(158f, -1000f, -323f), -1000f, 20060i), Struct_1(vec3<f32>(361f, -449f, -1443f), -176f, 1i));

var<private> global3: array<Struct_1, 3>;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<f32>(-1926f, -753f, -679f), -1000f, 71292i), Struct_1(vec3<f32>(-1368f, -1211f, -404f), -229f, 51341i), Struct_1(vec3<f32>(2500f, -1000f, -2051f), -513f, 13024i), Struct_1(vec3<f32>(-672f, -199f, -1255f), 1133f, 19902i), Struct_1(vec3<f32>(-1032f, -791f, -946f), 1000f, 56835i), Struct_1(vec3<f32>(1140f, -1695f, -1642f), 1000f, i32(-2147483648)), Struct_1(vec3<f32>(-1148f, -128f, 116f), 1158f, 1i), Struct_1(vec3<f32>(-1137f, 1535f, -2329f), -881f, -43779i), Struct_1(vec3<f32>(-948f, 1475f, -1010f), -147f, -31561i), Struct_1(vec3<f32>(1243f, 761f, -1364f), -922f, 48688i), Struct_1(vec3<f32>(-727f, 1047f, 1047f), -426f, 1i), Struct_1(vec3<f32>(458f, -467f, 1883f), -401f, 2147483647i), Struct_1(vec3<f32>(-163f, 493f, -1000f), -1483f, 2147483647i), Struct_1(vec3<f32>(792f, -523f, 1183f), -1000f, 0i), Struct_1(vec3<f32>(356f, 280f, -1377f), 252f, 2147483647i), Struct_1(vec3<f32>(1592f, 122f, 791f), 413f, -46002i), Struct_1(vec3<f32>(1672f, 253f, -992f), 749f, -37057i), Struct_1(vec3<f32>(1412f, -183f, -787f), -246f, 13844i), Struct_1(vec3<f32>(-1350f, -305f, -1167f), -545f, 0i), Struct_1(vec3<f32>(943f, -205f, -968f), -292f, 2147483647i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    var var_0 = Struct_1(vec3<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1487f + global0.a.x), 393f) - _wgslsmith_div_f32(-632f, global0.b)), _wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(global0.b - global0.a.x)))), global0.a.x, _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(-33242i, max(_wgslsmith_div_i32(-31224i, u_input.c), global0.c))));
    global4 = array<Struct_1, 20>();
    global2 = array<Struct_1, 31>();
    global1 = arg_1;
    let var_1 = arg_1;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.b))));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    let var_0 = -_wgslsmith_sub_vec2_i32(~select(u_input.e, u_input.e, vec2<bool>(true, false)), ~u_input.e & (u_input.e | vec2<i32>(global0.c, arg_0))) ^ (vec2<i32>(global0.c, ~(~(-2147483647i))) ^ (u_input.e ^ ~u_input.e));
    global2 = array<Struct_1, 31>();
    var var_1 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, select(true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), !all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, arg_0, var_0.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(~global0.c, -2147483647i, _wgslsmith_add_i32(-1i, global0.c)), firstTrailingBit(vec3<i32>(var_0.x, -1i, -1i) >> (vec3<u32>(u_input.b, u_input.b, 77141u) % vec3<u32>(32u)))), reverseBits(-firstTrailingBit(vec3<i32>(27214i, 0i, 1i))) << (~vec3<u32>(~u_input.d, u_input.b >> (u_input.d % 32u), firstLeadingBit(1u)) % vec3<u32>(32u)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a, u_input.d, 27843u, 31868u), var_1.x)), global0.a.x, _wgslsmith_f_op_f32(min(424f, global0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-968f, global0.b, 1369f) * global0.a)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(global0.a))))), _wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.x, 2477i, var_0.x, 50916i), abs(vec4<i32>(u_input.c, -22178i, arg_0, global0.c))) & _wgslsmith_add_i32(arg_0, _wgslsmith_mod_i32(~48415i, arg_0 | var_0.x)));
    return reverseBits(vec4<i32>(~(-firstLeadingBit(-1i)), global0.c, 6961i, select(-u_input.c, 1i, select(!var_1.x, var_1.x, !var_1.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = select(any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true))), firstTrailingBit(-(global0.c ^ -36636i)) >= _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-1i), 43339i, u_input.c, -2147483647i), func_2(~u_input.e.x)), false);
    let var_1 = select(any(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(u_input.c < -2147483647i, all(vec4<bool>(true, true, true, false))), all(vec2<bool>(true, true)))), true, false);
    let var_2 = (vec4<i32>(-1i) * -select(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c, global0.c, u_input.c, u_input.e.x), vec4<i32>(global0.c, 18383i, global0.c, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, global0.c), vec4<i32>(global0.c, u_input.e.x, 26214i, -1i)), true)) | vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.c, -1i, global0.c), vec3<i32>(2147483647i, global0.c, 9108i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 660i, u_input.e.x), vec3<i32>(u_input.e.x, 0i, -1i))), ~func_2(u_input.c).wzx), u_input.e.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, u_input.c, global0.c), vec3<i32>(global0.c, u_input.c, 1i)), 2147483647i);
    global2 = array<Struct_1, 31>();
    let var_3 = min(max(u_input.b, (4294967295u << (~u_input.d % 32u)) >> (_wgslsmith_div_u32(~u_input.d, max(u_input.a, 0u)) % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.b), vec2<u32>(u_input.b, u_input.a) ^ vec2<u32>(u_input.b, u_input.d)), ~(~vec2<u32>(u_input.a, 62217u))), vec2<u32>(u_input.d, _wgslsmith_mod_u32(u_input.b, min(u_input.b, 4294967295u)))));
    return Struct_1(global0.a, 2490f, countOneBits(var_2.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(-max(vec2<i32>(13983i, -1i), u_input.e)), arg_2.wx);
    var var_1 = func_1();
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(12287u, 4294967295u, 1237u), vec3<u32>(1u, u_input.b, arg_0)), 0u, 4294967295u | (4294967295u | arg_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, _wgslsmith_div_u32(u_input.d, 0u), ~u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, 59829u), vec4<u32>(45639u, 1u, u_input.a, arg_0), vec4<u32>(0u, u_input.a, arg_0, arg_0))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1169f + 883f), -481f), arg_1.c);
    let var_3 = !vec4<bool>(all(!vec2<bool>(false, arg_3.x)), true, !any(vec3<bool>(false, arg_3.x, arg_3.x)), arg_3.x & (_wgslsmith_sub_u32(27298u, arg_0) >= (u_input.a ^ arg_0)));
    return select(vec4<bool>((arg_0 | ~arg_0) > arg_0, arg_3.x, !any(!var_3), !arg_3.x), select(select(vec4<bool>(all(arg_3.xx), any(var_3.wx), var_3.x, true), vec4<bool>(-1525f < arg_1.a.x, arg_0 <= 4294967295u, arg_3.x, arg_3.x), vec4<bool>(var_3.x, !arg_3.x, false, any(var_3.ywx))), select(vec4<bool>(true, -737f != var_1.b, var_3.x, all(arg_3)), !select(var_3, vec4<bool>(var_3.x, var_3.x, arg_3.x, true), vec4<bool>(false, var_3.x, arg_3.x, false)), arg_3.x), any(var_3.yy)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(abs(_wgslsmith_div_u32(u_input.a, u_input.b >> (u_input.d % 32u))), u_input.d), ~(~(~u_input.d))), 3u)];
    global3 = array<Struct_1, 3>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.b);
    var var_2 = !vec3<bool>(_wgslsmith_mod_i32(global0.c, _wgslsmith_clamp_i32(var_0.c, -13671i, global0.c)) != -2147483647i, any(vec2<bool>(true, true)), false);
    global4 = array<Struct_1, 20>();
    let var_3 = func_4(min(u_input.a ^ 4294967295u, ~(0u << (u_input.a % 32u))), func_1(), select(func_2(u_input.e.x), vec4<i32>(~(-1i), 0i, firstTrailingBit(var_0.c), max(reverseBits(global0.c), ~var_0.c)), var_2.x), !(!(!select(vec3<bool>(var_2.x, true, true), vec3<bool>(false, var_2.x, false), vec3<bool>(false, true, true)))));
    var var_4 = var_2.zz;
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.d, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.a), vec2<u32>(u_input.b, 0u)))));
}

