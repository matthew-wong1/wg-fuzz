struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<f32>(1223f, -259f), vec2<i32>(-39979i, 2147483647i), vec3<i32>(0i, 14639i, 50782i), false), Struct_1(vec2<f32>(847f, 198f), vec2<i32>(0i, -2072i), vec3<i32>(-13628i, 33567i, -61248i), true), Struct_1(vec2<f32>(-628f, -322f), vec2<i32>(5782i, i32(-2147483648)), vec3<i32>(5257i, 0i, -1i), false), Struct_1(vec2<f32>(1249f, 475f), vec2<i32>(-29645i, i32(-2147483648)), vec3<i32>(-18107i, 89200i, 38813i), false), Struct_1(vec2<f32>(860f, 1511f), vec2<i32>(15754i, -10413i), vec3<i32>(20925i, 0i, 19869i), false), Struct_1(vec2<f32>(498f, 414f), vec2<i32>(-52101i, -4168i), vec3<i32>(8753i, 0i, -7418i), true), Struct_1(vec2<f32>(-1294f, 304f), vec2<i32>(32599i, 50914i), vec3<i32>(-54635i, -66616i, -2147i), false), Struct_1(vec2<f32>(143f, 404f), vec2<i32>(i32(-2147483648), 12897i), vec3<i32>(2487i, 2147483647i, -1i), true), Struct_1(vec2<f32>(1753f, -1000f), vec2<i32>(-1i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 18115i), false), Struct_1(vec2<f32>(222f, 430f), vec2<i32>(9630i, 10165i), vec3<i32>(2147483647i, -10552i, -19833i), true), Struct_1(vec2<f32>(-711f, -607f), vec2<i32>(47296i, 2147483647i), vec3<i32>(-72758i, -1i, -17135i), true), Struct_1(vec2<f32>(-1097f, 1361f), vec2<i32>(15457i, -20524i), vec3<i32>(-1i, 8178i, -1i), true), Struct_1(vec2<f32>(691f, -166f), vec2<i32>(2147483647i, -76144i), vec3<i32>(55675i, -33428i, -1i), false), Struct_1(vec2<f32>(135f, 169f), vec2<i32>(-44887i, 2147483647i), vec3<i32>(20091i, 45998i, 22205i), true), Struct_1(vec2<f32>(472f, 754f), vec2<i32>(-4640i, 40725i), vec3<i32>(0i, 56257i, 2147483647i), true), Struct_1(vec2<f32>(695f, 853f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -20451i, -1i), false), Struct_1(vec2<f32>(-453f, 2322f), vec2<i32>(29817i, 0i), vec3<i32>(18089i, 0i, 13431i), false), Struct_1(vec2<f32>(-487f, -777f), vec2<i32>(-43298i, -43353i), vec3<i32>(i32(-2147483648), 50787i, i32(-2147483648)), true), Struct_1(vec2<f32>(-673f, 491f), vec2<i32>(-18748i, 22585i), vec3<i32>(0i, 1i, -1i), false), Struct_1(vec2<f32>(-4933f, -2276f), vec2<i32>(14943i, -8055i), vec3<i32>(24208i, 1i, 2147483647i), true), Struct_1(vec2<f32>(-694f, -245f), vec2<i32>(32004i, 2147483647i), vec3<i32>(0i, -4385i, 0i), false), Struct_1(vec2<f32>(-1000f, 2428f), vec2<i32>(1i, -21487i), vec3<i32>(-10026i, -41699i, i32(-2147483648)), false), Struct_1(vec2<f32>(-501f, 381f), vec2<i32>(-82720i, -18132i), vec3<i32>(22899i, i32(-2147483648), 0i), false), Struct_1(vec2<f32>(-873f, -225f), vec2<i32>(2147483647i, -50911i), vec3<i32>(1i, 0i, 16459i), true), Struct_1(vec2<f32>(-1137f, 535f), vec2<i32>(2147483647i, -9849i), vec3<i32>(-1i, -43107i, 39563i), false), Struct_1(vec2<f32>(1000f, -630f), vec2<i32>(i32(-2147483648), -10777i), vec3<i32>(2147483647i, 79428i, -1i), true), Struct_1(vec2<f32>(-384f, 1000f), vec2<i32>(-2069i, 19190i), vec3<i32>(22011i, -13595i, -45426i), true), Struct_1(vec2<f32>(-1000f, -359f), vec2<i32>(-2579i, -40317i), vec3<i32>(6941i, 5016i, i32(-2147483648)), false), Struct_1(vec2<f32>(-1131f, -1093f), vec2<i32>(1i, 1i), vec3<i32>(i32(-2147483648), 48043i, -14571i), false));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 28029u);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-256f, -242f), vec2<i32>(2147483647i, i32(-2147483648)), vec3<i32>(-15577i, 0i, -66290i), true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    var var_0 = arg_0.x;
    let var_1 = vec2<u32>(4474u, ~0u);
    var var_2 = (vec4<u32>(46363u, reverseBits(global1.x ^ 5494u), var_1.x, 1u) & _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x)), select(countOneBits(vec4<u32>(u_input.a.x, var_1.x, 1u, u_input.a.x)), vec4<u32>(var_1.x, global1.x, global1.x, u_input.a.x), vec4<bool>(false, arg_2, true, true)))) >> (select(~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 15574u, var_1.x, 8630u)), vec4<u32>(u_input.a.x, 27158u, var_1.x, var_1.x)), ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_1.x, global1.x, global1.x, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 51645u, u_input.a.x, 12377u), vec4<u32>(1u, 4294967295u, 1u, var_1.x))), vec4<bool>(true, all(!vec3<bool>(false, arg_2, arg_2)), false, all(select(vec4<bool>(arg_1.d, arg_2, false, false), vec4<bool>(arg_1.d, true, global2.d, arg_2), vec4<bool>(true, arg_1.d, true, true))))) % vec4<u32>(32u));
    let var_3 = Struct_2(~max(var_2.zxy, select(reverseBits(vec3<u32>(var_1.x, u_input.a.x, 0u)), ~var_2.zwz, !vec3<bool>(global2.d, true, false))), Struct_1(vec2<f32>(852f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-242f + 817f)))), countOneBits(_wgslsmith_mult_vec2_i32(global2.c.xz, min(arg_1.c.yx, vec2<i32>(global2.c.x, arg_1.b.x)))), global2.c, true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a.x, -1000f))))), arg_1.b, select(abs(global2.c), ~(global2.c >> (var_2.xzx % vec3<u32>(32u))), all(vec2<bool>(true, true))), arg_1.d), !(!vec3<bool>(any(vec4<bool>(false, false, true, global2.d)), true, true)), arg_1);
    var var_4 = vec4<bool>(arg_2 != (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.a.x), -1000f) >= arg_0.x), var_3.c.d, select(global2.d, !(var_3.b.a.x <= -1407f), var_3.d.x) | select(global2.a.x <= var_3.c.a.x, !arg_1.d & (u_input.a.x < var_3.a.x), var_3.e.d), arg_2);
    return _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(min(max(var_2.x, 4294967295u), 45258u), select(_wgslsmith_div_u32(var_2.x, var_3.a.x), var_1.x, var_1.x <= var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(46355u, global1.x, global1.x, 0u), vec4<u32>(var_3.a.x, 33521u, var_1.x, 10631u)) | _wgslsmith_clamp_u32(var_2.x, 0u, 1u)), firstTrailingBit(~(var_2.xwx | vec3<u32>(1u, 1u, var_2.x)))), ~_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, var_3.a.x, 1u), var_3.a), abs(~var_3.a)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = -1760f;
    var var_1 = Struct_2(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(global1.x, u_input.a.x, u_input.a.x)), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2435f, 133f, -1150f) - vec3<f32>(1401f, var_0, -382f)), Struct_1(vec2<f32>(-1000f, -260f), global2.c.xy, global2.c, false), global2.d)) << (~vec3<u32>(31031u, 80648u, abs(31u)) % vec3<u32>(32u)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 + arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0, 568f), _wgslsmith_f_op_f32(max(544f, -233f))))), -((vec2<i32>(-2147483647i, global2.c.x) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))) & vec2<i32>(global2.b.x, -12336i)), min(firstTrailingBit(global2.c) >> (vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(global2.b.x, 0i, abs(-20454i))), true), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.a)) - _wgslsmith_f_op_vec2_f32(-global2.a))), _wgslsmith_mod_vec2_i32(countOneBits(abs(vec2<i32>(global2.b.x, -32629i))), vec2<i32>(global2.c.x & global2.c.x, global2.c.x)), select(global2.c, countOneBits(global2.c), true), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 11455u), vec3<u32>(56707u, 1u, global1.x)), 0u) <= firstLeadingBit(~34816u)), select(vec3<bool>(global2.d, global2.d, true), vec3<bool>(true, global2.d, global2.d), global2.d), Struct_1(vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-527f + -870f), _wgslsmith_f_op_f32(step(737f, -751f)))), global2.b, ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(24700i, global2.b.x, 37115i), global2.c, vec3<bool>(false, global2.d, false)), min(vec3<i32>(global2.c.x, global2.b.x, 10869i), global2.c)), !(!(global1.x > 0u))));
    let var_2 = var_1.c.c.yx;
    global1 = ~abs(firstLeadingBit(reverseBits(_wgslsmith_mult_vec2_u32(var_1.a.yy, u_input.a))));
    var_1 = Struct_2(~firstTrailingBit(var_1.a) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(abs(var_1.a), var_1.a), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, u_input.a.x, 24653u), vec3<u32>(46080u, 0u, 4294967295u))), vec3<u32>(_wgslsmith_clamp_u32(global1.x, var_1.a.x, 68169u), global1.x, global1.x)) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1425f, arg_0)), vec2<f32>(744f, arg_0), !var_1.d.x))), ~global2.b, ~(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_2.x, 5228i), global2.c) << (_wgslsmith_add_vec3_u32(var_1.a, var_1.a) % vec3<u32>(32u))), true), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.e.a), max(reverseBits(vec2<i32>(var_2.x, var_1.e.b.x)), ~countOneBits(global2.b)), -abs(var_1.e.c), var_1.d.x), var_1.d, Struct_1(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) * _wgslsmith_f_op_f32(735f + var_0))), _wgslsmith_sub_vec2_i32(countOneBits(var_1.e.b), vec2<i32>(var_2.x, _wgslsmith_div_i32(var_1.b.b.x, -1i))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global2.c, var_1.b.c), _wgslsmith_dot_vec3_i32(global2.c, vec3<i32>(0i, -13236i, var_1.c.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.x, 31526i, 2147483647i), vec3<i32>(var_2.x, 1i, -34962i))), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.b.x, 8729i), vec2<i32>(21605i, -49250i)), _wgslsmith_mod_i32(var_1.e.b.x, var_2.x))), global2.d));
    return Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(85547u, 13501u, firstLeadingBit(29847u)), ~(~(var_1.a ^ vec3<u32>(var_1.a.x, u_input.a.x, 1433u))), var_1.a), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(64682u, var_1.a.x, 0u, 1u) & (vec4<u32>(u_input.a.x, global1.x, u_input.a.x, var_1.a.x) ^ vec4<u32>(37555u, 31501u, 4294967295u, var_1.a.x)), vec4<u32>(u_input.a.x, ~13034u, u_input.a.x ^ global1.x, _wgslsmith_dot_vec2_u32(var_1.a.yx, u_input.a))), 29u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(449f, var_0)) * _wgslsmith_f_op_vec2_f32(global2.a - global2.a))), _wgslsmith_mult_vec2_i32(vec2<i32>(~69557i, 2147483647i), var_1.b.b), vec3<i32>(1i, -(~1i), 0i), select(!(1083f > var_1.e.a.x), true, true)), var_1.d, global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(57674u, global1.x), 29u)]);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1.a;
    global1 = firstLeadingBit(vec2<u32>(76104u, arg_1.a.x));
    global2 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -327f)))))))).c;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(761f, -287f)), vec2<f32>(1259f, arg_1.b.a.x)))), global2.c.yz | arg_1.b.b, vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_2, 22242i), 0i >> (~4294967295u % 32u)), -firstLeadingBit(~(-14875i)), i32(-1i) * -2147483647i), true);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-307f - _wgslsmith_f_op_f32(exp2(var_1.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1413f)) + _wgslsmith_f_op_f32(-550f * arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -154f))));
    return arg_1.b;
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global1 = vec2<u32>(_wgslsmith_add_u32(countOneBits(0u), arg_0), arg_0);
    global2 = func_4(352f, func_2(2379f), 1i);
    return _wgslsmith_add_vec3_i32(-max(min(global2.c, global2.c) & global2.c, ~(~global2.c)), global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(global2.a.x, 202f)))), countOneBits(vec2<i32>(1i, global2.b.x)), func_1(4294967295u ^ u_input.a.x), false);
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(347f + -1585f))) + _wgslsmith_f_op_f32(sign(-1181f))), _wgslsmith_f_op_f32(global2.a.x - global2.a.x), -735f);
    global1 = vec2<u32>(2733u, _wgslsmith_mult_u32(global1.x, global1.x));
    global1 = u_input.a;
    var var_1 = firstLeadingBit(_wgslsmith_div_i32(-1i, ~global2.b.x));
    global1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(~u_input.a, select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), true))) >> (~u_input.a % vec2<u32>(32u)), ~(~u_input.a));
    let var_2 = Struct_2(vec3<u32>(_wgslsmith_add_u32(47737u, _wgslsmith_mod_u32(42336u, u_input.a.x)) << (4106u % 32u), ~8696u, 0u), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(var_0.zx)))))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global2.c.xy, func_1(4294967295u).xy), global2.b), max(global2.c >> (~vec3<u32>(global1.x, 60330u, 41398u) % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global2.c.x, global2.b.x), global2.c)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2295f, var_0.x)) * _wgslsmith_div_f32(220f, -1654f))).c.d), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x))) + -1017f), func_2(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_div_i32(_wgslsmith_div_i32(select(10478i, 35431i, global2.d), -1i), global2.b.x)), vec3<bool>(global2.d || (true == all(vec2<bool>(global2.d, global2.d))), true, global2.d), global0[_wgslsmith_index_u32(u_input.a.x, 29u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~u_input.a.x, var_2.a.x >> (_wgslsmith_div_u32(max(var_2.a.x, 4294967295u), 18279u & u_input.a.x) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1362f, _wgslsmith_f_op_f32(sign(-531f)), true)) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(198f, var_0.x))))), vec4<i32>(1i, ~(~0i), -var_2.b.b.x, _wgslsmith_sub_i32(-4673i, _wgslsmith_add_i32(global2.b.x, -2147483647i))), _wgslsmith_dot_vec2_i32(func_1(1u).xx | vec2<i32>(-global2.b.x, _wgslsmith_add_i32(20637i, -2147483647i)), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_2.c.c.x, 35681i), -1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -1i), var_2.b.c.x))));
}

