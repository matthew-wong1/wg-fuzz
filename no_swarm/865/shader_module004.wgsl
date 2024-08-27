struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(300f, -862f, -1000f), vec3<f32>(144f, -1717f, 587f), vec3<f32>(230f, 986f, -1154f), vec3<f32>(-887f, 547f, 775f), vec3<f32>(-1034f, -169f, -516f), vec3<f32>(-1377f, 913f, 1818f), vec3<f32>(991f, 987f, 1749f), vec3<f32>(-313f, 504f, -637f), vec3<f32>(-536f, 2068f, 223f), vec3<f32>(-285f, -689f, 1000f), vec3<f32>(582f, -747f, 1000f), vec3<f32>(-1125f, -1207f, -703f), vec3<f32>(-195f, 441f, 1603f), vec3<f32>(215f, 1000f, -1597f), vec3<f32>(129f, -1074f, 1552f), vec3<f32>(888f, -1339f, -881f), vec3<f32>(2627f, 899f, -1986f), vec3<f32>(-1936f, -1000f, 432f), vec3<f32>(-1111f, 977f, 1008f), vec3<f32>(1189f, 445f, 1000f), vec3<f32>(680f, 1350f, -292f), vec3<f32>(-311f, 567f, -1972f), vec3<f32>(-707f, -1688f, 1063f), vec3<f32>(-1247f, 1000f, 104f), vec3<f32>(373f, -1123f, -752f), vec3<f32>(-1229f, 520f, -397f), vec3<f32>(1000f, 457f, -1016f), vec3<f32>(1063f, -956f, -843f), vec3<f32>(-118f, 403f, 2214f));

var<private> global1: Struct_2;

var<private> global2: array<u32, 12> = array<u32, 12>(1u, 0u, 20061u, 13574u, 0u, 17936u, 0u, 104280u, 4294967295u, 81263u, 130943u, 95149u);

