struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(7714u, 33119u, 10379u), 435f, 23559u, vec3<u32>(4294967295u, 35184u, 0u)), Struct_1(vec3<u32>(63119u, 1u, 240u), -274f, 100176u, vec3<u32>(20110u, 2676u, 1u)), Struct_1(vec3<u32>(4294967295u, 2871u, 0u), -855f, 0u, vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec3<u32>(1u, 0u, 47972u), 1000f, 23067u, vec3<u32>(30645u, 0u, 21282u)), Struct_1(vec3<u32>(1u, 30523u, 0u), -728f, 9968u, vec3<u32>(1u, 35985u, 1u)), Struct_1(vec3<u32>(28959u, 1u, 0u), -271f, 11820u, vec3<u32>(43841u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 64070u, 0u), -2223f, 27290u, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 30840u, 4294967295u), -2612f, 4294967295u, vec3<u32>(1u, 0u, 0u)), Struct_1(vec3<u32>(4294967295u, 68946u, 15546u), 329f, 63063u, vec3<u32>(40661u, 39259u, 0u)), Struct_1(vec3<u32>(20241u, 4294967295u, 0u), -707f, 1u, vec3<u32>(1u, 0u, 44098u)));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<u32>(4932u, 4294967295u, 1u), 311f, 4294967295u, vec3<u32>(45769u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 79198u, 44319u), -714f, 4294967295u, vec3<u32>(52415u, 15449u, 66385u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), -1625f, 4294967295u, vec3<u32>(4294967295u, 4294967295u, 99568u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 103586u), 994f, 47172u, vec3<u32>(13146u, 47223u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 12904u), 834f, 33019u, vec3<u32>(1179u, 1u, 4294967295u)), Struct_1(vec3<u32>(72860u, 1u, 4294967295u), 402f, 75586u, vec3<u32>(1u, 1u, 0u)), Struct_1(vec3<u32>(1u, 0u, 17347u), -840f, 22350u, vec3<u32>(50013u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 15220u), 1171f, 28578u, vec3<u32>(16286u, 1u, 4294967295u)), Struct_1(vec3<u32>(19106u, 4294967295u, 22279u), 550f, 1u, vec3<u32>(0u, 34594u, 4294967295u)), Struct_1(vec3<u32>(0u, 108748u, 0u), 1382f, 1u, vec3<u32>(4294967295u, 16304u, 6422u)), Struct_1(vec3<u32>(5606u, 0u, 4294967295u), -565f, 1u, vec3<u32>(263u, 4294967295u, 140004u)), Struct_1(vec3<u32>(43810u, 46709u, 45680u), 504f, 19501u, vec3<u32>(48074u, 69915u, 2812u)), Struct_1(vec3<u32>(13988u, 0u, 0u), -1051f, 12915u, vec3<u32>(32001u, 0u, 51252u)));

var<private> global2: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-313f, -614f, 134f, 418f), vec4<f32>(1276f, -334f, -1006f, 624f), vec4<f32>(-2005f, -817f, -176f, -162f), vec4<f32>(-372f, -964f, 418f, -1121f), vec4<f32>(-636f, -649f, 1000f, 866f), vec4<f32>(-431f, 182f, 184f, 1102f), vec4<f32>(1460f, -290f, -242f, 2124f), vec4<f32>(-369f, -631f, -450f, 121f), vec4<f32>(-1000f, 700f, 783f, 353f), vec4<f32>(-300f, 617f, 377f, 824f), vec4<f32>(296f, -735f, 1690f, 144f), vec4<f32>(308f, -180f, 2235f, 235f), vec4<f32>(-1245f, -1000f, -632f, 1275f), vec4<f32>(304f, 424f, -2059f, 413f), vec4<f32>(-499f, -387f, 1329f, 329f), vec4<f32>(495f, -396f, -885f, -651f), vec4<f32>(-817f, -2505f, 1117f, 1000f), vec4<f32>(-1039f, 1383f, -788f, 440f), vec4<f32>(324f, -567f, -258f, 354f), vec4<f32>(-270f, 136f, -1237f, -382f), vec4<f32>(832f, 548f, 294f, 455f), vec4<f32>(311f, -664f, -293f, -200f), vec4<f32>(-321f, -1000f, -1000f, -386f), vec4<f32>(117f, -632f, 260f, -1124f), vec4<f32>(-335f, -708f, -1425f, 1398f), vec4<f32>(888f, -559f, -1847f, -133f), vec4<f32>(-1195f, 478f, 1735f, -441f), vec4<f32>(750f, -811f, -177f, -153f));

