struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, 17791i), 19340u, 0u, vec2<f32>(509f, 747f));

var<private> global2: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(i32(-2147483648), 20436i, 10072i), vec3<i32>(16408i, -1i, -7661i), vec3<i32>(-1i, 3712i, -11986i), vec3<i32>(2147483647i, 0i, -32573i), vec3<i32>(0i, 0i, -64703i), vec3<i32>(i32(-2147483648), -9425i, 1i), vec3<i32>(-16829i, 2147483647i, 902i), vec3<i32>(1i, -14398i, 2147483647i), vec3<i32>(i32(-2147483648), 16989i, -19740i), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(18185i, i32(-2147483648), i32(-2147483648)), vec3<i32>(45288i, i32(-2147483648), 1i), vec3<i32>(2147483647i, 62225i, 27321i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 30379i, 0i), vec3<i32>(-38575i, 32129i, 0i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(-29321i, 12536i, -49318i), vec3<i32>(1i, -20357i, -8689i), vec3<i32>(0i, 40919i, 24758i), vec3<i32>(8209i, 32989i, i32(-2147483648)), vec3<i32>(51231i, 0i, 53032i), vec3<i32>(23652i, 0i, -1i), vec3<i32>(16710i, -61562i, 2147483647i), vec3<i32>(-16897i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -21890i, 17972i), vec3<i32>(90859i, -1i, -21082i), vec3<i32>(-43781i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, -8936i));

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<f32> {
    global1 = Struct_1(vec2<i32>(global1.a.x, firstTrailingBit(i32(-1i) * -13080i)), ~(~global4.b), _wgslsmith_dot_vec4_u32(vec4<u32>(11543u, global3.b, _wgslsmith_mod_u32(~52992u, reverseBits(global1.c)), ~48561u), ~vec4<u32>(firstLeadingBit(4475u), u_input.a.x, ~global4.b, 70099u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1482f, _wgslsmith_f_op_f32(abs(global1.d.x)))));
    global0 = !(!select(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(global1.d.x + global1.d.x) == global3.d.x, any(vec2<bool>(true, false))));
    let var_0 = Struct_1(select(select(~vec2<i32>(global1.a.x, global1.a.x) & global1.a, _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(32209i, global4.a.x), vec2<i32>(2147483647i, 29402i)), global3.a), all(vec3<bool>(false, false, false))), vec2<i32>(-30514i, ~global1.a.x) ^ -global1.a, !select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.b >= 1u)), reverseBits(u_input.b), firstTrailingBit(~117567u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global4.d, _wgslsmith_f_op_vec2_f32(-global3.d)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global3.d.x) - vec2<f32>(global4.d.x, global4.d.x)))) + vec2<f32>(global1.d.x, -1080f)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_vec2_u32(select(u_input.a, u_input.a, false), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(~(var_1.b | var_0.c), min(~u_input.a.x, _wgslsmith_mod_u32(0u, 34147u)))));
    return var_0.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(global3.a, ~(~(~63746u)), arg_0.x, _wgslsmith_f_op_vec2_f32(func_3()));
    let var_1 = Struct_1(vec2<i32>(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(global3.a.x, global4.a.x, -2147483647i, arg_1.a.x), select(vec4<i32>(var_0.a.x, arg_1.a.x, global4.a.x, global1.a.x), vec4<i32>(var_0.a.x, -8471i, -2147483647i, 0i), true))), ~(-18585i)), _wgslsmith_mult_u32(select(~abs(global4.b), 64843u, all(vec4<bool>(true, true, true, true))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.b, 12874u, 43394u) << (vec3<u32>(26506u, 5905u, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 26119u, arg_0.x), vec3<u32>(var_0.c, var_0.c, global4.b))), firstLeadingBit(arg_0.x))), global1.c, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1202f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f * arg_1.d.x)), global3.d.x))));
    var var_2 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, false)), var_0.d.x == -1000f, true, false)), !vec4<bool>(any(vec3<bool>(false, true, false)), true, true, false), true);
    let var_3 = arg_1;
    var var_4 = Struct_1((_wgslsmith_sub_vec2_i32(vec2<i32>(13614i, arg_1.a.x), vec2<i32>(global3.a.x, 0i) >> (vec2<u32>(u_input.a.x, 126354u) % vec2<u32>(32u))) & global4.a) << (u_input.a % vec2<u32>(32u)), global3.c, ~(~(~_wgslsmith_clamp_u32(arg_1.c, 0u, 47019u))), var_0.d);
    return Struct_1(global4.a, 14714u << (min(0u, global1.c) % 32u), ~(~25344u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1849f, 909f) + var_1.d), _wgslsmith_f_op_vec2_f32(func_3())) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1400f, global1.d.x))))) + vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(min(-1736f, _wgslsmith_f_op_f32(select(var_0.d.x, var_4.d.x, var_2.x)))))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1813f), 2327f))));
    let var_1 = Struct_1(vec2<i32>(-1i, global3.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_3, max(~arg_2.b, ~global3.b)), vec2<u32>(1u, global4.b)), global4.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.d + arg_2.d) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, -131f))))));
    let var_2 = arg_2;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1009f, _wgslsmith_f_op_f32(trunc(var_2.d.x))))), -501f);
    let var_3 = -(-(~(~vec4<i32>(-12435i, global1.a.x, var_1.a.x, 10383i))) << (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(42648u, 63844u, global1.b, 86527u), vec4<u32>(0u, var_2.b, 52239u, 1u)), vec4<u32>(global3.b, 55138u, u_input.a.x, 0u) ^ vec4<u32>(global4.b, 23195u, 1933u, 28898u)), _wgslsmith_div_vec4_u32(vec4<u32>(19013u, 4294967295u, var_1.c, 0u), reverseBits(vec4<u32>(17277u, 4294967295u, 4294967295u, global3.b)))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -841f, -675f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, -1207f, -1450f) * vec3<f32>(-140f, global3.d.x, global4.d.x))), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, -552f, global3.d.x)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(true, 30671u, func_2(select(u_input.a, u_input.a, vec2<bool>(false, true)), Struct_1(global4.a, 18797u, 3490u, global1.d)), 4294967295u))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -1719f, global4.d.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1839f, global1.d.x, -900f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d.x, global3.d.x, -871f), vec3<f32>(arg_0, 1000f, 289f), vec3<bool>(false, false, true))))), vec3<bool>(true, true, true))));
    let var_1 = func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.c, global3.c), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.c, global1.b), u_input.a))) | u_input.a, Struct_1(global4.a, max(max(1u, ~89479u), global1.c), global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1423f);
    let var_3 = 0i;
    let var_4 = var_1;
    return Struct_1(vec2<i32>(countOneBits(global1.a.x), var_4.a.x), 4294967295u, u_input.a.x, _wgslsmith_f_op_vec2_f32(-func_2(~_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(2988u, var_4.c)), Struct_1(var_1.a, select(6905u, var_4.c, true), _wgslsmith_sub_u32(79009u, global1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, global1.d.x) + global3.d))).d));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    return vec3<bool>(-(global3.a.x << (51155u % 32u)) != _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(global4.a), ~vec2<i32>(arg_1.a.x, global4.a.x)), _wgslsmith_mod_i32(arg_0, 1i)), true, !any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global3 = Struct_1(global4.a, 74650u, 63043u, _wgslsmith_f_op_vec2_f32(abs(global4.d)));
    var var_0 = select(func_5(global4.a.x, func_1(-444f)), vec3<bool>(true, all(vec3<bool>(true, true, true)), !(~88566u >= _wgslsmith_sub_u32(1u, u_input.b))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)) != (((88619u ^ u_input.b) != (4294967295u ^ u_input.b)) & false));
    global3 = func_1(_wgslsmith_f_op_f32(sign(global1.d.x)));
    let var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(~(~0u), 4294967295u), _wgslsmith_mult_u32(abs(global3.b), 58186u), 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.x, global1.d.x, global4.d.x, -302f) + vec4<f32>(-178f, global1.d.x, global3.d.x, global1.d.x)))) * vec4<f32>(_wgslsmith_f_op_f32(-260f * global4.d.x), _wgslsmith_f_op_f32(floor(847f)), 1133f, _wgslsmith_f_op_f32(step(global4.d.x, 115f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.d.x - -172f), global3.d.x))), -552f, var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1447f), global4.d.x));
}