var<private> global3: vec3<i32>;

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<i32>(-126i, 1i), vec2<f32>(-219f, 1000f), 1213f, vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(-48683i, 2147483647i), vec2<f32>(1744f, -577f), 1106f, vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(i32(-2147483648), -50192i), vec2<f32>(968f, -1717f), -2063f, vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(-1i, 0i), vec2<f32>(1137f, -1003f), 723f, vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(1i, 0i), vec2<f32>(429f, 527f), 929f, vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(i32(-2147483648), 29404i), vec2<f32>(-1715f, -356f), 2243f, vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(-4578i, 16829i), vec2<f32>(-613f, 432f), 683f, vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(-21883i, 1i), vec2<f32>(249f, -1729f), 173f, vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(24354i, 4314i), vec2<f32>(-553f, -1225f), -227f, vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(-458i, 0i), vec2<f32>(-505f, 494f), -1823f, vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(21762i, 1i), vec2<f32>(-611f, -729f), -124f, vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(36489i, 26653i), vec2<f32>(-1302f, -477f), 215f, vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(0i, -1i), vec2<f32>(-391f, -1887f), -107f, vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(31091i, 2147483647i), vec2<f32>(444f, 269f), -713f, vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(0i, 36322i), vec2<f32>(1108f, -1672f), -303f, vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(-1i, -4596i), vec2<f32>(-1000f, 1038f), -1000f, vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(2147483647i, 23868i), vec2<f32>(1000f, -603f), 1418f, vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(-523f, 443f), 481f, vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(-1i, -52973i), vec2<f32>(282f, -2550f), -920f, vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<f32>(924f, -237f), 2143f, vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(37429i, -1i), vec2<f32>(-321f, 400f), 610f, vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(31775i, 10418i), vec2<f32>(-374f, -167f), -475f, vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(i32(-2147483648), 80214i), vec2<f32>(-1188f, -1197f), -917f, vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(1i, 2625i), vec2<f32>(-406f, -686f), -2454f, vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(1i, -33800i), vec2<f32>(1149f, 454f), -1883f, vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(-10027i, -1i), vec2<f32>(534f, -1330f), 189f, vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(-18995i, 56035i), vec2<f32>(-776f, 1211f), -588f, vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(-1i, -70755i), vec2<f32>(122f, 320f), -614f, vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(1i, 3278i), vec2<f32>(1548f, 761f), 551f, vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(-11684i, 2147483647i), vec2<f32>(1718f, 948f), 1596f, vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(19118i, 11000i), vec2<f32>(1107f, -1445f), -1150f, vec4<bool>(false, false, false, true)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(vec2<i32>(u_input.a.x, ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b.zz)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(305f * 1347f))), vec4<bool>(true, any(!vec4<bool>(global1.a.d.x, false, global1.a.d.x, false)), all(select(global1.a.d, global1.a.d, global1.a.d.x)), false && any(global1.a.d.zz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global1.b.x, global1.a.b.x)), _wgslsmith_f_op_f32(sign(global1.b.x)), global1.a.b.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(5935u, 29u)]))) + global0[_wgslsmith_index_u32(~57414u, 29u)])));
    var var_1 = global1.a;
    let var_2 = var_0;
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, ~global2[_wgslsmith_index_u32(1u, 12u)]) ^ 53687u, _wgslsmith_clamp_u32(~(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19853u, 58729u), vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 12u)], global2[_wgslsmith_index_u32(1u, 12u)])), 12u)]), ~global2[_wgslsmith_index_u32(45403u, 12u)], ~((u_input.c & global2[_wgslsmith_index_u32(u_input.c, 12u)]) | _wgslsmith_clamp_u32(u_input.c, 0u, global2[_wgslsmith_index_u32(u_input.b, 12u)])))), 31u)];
    global0 = array<vec3<f32>, 29>();
    return vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1799f)))), -810f);
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(global4[_wgslsmith_index_u32(~u_input.c, 31u)], _wgslsmith_f_op_vec3_f32(func_3()));
    global3 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(1i, abs(var_0.a.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), ~var_0.a.a.x, min(-global1.a.a.x, reverseBits(global3.x))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(42769i, 1516i, 12744i), -vec3<i32>(u_input.a.x, global1.a.a.x, 27847i)), min(select(vec3<i32>(min(2147483647i, u_input.a.x), abs(u_input.a.x), max(1i, global1.a.a.x)), firstTrailingBit(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i)) >> (reverseBits(vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], 12407u)) % vec3<u32>(32u)), var_0.a.d.x), firstLeadingBit(select(-vec3<i32>(var_0.a.a.x, -2147483647i, 0i), ~vec3<i32>(u_input.a.x, var_0.a.a.x, -1i), true))));
    global3 = -_wgslsmith_add_vec3_i32(countOneBits(abs(~vec3<i32>(u_input.a.x, 0i, var_0.a.a.x))), firstTrailingBit(abs(vec3<i32>(u_input.a.x, global1.a.a.x, var_0.a.a.x))) ^ ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_0.a.a.x, -54012i), vec3<i32>(-2147483647i, -2626i, u_input.a.x)));
    global2 = array<u32, 12>();
    global3 = vec3<i32>(-18774i, _wgslsmith_clamp_i32(-var_0.a.a.x | -2147483647i, -1i, abs(_wgslsmith_sub_i32(var_0.a.a.x, u_input.a.x))), 9810i) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c ^ global2[_wgslsmith_index_u32(u_input.c, 12u)], 0u, ~74175u), vec3<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 44464u, global2[_wgslsmith_index_u32(48595u, 12u)])), ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(18347u, u_input.b), vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 12u)], 12u)])), select(60743u, 43062u, false), reverseBits(u_input.b))) % vec3<u32>(32u));
    return ~(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), abs(4294967295u)), ~u_input.b, firstLeadingBit(abs(u_input.c))) & (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 12u)], 15808u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 12u)], 36906u, 1u), max(vec3<u32>(u_input.c, 1u, 64914u), vec3<u32>(1u, u_input.c, 68523u))) & _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(41744u, 12u)], 70874u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20688u, 12u)], 12u)])), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 17468u, 1u), vec3<u32>(48339u, global2[_wgslsmith_index_u32(74489u, 12u)], 4294967295u)), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(278u, 12u)], 12u)], 52977u, global2[_wgslsmith_index_u32(43042u, 12u)]))));
}