var<private> global3: Struct_1;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    global2 = array<vec4<f32>, 28>();
    global4 = select(u_input.c.zy, reverseBits(vec2<i32>(41658i, abs(global4.x))), any(select(vec4<bool>(global4.x <= -9326i, arg_0, !arg_0, !arg_0), vec4<bool>(true, arg_0, true, false), select(!vec4<bool>(true, arg_0, false, false), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, true, arg_0, true)), arg_0))));
    let var_0 = Struct_1(u_input.d, 1000f, firstTrailingBit(_wgslsmith_div_u32(~107909u, ~u_input.d.x) << (~countOneBits(global3.d.x) % 32u)), vec3<u32>(u_input.d.x, 0u, ~33445u));
    global2 = array<vec4<f32>, 28>();
    global1 = array<Struct_1, 13>();
    return 63888i;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = ~vec4<i32>(func_3(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_1(firstTrailingBit(u_input.d), _wgslsmith_f_op_f32(608f - arg_2.b), select(global3.d.x, arg_1.x, false), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a.x, arg_1.x, 1u), vec3<u32>(arg_2.c, global3.a.x, global3.d.x))), _wgslsmith_f_op_vec2_f32(-arg_3)), firstTrailingBit(_wgslsmith_sub_i32(i32(-1i) * -1i, -52169i)), ~(-countOneBits(0i)), 0i);
    var var_1 = select(vec2<bool>(any(vec3<bool>(true, true, true)), true), !vec2<bool>(all(vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_2 = _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(arg_2.d.x, 31255u, 31429u))), arg_1 | abs(arg_1));
    return -4465i;
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(u_input.d.xy), ~vec2<u32>(global3.a.x, u_input.d.x)), abs(u_input.d.xx) << (u_input.d.yy % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(73806u, u_input.d.x), vec2<u32>(u_input.d.x, u_input.d.x)), vec2<u32>(abs(global3.c), global3.c))), 13u)];
    var var_1 = vec2<bool>(any(vec4<bool>(any(vec4<bool>(false, false, true, false)), !(-2147483647i <= arg_0), any(vec4<bool>(true, false, true, true)), true)), true);
    return Struct_1(vec3<u32>(u_input.d.x, ~var_0.c, u_input.d.x), _wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_mult_u32(0u & var_0.a.x, _wgslsmith_clamp_u32(firstLeadingBit(global3.d.x), 0u, 0u)) ^ 36236u, u_input.d);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_mod_i32(~(-u_input.a.x), _wgslsmith_mod_i32(max(~29457i, func_2(global4.x, vec3<u32>(global3.c, 4294967295u, u_input.d.x), Struct_1(u_input.d, -610f, global3.a.x, global3.a), vec2<f32>(global3.b, global3.b))), 1202i)));
    global1 = array<Struct_1, 13>();
    var var_1 = select(select(vec3<bool>((var_0.a.x < 60916u) & true, (global4.x & u_input.a.x) < _wgslsmith_add_i32(global4.x, u_input.c.x), !all(vec3<bool>(true, true, false))), vec3<bool>((var_0.b >= 1882f) || any(vec4<bool>(true, false, false, true)), any(vec4<bool>(true, false, true, false)), !any(vec3<bool>(false, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), all(vec3<bool>(true, true, true)))), select(vec3<bool>(true, !(global3.b != -408f), true), vec3<bool>((global4.x >= u_input.b.x) | true, any(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, false, true, false)), true, false), true)), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true))));
    return func_4(~(-2147483647i ^ (_wgslsmith_div_i32(global4.x, global4.x) & firstLeadingBit(u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 28>();
    global3 = func_1(_wgslsmith_f_op_f32(step(global3.b, 877f)));
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2375f), -348f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, _wgslsmith_f_op_f32(1000f + global3.b)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2262f, global3.b))), vec2<f32>(1129f, 1179f), true)))), vec2<f32>(-150f, -582f));
    var var_1 = func_1(-279f);
    global2 = array<vec4<f32>, 28>();
    var var_2 = _wgslsmith_dot_vec3_u32(select(u_input.d, (vec3<u32>(25468u, global3.a.x, 2242u) ^ countOneBits(u_input.d)) >> (max(firstLeadingBit(vec3<u32>(var_1.c, 38407u, 4294967295u)), vec3<u32>(2007u, global3.d.x, 0u)) % vec3<u32>(32u)), select(vec3<bool>(any(vec2<bool>(false, false)), true, select(true, false, true)), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))), ~(~global3.d));
    global3 = global1[_wgslsmith_index_u32(u_input.d.x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(global3.c, global3.d.x) >> (85139u % 32u));
}

