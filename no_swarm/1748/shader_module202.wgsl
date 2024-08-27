struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(273f, 201f), vec2<f32>(658f, -772f), vec2<f32>(171f, -168f), vec2<f32>(-714f, -817f), vec2<f32>(1000f, -347f), vec2<f32>(-629f, -1050f), vec2<f32>(-266f, -680f), vec2<f32>(-830f, -314f), vec2<f32>(1368f, 1000f), vec2<f32>(-1000f, -594f), vec2<f32>(-411f, 209f), vec2<f32>(2350f, 348f), vec2<f32>(752f, 514f), vec2<f32>(240f, 299f), vec2<f32>(890f, 113f), vec2<f32>(-856f, -2076f));

var<private> global1: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(1821f, Struct_2(vec4<f32>(-306f, -122f, 1000f, 1427f))), Struct_5(2398f, Struct_2(vec4<f32>(1470f, 1000f, -1558f, -1337f))), Struct_5(-324f, Struct_2(vec4<f32>(-116f, -1808f, -1035f, -995f))), Struct_5(111f, Struct_2(vec4<f32>(1180f, -646f, 223f, 416f))), Struct_5(1585f, Struct_2(vec4<f32>(1000f, 621f, 293f, 1000f))), Struct_5(-185f, Struct_2(vec4<f32>(1747f, -774f, -1609f, 297f))), Struct_5(-549f, Struct_2(vec4<f32>(2495f, -760f, -1808f, 580f))), Struct_5(-528f, Struct_2(vec4<f32>(-597f, 2010f, 2427f, -1169f))), Struct_5(202f, Struct_2(vec4<f32>(289f, 779f, 1000f, -1565f))), Struct_5(-514f, Struct_2(vec4<f32>(-533f, -1599f, 1000f, -1420f))), Struct_5(-191f, Struct_2(vec4<f32>(1093f, -408f, -389f, -342f))), Struct_5(-292f, Struct_2(vec4<f32>(1054f, 1312f, 416f, 272f))), Struct_5(812f, Struct_2(vec4<f32>(-503f, -210f, 399f, -621f))), Struct_5(-437f, Struct_2(vec4<f32>(490f, 191f, 492f, -597f))), Struct_5(-865f, Struct_2(vec4<f32>(729f, 1720f, 1675f, 245f))), Struct_5(1691f, Struct_2(vec4<f32>(-1000f, 2327f, -426f, -125f))), Struct_5(1342f, Struct_2(vec4<f32>(1773f, 1000f, -1656f, 269f))));

var<private> global2: Struct_3 = Struct_3(71693u, vec4<bool>(false, true, false, false));

var<private> global3: f32 = 975f;

var<private> global4: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(1i, 2147483647i, -11861i, 1i), vec4<i32>(62775i, -1i, 0i, 0i), vec4<i32>(0i, 0i, i32(-2147483648), 25883i), vec4<i32>(-4189i, -21682i, -1i, 224i), vec4<i32>(-18388i, 45817i, 26035i, 0i), vec4<i32>(-1i, 29599i, 1i, -70397i), vec4<i32>(0i, 0i, 1i, 66504i), vec4<i32>(34511i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -1i, i32(-2147483648), -27932i), vec4<i32>(2147483647i, -120i, 8923i, 27281i), vec4<i32>(-1i, -17923i, i32(-2147483648), -1104i), vec4<i32>(1i, -1i, -6445i, i32(-2147483648)), vec4<i32>(2147483647i, -58891i, -27379i, 1i), vec4<i32>(i32(-2147483648), 7776i, 1i, 0i), vec4<i32>(i32(-2147483648), -7028i, 2147483647i, 2147483647i), vec4<i32>(0i, 0i, -1i, -27937i), vec4<i32>(51847i, 16957i, 16250i, -45147i), vec4<i32>(26461i, 16468i, 4608i, -8405i), vec4<i32>(i32(-2147483648), 30879i, -40053i, 17354i), vec4<i32>(-1i, -55063i, -1i, -18505i), vec4<i32>(1i, -21840i, 1i, 1i), vec4<i32>(1i, -3559i, -1i, 0i), vec4<i32>(-40117i, 0i, -1i, 49428i), vec4<i32>(36876i, i32(-2147483648), -1i, -47894i), vec4<i32>(0i, i32(-2147483648), 39955i, -1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5) -> vec2<i32> {
    let var_0 = vec3<i32>(-(2147483647i >> (reverseBits(~global2.a) % 32u)), 17790i, reverseBits(reverseBits(firstTrailingBit(2147483647i))));
    var var_1 = u_input.a;
    let var_2 = Struct_3(reverseBits(~global2.a), vec4<bool>(true, global2.b.x, global2.b.x, global2.b.x));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(-arg_0.b.a.x)))), _wgslsmith_f_op_f32(-126f + arg_0.a), _wgslsmith_f_op_f32(round(-383f))), firstLeadingBit(_wgslsmith_add_i32(~var_0.x, 11477i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-654f, 1380f, arg_0.b.a.x, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.b.a.x)), _wgslsmith_div_f32(1000f, arg_0.b.a.x), -737f, arg_0.a), all(select(var_2.b.xxw, vec3<bool>(global2.b.x, var_2.b.x, var_2.b.x), false))))), global2.b.yww, !global2.b.zyw);
    return _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -firstLeadingBit(reverseBits(var_0.xy)), vec2<i32>(-var_0.x, 32537i) | _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_3.b), var_0.xz));
}