fn func_1() -> vec2<u32> {
    var var_0 = -global1.a.a.x;
    let var_1 = firstTrailingBit(_wgslsmith_mod_vec3_u32(firstTrailingBit(select(reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(44611u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(35130u, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.c, 1u), vec3<u32>(4294967295u, u_input.b, 1u)), global3.x > global3.x)), ~(~vec3<u32>(u_input.b, 0u, u_input.b)) >> (abs(func_2()) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-global1.b.zz);
    let var_3 = ~global1.a.a;
    let var_4 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, global1.a.c) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, var_2.x) + global1.b.zz)))), -175f, vec4<bool>(global1.a.d.x, var_2.x != global1.a.c, ((var_1.x >> (u_input.c % 32u)) & 1u) <= max(1u, 1u), !select(any(vec3<bool>(false, true, true)), true, true)));
    return vec2<u32>(_wgslsmith_div_u32(4294967295u, ~(func_2().x & max(25937u, 23640u))), var_1.x);
}

fn func_4(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_3(global1.a, global1.a.c);
    var var_1 = ~global2[_wgslsmith_index_u32(abs(1u), 12u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(152f, _wgslsmith_div_f32(-431f, -1159f), _wgslsmith_f_op_f32(-124f + global1.a.b.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-629f)), _wgslsmith_f_op_f32(global1.b.x - -785f), _wgslsmith_f_op_f32(global1.a.c - global1.a.c)), _wgslsmith_clamp_i32(-1i, u_input.a.x, -1i) > firstLeadingBit(41121i))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b * global1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1089f, _wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(step(var_0.b, 687f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(global1.a.a, _wgslsmith_f_op_vec2_f32(max(global1.b.yy, vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(1574f + global1.a.c)))), -710f, vec4<bool>(any(vec4<bool>(true, true, true, true)), global1.a.d.x, true, !(!global1.a.d.x))), vec3<f32>(global1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, 168f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.c - global1.a.c) + _wgslsmith_f_op_f32(global1.b.x + -658f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global1.b.x)), 359f, true)))));
    global0 = array<vec3<f32>, 29>();
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1())) - _wgslsmith_f_op_vec3_f32(func_4((vec2<u32>(u_input.c, 16297u) & vec2<u32>(51414u, 4294967295u)) ^ vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 12u)], 12u)], 12u)], u_input.b)))));
    let var_1 = select(!vec3<bool>(var_0.a.d.x, var_0.a.d.x, true && var_0.a.d.x), select(var_0.a.d.zwx, var_0.a.d.wxw, global1.a.d.wwx), vec3<bool>(true, global1.a.d.x, global1.a.b.x > -452f));
    global3 = -_wgslsmith_div_vec3_i32(min(vec3<i32>(global3.x | global1.a.a.x, 0i, min(-9446i, global3.x)), firstTrailingBit(vec3<i32>(44861i, global1.a.a.x, var_0.a.a.x) | vec3<i32>(-1i, -29098i, 57579i))), vec3<i32>(-4927i, countOneBits(global3.x), ~(u_input.a.x & 1i)));
    global4 = array<Struct_1, 31>();
    var var_2 = false;
    var var_3 = -_wgslsmith_sub_i32(_wgslsmith_sub_i32(firstLeadingBit(~120685i), u_input.a.x), var_0.a.a.x);
    global0 = array<vec3<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(41261u, 12u)], ~29418u), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-25265i, global3.x & countOneBits(u_input.a.x)), ~global1.a.a.x, -4739i), -46777i, ~_wgslsmith_clamp_u32(u_input.b, abs(4294967295u), ~_wgslsmith_sub_u32(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 12u)])));
}

