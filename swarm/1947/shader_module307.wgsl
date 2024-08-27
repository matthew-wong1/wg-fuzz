struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30>;

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec3<f32>(473f, 1448f, -2332f), Struct_2(1i, Struct_1(vec4<bool>(true, false, false, true), 2147483647i), Struct_1(vec4<bool>(true, false, true, false), -1i), vec4<f32>(529f, -1519f, -217f, 361f), Struct_1(vec4<bool>(true, true, false, false), 15775i))), Struct_3(vec3<f32>(663f, 402f, -183f), Struct_2(16068i, Struct_1(vec4<bool>(false, false, true, true), -8371i), Struct_1(vec4<bool>(false, true, false, false), i32(-2147483648)), vec4<f32>(-1017f, 922f, -615f, -397f), Struct_1(vec4<bool>(true, false, false, false), 1i))), Struct_3(vec3<f32>(-737f, 384f, -613f), Struct_2(-1i, Struct_1(vec4<bool>(true, true, false, false), i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, false), -13006i), vec4<f32>(1429f, 287f, 658f, -1106f), Struct_1(vec4<bool>(true, false, true, false), 2297i))), Struct_3(vec3<f32>(-208f, 504f, 1208f), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, false, true, true), -29801i), Struct_1(vec4<bool>(true, true, true, true), 5572i), vec4<f32>(-1439f, -737f, -1000f, 352f), Struct_1(vec4<bool>(false, true, false, false), 2147483647i))), Struct_3(vec3<f32>(161f, 567f, 1000f), Struct_2(-25821i, Struct_1(vec4<bool>(false, false, false, true), i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, true), -1080i), vec4<f32>(1209f, -137f, -1028f, 172f), Struct_1(vec4<bool>(true, false, true, true), 4877i))), Struct_3(vec3<f32>(-309f, -509f, 1037f), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, false, true, true), 38557i), Struct_1(vec4<bool>(false, false, true, true), -33872i), vec4<f32>(-1122f, 368f, 540f, 299f), Struct_1(vec4<bool>(true, true, false, false), 1i))), Struct_3(vec3<f32>(-397f, 413f, 1556f), Struct_2(-12093i, Struct_1(vec4<bool>(true, true, true, false), 28668i), Struct_1(vec4<bool>(false, true, true, false), 0i), vec4<f32>(-1172f, -423f, -944f, -315f), Struct_1(vec4<bool>(true, false, true, false), 2147483647i))), Struct_3(vec3<f32>(-1243f, 1030f, -2188f), Struct_2(-14473i, Struct_1(vec4<bool>(true, false, true, true), -23715i), Struct_1(vec4<bool>(true, true, true, true), -18790i), vec4<f32>(595f, -1055f, 1440f, 510f), Struct_1(vec4<bool>(true, true, false, false), 77664i))), Struct_3(vec3<f32>(-1000f, 1420f, -428f), Struct_2(-37477i, Struct_1(vec4<bool>(false, true, true, true), -17623i), Struct_1(vec4<bool>(false, false, false, false), 1i), vec4<f32>(-2248f, 328f, -1486f, 659f), Struct_1(vec4<bool>(true, true, false, true), -29248i))), Struct_3(vec3<f32>(383f, 868f, 1530f), Struct_2(1i, Struct_1(vec4<bool>(false, false, false, false), 3928i), Struct_1(vec4<bool>(true, false, false, false), 0i), vec4<f32>(599f, -1000f, -1222f, 1995f), Struct_1(vec4<bool>(true, true, false, true), 37219i))), Struct_3(vec3<f32>(780f, 1402f, -609f), Struct_2(6965i, Struct_1(vec4<bool>(true, false, true, true), 0i), Struct_1(vec4<bool>(false, false, true, false), -1i), vec4<f32>(-1510f, 1549f, -739f, -1628f), Struct_1(vec4<bool>(false, true, false, false), i32(-2147483648)))), Struct_3(vec3<f32>(1825f, 2023f, -614f), Struct_2(1i, Struct_1(vec4<bool>(true, false, false, true), -13196i), Struct_1(vec4<bool>(false, false, true, true), -13286i), vec4<f32>(1035f, 1000f, 923f, 135f), Struct_1(vec4<bool>(false, false, true, true), 0i))), Struct_3(vec3<f32>(-203f, 132f, -1444f), Struct_2(0i, Struct_1(vec4<bool>(false, true, false, true), 1i), Struct_1(vec4<bool>(true, true, false, true), i32(-2147483648)), vec4<f32>(-343f, 1000f, -403f, 218f), Struct_1(vec4<bool>(true, false, true, false), 0i))), Struct_3(vec3<f32>(-494f, 201f, 643f), Struct_2(-2019i, Struct_1(vec4<bool>(true, true, true, true), 33149i), Struct_1(vec4<bool>(true, false, false, true), 2147483647i), vec4<f32>(593f, 1264f, 2567f, -124f), Struct_1(vec4<bool>(true, true, false, false), -65007i))), Struct_3(vec3<f32>(-1000f, 988f, 316f), Struct_2(-40878i, Struct_1(vec4<bool>(true, true, false, true), 20915i), Struct_1(vec4<bool>(false, true, false, true), -55674i), vec4<f32>(1126f, -1465f, -1621f, 1250f), Struct_1(vec4<bool>(false, false, false, false), i32(-2147483648)))), Struct_3(vec3<f32>(-557f, -703f, -385f), Struct_2(-1i, Struct_1(vec4<bool>(false, true, true, true), -29884i), Struct_1(vec4<bool>(false, false, false, false), -15148i), vec4<f32>(-341f, 1021f, 1268f, 551f), Struct_1(vec4<bool>(false, true, true, false), -16728i))), Struct_3(vec3<f32>(-803f, -1066f, 761f), Struct_2(-7068i, Struct_1(vec4<bool>(true, true, false, false), 23674i), Struct_1(vec4<bool>(true, true, false, false), -3938i), vec4<f32>(1649f, -1065f, -629f, -115f), Struct_1(vec4<bool>(false, false, true, false), 29290i))));