fn func_2() -> Struct_4 {
    var var_0 = -func_3(global1[_wgslsmith_index_u32(u_input.a, 17u)]);
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1361f + 918f)))), 1199f));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(450f)))));
    global2 = Struct_3(~global2.a, global2.b);
    var var_2 = _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(9648u, global2.a) ^ vec2<u32>(u_input.a, global2.a), vec2<u32>(global2.a, 0u))), ~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 115638u)), vec2<u32>(37664u, 1u))) >> (~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(33217u, global2.a), ~vec2<u32>(global2.a, global2.a)), max(select(vec2<u32>(global2.a, u_input.a), vec2<u32>(u_input.a, 42075u), global2.b.xz), _wgslsmith_mult_vec2_u32(vec2<u32>(46648u, 0u), vec2<u32>(39874u, global2.a)))) % vec2<u32>(32u));
    return Struct_4(vec4<u32>(reverseBits(0u), abs(firstTrailingBit(0u)), 31929u, reverseBits(53130u << (global2.a % 32u))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5) -> Struct_5 {
    global0 = array<vec2<f32>, 16>();
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.a.x))) - _wgslsmith_div_f32(arg_1.b.a.x, _wgslsmith_f_op_f32(-arg_1.a)));
    var var_0 = func_2();
    let var_1 = arg_1.a;
    var var_2 = Struct_3(countOneBits(_wgslsmith_mod_u32(max(44196u, u_input.a), 21468u)) << (1u % 32u), global2.b);
    return arg_1;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = func_2();
    let var_1 = vec3<bool>(true, all(vec4<bool>(true, arg_2.e.x | false, arg_2.d.x, !(!arg_2.d.x))), true);
    let var_2 = select(vec4<bool>(global2.b.x, firstTrailingBit(~4294967295u) == 8754u, true, false), global2.b, true);
    var var_3 = u_input.a;
    global2 = Struct_3(firstTrailingBit(_wgslsmith_add_u32(global2.a, ~(7991u >> (var_0.a.x % 32u)))), !vec4<bool>(true, !global2.b.x, any(var_2), true));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<u32>(_wgslsmith_add_u32(u_input.a, global2.a), ~func_4(func_1(Struct_4(vec4<u32>(4294967295u, 4294967295u, 5021u, 43315u)), Struct_5(361f, Struct_2(vec4<f32>(-127f, -1292f, 1000f, 2272f)))), ~vec3<i32>(7590i, -54980i, -6165i), Struct_1(vec3<f32>(929f, 551f, -654f), 71460i, vec4<f32>(1523f, -274f, 652f, -1169f), vec3<bool>(global2.b.x, global2.b.x, false), global2.b.xzx)), ~14363u, ~(~firstTrailingBit(4294967295u))));
    var var_1 = _wgslsmith_mult_vec3_i32(-select(vec3<i32>(22779i, _wgslsmith_dot_vec3_i32(vec3<i32>(11607i, 2147483647i, -2147483647i), vec3<i32>(-13521i, -1i, -2987i)), -10514i >> (global2.a % 32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(15610i, 22295i, 2147483647i, -2147483647i), vec4<i32>(36068i, 0i, -13779i, 4905i)), 25326i, ~(-23261i)), all(vec4<bool>(global2.b.x, true, global2.b.x, false))), max(vec3<i32>(-_wgslsmith_mod_i32(-12838i, -1i), -firstTrailingBit(2147483647i), 1i), vec3<i32>(func_3(func_1(Struct_4(vec4<u32>(global2.a, var_0.x, 4294967295u, 4294967295u)), global1[_wgslsmith_index_u32(var_0.x, 17u)])).x, ~func_3(Struct_5(-387f, Struct_2(vec4<f32>(135f, 278f, -1019f, 2248f)))).x, -(i32(-1i) * -27192i))));
    global2 = Struct_3(~var_0.x, vec4<bool>(global2.b.x, global2.b.x, true, any(vec4<bool>(false, false, true, global2.b.x))));
    var var_2 = var_0;
    var_1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit((_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(-1i, 52626i, 1i)) ^ ~vec3<i32>(var_1.x, 2147483647i, 2147483647i)) | countOneBits(vec3<i32>(1i, var_1.x, 1i))), _wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, 28430i, -45919i), ~vec3<i32>(1239i, var_1.x, var_1.x)), vec3<i32>(1i, _wgslsmith_mod_i32(~1i, _wgslsmith_div_i32(var_1.x, var_1.x)), countOneBits(1i))), vec3<i32>(var_1.x, 1i, -1i));
    let var_3 = func_1(Struct_4(~vec4<u32>(62106u, _wgslsmith_sub_u32(global2.a, var_2.x), 85656u, min(4294967295u, u_input.a))), func_1(Struct_4(vec4<u32>(~93989u, u_input.a, global2.a, 38101u)), func_1(func_2(), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 1u), 17u)]))).b;
    let var_4 = var_1.x;
    let var_5 = ~var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.a.xw), abs(u_input.a) ^ 83663u);
}

