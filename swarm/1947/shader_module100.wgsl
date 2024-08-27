struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, true, false, false, false, false, false, true, true, true, false, true, true, false);

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(682f, Struct_2(Struct_1(vec2<u32>(20200u, 42684u), false, false, vec3<f32>(-1178f, -170f, 551f)), Struct_1(vec2<u32>(34095u, 67367u), false, false, vec3<f32>(-1165f, -594f, 800f)), 724f, vec2<u32>(0u, 4294967295u)), true), Struct_4(-2000f, Struct_2(Struct_1(vec2<u32>(87726u, 24616u), false, true, vec3<f32>(490f, 1236f, -1000f)), Struct_1(vec2<u32>(0u, 47679u), false, true, vec3<f32>(-1000f, -446f, 1293f)), 526f, vec2<u32>(0u, 58176u)), false), Struct_4(-381f, Struct_2(Struct_1(vec2<u32>(28291u, 30527u), true, true, vec3<f32>(-914f, -294f, -1591f)), Struct_1(vec2<u32>(17020u, 1u), false, true, vec3<f32>(1503f, -172f, 1438f)), -210f, vec2<u32>(13593u, 73764u)), false), Struct_4(-1188f, Struct_2(Struct_1(vec2<u32>(4294967295u, 8228u), true, true, vec3<f32>(177f, 821f, 486f)), Struct_1(vec2<u32>(0u, 1u), true, true, vec3<f32>(-446f, 267f, -275f)), 1000f, vec2<u32>(5631u, 67273u)), true), Struct_4(-1139f, Struct_2(Struct_1(vec2<u32>(3407u, 7095u), true, true, vec3<f32>(1000f, -524f, -299f)), Struct_1(vec2<u32>(35541u, 4294967295u), true, true, vec3<f32>(-259f, -869f, -631f)), 1000f, vec2<u32>(40979u, 4294967295u)), false), Struct_4(554f, Struct_2(Struct_1(vec2<u32>(4294967295u, 21609u), true, true, vec3<f32>(361f, -263f, -1000f)), Struct_1(vec2<u32>(20412u, 123256u), true, true, vec3<f32>(337f, -593f, 640f)), -476f, vec2<u32>(0u, 1u)), true), Struct_4(863f, Struct_2(Struct_1(vec2<u32>(26597u, 14596u), true, false, vec3<f32>(-216f, -884f, 1000f)), Struct_1(vec2<u32>(0u, 38581u), false, false, vec3<f32>(-1090f, -365f, -2389f)), 2576f, vec2<u32>(1u, 1u)), false), Struct_4(311f, Struct_2(Struct_1(vec2<u32>(121u, 0u), false, true, vec3<f32>(557f, -1000f, -713f)), Struct_1(vec2<u32>(57276u, 47445u), false, false, vec3<f32>(1000f, 665f, -1000f)), 461f, vec2<u32>(1u, 38018u)), true), Struct_4(-959f, Struct_2(Struct_1(vec2<u32>(0u, 0u), true, false, vec3<f32>(566f, 916f, 475f)), Struct_1(vec2<u32>(1u, 1u), true, false, vec3<f32>(-357f, 1892f, 189f)), -1538f, vec2<u32>(7406u, 1u)), true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> u32 {
    global1 = array<Struct_4, 9>();
    var var_0 = Struct_2(arg_0.b.a, Struct_1(arg_0.b.a.a, !global0[_wgslsmith_index_u32(u_input.a, 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.d.x - arg_0.a)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c * -716f)), arg_0.b.b.d), -216f, vec2<u32>(_wgslsmith_add_u32(56394u, u_input.a) | u_input.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 26124u, 1u), min(vec3<u32>(arg_0.b.a.a.x, u_input.a, arg_0.b.a.a.x), vec3<u32>(121289u, 67348u, 6306u)))));
    global1 = array<Struct_4, 9>();
    var var_1 = abs(arg_1.x);
    var_1 = 0i;
    return ~max(u_input.a, select(arg_0.b.a.a.x, _wgslsmith_mod_u32(4294967295u, ~arg_0.b.a.a.x), 4294967295u != var_0.d.x));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(abs(firstLeadingBit(countOneBits(vec2<u32>(25067u, u_input.a)))), true, !(!(true & global0[_wgslsmith_index_u32(1886u, 15u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 1485f, arg_0))))))), Struct_1(vec2<u32>(min(func_3(Struct_4(arg_0, Struct_2(Struct_1(vec2<u32>(u_input.a, 17498u), global0[_wgslsmith_index_u32(10942u, 15u)], true, vec3<f32>(arg_0, arg_0, -1352f)), Struct_1(vec2<u32>(4294967295u, u_input.a), global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(9506u, 15u)], vec3<f32>(-207f, 499f, 267f)), 1129f, vec2<u32>(u_input.a, u_input.a)), global0[_wgslsmith_index_u32(1u, 15u)]), vec2<i32>(0i, 1i), vec4<i32>(1i, -73478i, -2147483647i, -2147483647i), vec3<f32>(182f, 1000f, arg_0)), reverseBits(0u)), u_input.a), select(any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], true), vec4<bool>(global0[_wgslsmith_index_u32(23406u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(61289u, 15u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], true, global0[_wgslsmith_index_u32(0u, 15u)], false))), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)])), !(!global0[_wgslsmith_index_u32(5988u, 15u)])), !all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)], false, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], true, true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 15u)], false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, -776f, 280f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 604f, -352f), vec3<f32>(arg_0, arg_0, arg_0), global0[_wgslsmith_index_u32(u_input.a, 15u)])))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_f_op_f32(-arg_0), -1000f))), _wgslsmith_div_f32(-386f, _wgslsmith_div_f32(-524f, _wgslsmith_f_op_f32(-2429f - arg_0))), _wgslsmith_clamp_vec2_u32(~(~firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), _wgslsmith_sub_vec2_u32(vec2<u32>(38108u, 1u), firstTrailingBit(vec2<u32>(4294967295u, u_input.a))) << (max(vec2<u32>(4294967295u, 25107u) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)), vec2<u32>(43646u, abs(u_input.a))));
    global1 = array<Struct_4, 9>();
    global1 = array<Struct_4, 9>();
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~select(select(vec2<u32>(var_0.a.a.x, u_input.a), vec2<u32>(1u, 1u), vec2<bool>(var_0.a.b, false)), _wgslsmith_sub_vec2_u32(var_0.b.a, var_0.a.a), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b.a.x, 15u)]), vec2<bool>(true, true))), vec2<u32>(34504u, _wgslsmith_clamp_u32(u_input.a, var_0.a.a.x, var_0.d.x))), ~(~reverseBits(vec2<u32>(var_0.b.a.x, var_0.d.x))));
    let var_2 = reverseBits(_wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-64767i, -61002i, 22360i, 0i), ~vec4<i32>(-1i, -1i, 2147483647i, 23651i))), ~vec4<i32>(_wgslsmith_add_i32(0i, 26858i), ~22891i, ~(-36348i), _wgslsmith_sub_i32(-4508i, -20607i))));
    return var_0;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = abs(_wgslsmith_mod_vec2_i32(abs(countOneBits(min(vec2<i32>(arg_0, arg_0), vec2<i32>(10055i, arg_0)))), firstTrailingBit(-(~vec2<i32>(43413i, 1i)))));
    let var_1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.a, 1u, 0u)), vec3<u32>(u_input.a, u_input.a, u_input.a) | firstTrailingBit(vec3<u32>(1u, 49544u, 1u))), u_input.a);
    global0 = array<bool, 15>();
    let var_2 = _wgslsmith_sub_i32(9250i, _wgslsmith_mult_i32(var_0.x << ((min(13141u, u_input.a) >> (firstTrailingBit(var_1.x) % 32u)) % 32u), arg_0));
    global0 = array<bool, 15>();
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-339f, _wgslsmith_f_op_f32(f32(-1f) * -1259f)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<bool, 15>();
    global1 = array<Struct_4, 9>();
    let var_0 = ~max(~(select(vec2<i32>(-2147483647i, arg_2), vec2<i32>(arg_2, 0i), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], false)) >> (~vec2<u32>(arg_1.a.x, 12134u) % vec2<u32>(32u))), vec2<i32>(select(arg_2, 2147483647i, any(vec3<bool>(arg_0.b.b, arg_1.c, arg_1.c))), -2147483647i));
    var var_1 = select(!vec3<bool>(func_1(arg_2 >> (arg_0.b.a.x % 32u)).b.b, true, !(arg_1.a.x <= 20988u)), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0.b.b, arg_0.b.c), false), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.a.x, 15u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d.x, 15u)], true, arg_0.a.c), vec3<bool>(arg_1.c, arg_0.a.b, true)), false), select(vec3<bool>(true, true, -5713i != _wgslsmith_sub_i32(40449i, var_0.x)), vec3<bool>(func_1(~19649i).a.b, any(select(vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(14785u, 15u)], false, arg_1.b, false), vec4<bool>(arg_1.b, true, true, global0[_wgslsmith_index_u32(31024u, 15u)]))), true), !select(!vec3<bool>(arg_0.b.c, arg_1.c, true), select(vec3<bool>(false, arg_1.c, global0[_wgslsmith_index_u32(1u, 15u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 15u)], arg_1.b, global0[_wgslsmith_index_u32(0u, 15u)]), global0[_wgslsmith_index_u32(arg_0.b.a.x, 15u)]), vec3<bool>(arg_0.b.b, arg_1.c, arg_1.c))));
    global0 = array<bool, 15>();
    return Struct_1(countOneBits(~arg_0.a.a), select(!(firstTrailingBit(arg_1.a.x) < arg_0.d.x), var_1.x, -arg_2 != -(~1i)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, 752f, 945f) + arg_0.b.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 514f, arg_1.d.x))))));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_3(~arg_2.a.x, arg_2.b, func_2(-279f), vec4<u32>(~func_2(_wgslsmith_f_op_f32(step(arg_2.d.x, -558f))).d.x, arg_2.a.x, arg_2.a.x, arg_2.a.x));
    global0 = array<bool, 15>();
    var var_1 = arg_2.b;
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(~(i32(-1i) * -2147483647i)), arg_0), ~min(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), min(vec2<i32>(arg_0, arg_0), vec2<i32>(0i, 657i))), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(62735i, arg_0)))));
    var var_3 = Struct_2(func_1(_wgslsmith_add_i32(1i, arg_0)).a, arg_2, 406f, vec2<u32>(~u_input.a, 0u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = -23969i;
    global1 = array<Struct_4, 9>();
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(3503i, func_5(~_wgslsmith_dot_vec4_i32(vec4<i32>(-3057i, -13134i, -20039i, -2147483647i), vec4<i32>(-2147483647i, -1i, 87370i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(728f, -154f) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1023f, -893f), vec2<f32>(493f, 1967f)))), func_4(func_1(-46091i), Struct_1(vec2<u32>(35513u, 0u), global0[_wgslsmith_index_u32(var_0, 15u)], true, vec3<f32>(369f, 774f, 1153f)), firstTrailingBit(0i)))), _wgslsmith_mod_vec2_i32(~firstTrailingBit(vec2<i32>(2147483647i, 2147483647i)) << (vec2<u32>(4294967295u, ~u_input.a) % vec2<u32>(32u)), select(~_wgslsmith_sub_vec2_i32(vec2<i32>(31205i, 45341i), vec2<i32>(1i, -1i)), ~vec2<i32>(0i, 62274i), all(vec2<bool>(true, true)))));
    var var_3 = !(!select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 15u)]), true), vec2<bool>(var_2.x == var_2.x, global0[_wgslsmith_index_u32(firstTrailingBit(var_0), 15u)]), select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(var_0, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false), true || global0[_wgslsmith_index_u32(8772u, 15u)])));
    let var_4 = func_2(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_f32(min(-485f, -1000f))), Struct_1(min(vec2<u32>(u_input.a, 61619u), vec2<u32>(u_input.a, u_input.a)), true, select(global0[_wgslsmith_index_u32(17011u, 15u)], true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-618f, -480f, 310f))), -12947i).d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-974f)))))).a.b;
    let var_5 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(571f)))))), func_1(-37077i), true);
    let var_6 = ~max(func_4(Struct_2(func_4(var_5.b, Struct_1(var_5.b.d, var_4, var_3.x, var_5.b.b.d), var_2.x), func_1(var_2.x).b, var_5.a, var_5.b.b.a), var_5.b.a, reverseBits(_wgslsmith_add_i32(14419i, 7398i))).a, max(var_5.b.a.a, var_5.b.b.a));
    var var_7 = _wgslsmith_clamp_u32(var_5.b.b.a.x, 1u | func_4(Struct_2(func_4(Struct_2(var_5.b.b, var_5.b.b, var_5.b.c, var_6), Struct_1(vec2<u32>(4294967295u, var_6.x), var_4, true, var_5.b.b.d), 2147483647i), func_1(var_2.x).a, _wgslsmith_f_op_f32(select(1081f, var_5.a, var_4)), var_5.b.d), func_4(func_2(-491f), func_1(-1i).a, _wgslsmith_mult_i32(-2147483647i, var_2.x)), var_2.x).a.x, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-min(min(vec3<i32>(2147483647i, var_2.x, var_2.x), vec3<i32>(var_2.x, -1i, var_2.x)), reverseBits(vec3<i32>(var_2.x, -35602i, var_2.x))), ~(~vec3<i32>(1i, 2147483647i, -56422i) << (countOneBits(vec3<u32>(u_input.a, 76117u, var_0)) % vec3<u32>(32u)))), vec3<u32>(~(~var_0), func_1(var_2.x).b.a.x, countOneBits(max(33074u, 40969u))), -16650i, vec2<i32>(max(22352i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.x, var_2.x, var_2.x, -30535i), vec4<i32>(-65198i, 0i, var_2.x, 34709i))), 1433i));
}