var<private> global2: array<bool, 21>;

var<private> global3: Struct_5 = Struct_5(Struct_4(vec3<f32>(-716f, 690f, 918f), true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.a.a.x))), arg_1.a.x)), -1651f)), 1000f);
    let var_1 = 1u;
    return vec3<i32>(-1i) * -vec3<i32>(arg_0, abs(-18162i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-22042i, u_input.b, arg_0), firstLeadingBit(vec3<i32>(arg_0, -28843i, -16262i))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(reverseBits(firstTrailingBit(-(u_input.b ^ u_input.b))), arg_1.e, Struct_1(arg_1.e.a, firstTrailingBit(_wgslsmith_div_i32(u_input.b, ~arg_1.b.b))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(2453f, global3.a.a.x, -378f, arg_1.d.x), arg_1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.a.x, 245f, arg_0.a.a.x, global3.a.a.x) + arg_1.d)))), arg_1.d)), arg_1.c);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(120f, arg_1.d.x))), var_0.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global3.a.a.x)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.a.x + -1559f) * _wgslsmith_f_op_f32(floor(arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1901f * arg_1.d.x) * -330f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(474f - 1066f), arg_1.d.x, global3.a.a.x, global3.a.a.x) * vec4<f32>(global3.a.a.x, arg_0.a.a.x, var_0.d.x, global3.a.a.x))));
    global3 = Struct_5(Struct_4(var_2.wwz, arg_0.a.b));
    var var_3 = Struct_5(arg_0.a);
    return arg_1.c.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_5 {
    var var_0 = countOneBits(vec2<i32>(-2147483647i, abs(-arg_1) | arg_0.x));
    var var_1 = -641f;
    var var_2 = Struct_1(vec4<bool>(false, all(vec2<bool>(true, false)), !global3.a.b, any(vec2<bool>(false, !global2[_wgslsmith_index_u32(u_input.a, 21u)]))), -2147483647i);
    var var_3 = vec2<f32>(global3.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(318f)) + -110f));
    var var_4 = vec2<f32>(var_3.x, 1665f);
    return Struct_5(global3.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>) -> vec3<u32> {
    let var_0 = u_input.b;
    global3 = func_4(-_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.b, ~u_input.b, var_0), func_2(-var_0, global3.a, arg_1.x), -abs(vec3<i32>(-2147483647i, var_0, u_input.b))), max(-_wgslsmith_dot_vec2_i32(select(vec2<i32>(10482i, -1i), vec2<i32>(-15156i, 2147483647i), global0[_wgslsmith_index_u32(u_input.a, 30u)]), abs(vec2<i32>(u_input.b, 0i))), u_input.b), select(vec4<bool>(any(!vec3<bool>(true, global3.a.b, true)), ~arg_0.x >= _wgslsmith_div_u32(arg_0.x, 0u), !(true | global2[_wgslsmith_index_u32(84562u, 21u)]), (u_input.c.x <= arg_0.x) == (global3.a.b || true)), !func_3(Struct_5(Struct_4(vec3<f32>(-211f, global3.a.a.x, -481f), global2[_wgslsmith_index_u32(u_input.a, 21u)])), Struct_2(19709i, Struct_1(vec4<bool>(true, false, global3.a.b, global2[_wgslsmith_index_u32(1u, 21u)]), u_input.b), Struct_1(vec4<bool>(global3.a.b, false, true, global2[_wgslsmith_index_u32(u_input.c.x, 21u)]), u_input.b), vec4<f32>(global3.a.a.x, -2249f, 2411f, 734f), Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 21u)], true, global3.a.b, false), u_input.b))), vec4<bool>(!(!global2[_wgslsmith_index_u32(1u, 21u)]), !all(vec3<bool>(global3.a.b, global3.a.b, global2[_wgslsmith_index_u32(27728u, 21u)])), true, global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.a), 21u)])));
    let var_1 = func_4(~_wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, var_0, -1i) ^ abs(vec3<i32>(-2147483647i, 9660i, u_input.b)), vec3<i32>(-2147483647i, reverseBits(u_input.b), -1i)), i32(-1i) * -min(var_0, 2147483647i), select(!vec4<bool>(func_3(Struct_5(global3.a), Struct_2(-34038i, Struct_1(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(38123u, 21u)]), u_input.b), Struct_1(vec4<bool>(false, true, global3.a.b, false), -19871i), vec4<f32>(359f, -524f, -1270f, arg_1.x), Struct_1(vec4<bool>(true, true, global2[_wgslsmith_index_u32(49039u, 21u)], global3.a.b), u_input.b))).x, any(vec4<bool>(global3.a.b, global2[_wgslsmith_index_u32(1u, 21u)], global3.a.b, global3.a.b)), false, global2[_wgslsmith_index_u32(u_input.a, 21u)]), !vec4<bool>(true, all(vec2<bool>(global3.a.b, false)), func_4(vec3<i32>(u_input.b, 2147483647i, 26137i), var_0, vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(35402u, 21u)], false)).a.b, global2[_wgslsmith_index_u32(54327u, 21u)]), vec4<bool>(all(global0[_wgslsmith_index_u32(0u, 30u)]), true | (global2[_wgslsmith_index_u32(0u, 21u)] && global3.a.b), !global2[_wgslsmith_index_u32(4294967295u, 21u)] | (true == global3.a.b), true)));
    let var_2 = ~_wgslsmith_mod_i32(var_0, u_input.b);
    global0 = array<vec2<bool>, 30>();
    return vec3<u32>(35529u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~0u, _wgslsmith_mod_u32(u_input.a, 30850u)), ~(~arg_0.x)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~reverseBits(func_1(u_input.c, vec3<f32>(global3.a.a.x, 488f, 639f))), max(abs(_wgslsmith_div_vec3_u32(vec3<u32>(17898u, 4294967295u, u_input.c.x), vec3<u32>(4294967295u, 64147u, 32916u))), min(vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(23257u, u_input.a, 4294967295u))))), 17u)];
    let var_1 = func_3(Struct_5(global3.a), var_0.b).wyz;
    var var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 21u)] & global3.a.b;
    global2 = array<bool, 21>();
    global3 = Struct_5(func_4(-_wgslsmith_div_vec3_i32(-vec3<i32>(-37192i, 9059i, u_input.b), vec3<i32>(-1i, var_0.b.b.b, var_0.b.c.b) ^ vec3<i32>(0i, var_0.b.c.b, -1i)), -(~(~u_input.b)), select(vec4<bool>(true, false, true, func_4(vec3<i32>(u_input.b, u_input.b, -30409i), 2147483647i, vec4<bool>(global2[_wgslsmith_index_u32(64646u, 21u)], var_0.b.e.a.x, var_1.x, false)).a.b), vec4<bool>(func_4(vec3<i32>(u_input.b, u_input.b, var_0.b.a), var_0.b.b.b, var_0.b.b.a).a.b, var_0.b.e.a.x, false, false), false)).a);
    var_2 = false;
    var_2 = !(_wgslsmith_f_op_f32(sign(1000f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-706f, global3.a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.a.a.x, global3.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -476f)))), var_0.b.d.yxx, 4294967295u, _wgslsmith_div_u32(~(~1u) & u_input.a, u_input.c.x));
}

