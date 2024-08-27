struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(i32(-2147483648), 0i, 18854i, 1i), vec4<i32>(1i, 3796i, -1i, 0i), vec4<i32>(0i, -55978i, -56654i, 8595i), vec4<i32>(24156i, 33001i, 1i, -21001i), vec4<i32>(24140i, -2602i, 40295i, 1i), vec4<i32>(4426i, 1i, -14569i, 6743i), vec4<i32>(-77170i, 2147483647i, -33422i, 2461i), vec4<i32>(i32(-2147483648), -53985i, 2147483647i, 2147483647i), vec4<i32>(-1i, 0i, -38003i, 4827i), vec4<i32>(2147483647i, -14167i, -40555i, 16036i), vec4<i32>(1i, 7113i, 2147483647i, -43990i), vec4<i32>(28294i, 1414i, 20103i, 1i), vec4<i32>(3204i, -55230i, 2147483647i, -1i), vec4<i32>(1i, 40161i, i32(-2147483648), 1i), vec4<i32>(-1i, -48385i, -30168i, 19676i), vec4<i32>(1i, -14093i, 0i, 2147483647i), vec4<i32>(-1i, 28672i, -30835i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, -1i, 7653i), vec4<i32>(27111i, -1i, -7818i, 2147483647i), vec4<i32>(0i, -1i, 0i, 35334i), vec4<i32>(-1i, 1i, 1i, 480i), vec4<i32>(-35787i, 18861i, -1i, -14635i), vec4<i32>(2147483647i, 45994i, -63122i, -1i), vec4<i32>(29371i, 18000i, -1i, 2147483647i), vec4<i32>(-21251i, 26109i, i32(-2147483648), 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), 17834i, -5708i), vec4<i32>(1i, -41537i, -10949i, 44555i), vec4<i32>(2147483647i, -21312i, 1i, -25640i), vec4<i32>(4017i, -3787i, 1i, 14836i), vec4<i32>(-31450i, 0i, 29712i, 0i));

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(vec2<i32>(16361i, -38400i), vec3<i32>(-37213i, -1792i, i32(-2147483648)), vec3<u32>(0u, 1u, 38180u), vec2<u32>(116611u, 63559u), 1u)), Struct_3(Struct_1(vec2<i32>(31813i, 1i), vec3<i32>(0i, -1956i, 51011i), vec3<u32>(4294967295u, 1u, 30528u), vec2<u32>(21375u, 20818u), 40832u)), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 12435i), vec3<i32>(-1i, 2147483647i, -29294i), vec3<u32>(1u, 4294967295u, 4294967295u), vec2<u32>(0u, 1u), 47796u)), Struct_3(Struct_1(vec2<i32>(32295i, -31502i), vec3<i32>(3797i, 2147483647i, 17675i), vec3<u32>(4294967295u, 31210u, 56640u), vec2<u32>(49795u, 37206u), 1u)), Struct_3(Struct_1(vec2<i32>(2147483647i, -498i), vec3<i32>(-10756i, -1i, 11580i), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), 42249u)), Struct_3(Struct_1(vec2<i32>(-1i, 2147483647i), vec3<i32>(i32(-2147483648), 12220i, -45604i), vec3<u32>(1u, 66908u, 4294967295u), vec2<u32>(0u, 31457u), 10920u)), Struct_3(Struct_1(vec2<i32>(-1i, -1i), vec3<i32>(-1i, -41353i, 30512i), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(7502u, 0u), 158u)), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(28253i, i32(-2147483648), -42290i), vec3<u32>(45030u, 0u, 1u), vec2<u32>(14661u, 1u), 1u)), Struct_3(Struct_1(vec2<i32>(10942i, 808i), vec3<i32>(i32(-2147483648), i32(-2147483648), -21753i), vec3<u32>(2940u, 4294967295u, 0u), vec2<u32>(0u, 4294967295u), 0u)), Struct_3(Struct_1(vec2<i32>(-1i, -32400i), vec3<i32>(2147483647i, -42366i, 2147483647i), vec3<u32>(74867u, 12590u, 2903u), vec2<u32>(4294967295u, 77115u), 58490u)), Struct_3(Struct_1(vec2<i32>(-1i, 10137i), vec3<i32>(0i, -32972i, 0i), vec3<u32>(4294967295u, 74167u, 40720u), vec2<u32>(10604u, 2743u), 30468u)), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 2190i), vec3<i32>(-23315i, 29375i, 0i), vec3<u32>(1u, 40141u, 42259u), vec2<u32>(4294967295u, 0u), 58088u)), Struct_3(Struct_1(vec2<i32>(0i, -23584i), vec3<i32>(44475i, 2147483647i, -51224i), vec3<u32>(1u, 1u, 4294967295u), vec2<u32>(1u, 1909u), 109605u)), Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<i32>(-51640i, -5393i, 72957i), vec3<u32>(54421u, 5767u, 14316u), vec2<u32>(4294967295u, 40312u), 4294967295u)), Struct_3(Struct_1(vec2<i32>(0i, 1i), vec3<i32>(-1i, 0i, -40995i), vec3<u32>(95741u, 56520u, 6276u), vec2<u32>(4294967295u, 0u), 0u)), Struct_3(Struct_1(vec2<i32>(92231i, i32(-2147483648)), vec3<i32>(11569i, 30259i, -1i), vec3<u32>(29045u, 30309u, 82848u), vec2<u32>(35065u, 4294967295u), 57179u)), Struct_3(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<i32>(1i, 43710i, i32(-2147483648)), vec3<u32>(0u, 21094u, 1u), vec2<u32>(56535u, 18577u), 92268u)), Struct_3(Struct_1(vec2<i32>(2147483647i, 32664i), vec3<i32>(i32(-2147483648), -5061i, 1i), vec3<u32>(1u, 4294967295u, 1u), vec2<u32>(0u, 4294967295u), 37722u)), Struct_3(Struct_1(vec2<i32>(20972i, -14448i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<u32>(23100u, 0u, 51088u), vec2<u32>(4294967295u, 4294967295u), 9217u)), Struct_3(Struct_1(vec2<i32>(13081i, 0i), vec3<i32>(-53051i, 2147483647i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 66619u), vec2<u32>(90415u, 0u), 12478u)), Struct_3(Struct_1(vec2<i32>(24191i, 0i), vec3<i32>(-1i, -4098i, i32(-2147483648)), vec3<u32>(6693u, 35491u, 15500u), vec2<u32>(4294967295u, 1u), 10937u)), Struct_3(Struct_1(vec2<i32>(-16191i, 1i), vec3<i32>(-42320i, -75170i, -43239i), vec3<u32>(42231u, 32994u, 15105u), vec2<u32>(39897u, 28501u), 11660u)), Struct_3(Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(9658i, 2147483647i, 78210i), vec3<u32>(103460u, 4294967295u, 33245u), vec2<u32>(45116u, 1u), 0u)), Struct_3(Struct_1(vec2<i32>(2147483647i, 11131i), vec3<i32>(2147483647i, i32(-2147483648), -2040i), vec3<u32>(58656u, 4294967295u, 32668u), vec2<u32>(4294967295u, 4294967295u), 12110u)), Struct_3(Struct_1(vec2<i32>(59676i, 0i), vec3<i32>(2570i, i32(-2147483648), 44466i), vec3<u32>(1u, 0u, 0u), vec2<u32>(19039u, 1u), 35527u)), Struct_3(Struct_1(vec2<i32>(-10016i, 0i), vec3<i32>(0i, 0i, 18879i), vec3<u32>(0u, 38877u, 36367u), vec2<u32>(4294967295u, 48186u), 20019u)), Struct_3(Struct_1(vec2<i32>(0i, 1i), vec3<i32>(2147483647i, 25507i, i32(-2147483648)), vec3<u32>(72917u, 1u, 34591u), vec2<u32>(51789u, 46428u), 0u)), Struct_3(Struct_1(vec2<i32>(-18319i, 17915i), vec3<i32>(0i, -17444i, i32(-2147483648)), vec3<u32>(0u, 33015u, 0u), vec2<u32>(1u, 1u), 34675u)), Struct_3(Struct_1(vec2<i32>(-16659i, 23162i), vec3<i32>(-1321i, i32(-2147483648), -20101i), vec3<u32>(1u, 112025u, 85146u), vec2<u32>(4294967295u, 21347u), 0u)), Struct_3(Struct_1(vec2<i32>(-11679i, 400i), vec3<i32>(2147483647i, 72123i, -14648i), vec3<u32>(0u, 7928u, 21311u), vec2<u32>(38781u, 1u), 79091u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = arg_0;
    var var_1 = select(vec3<bool>(false, select(false, any(vec3<bool>(false, true, true)), select(any(vec3<bool>(true, false, true)), true, true)), !(!select(true, true, true))), vec3<bool>(!(_wgslsmith_f_op_f32(sign(-488f)) != _wgslsmith_f_op_f32(-264f * -906f)), any(vec2<bool>(true, u_input.a.x > var_0.x)), all(vec2<bool>(true, true))), !select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))));
    global1 = array<Struct_3, 30>();
    global1 = array<Struct_3, 30>();
    let var_2 = var_1.x;
    return -(~(vec4<i32>(-35127i ^ arg_0.x, -2147483647i, 0i, -u_input.a.x) & var_0));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> Struct_4 {
    global1 = array<Struct_3, 30>();
    global1 = array<Struct_3, 30>();
    let var_0 = _wgslsmith_dot_vec4_i32(countOneBits(max(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-22565i, -1i, -1i, 10212i)), _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(599u, 31u)])), vec4<i32>(arg_0, arg_0, 5445i, -9208i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-13277i, 26568i, 2147483647i, u_input.a.x), global0[_wgslsmith_index_u32(35247u, 31u)]))), max(~global0[_wgslsmith_index_u32(~u_input.b.x, 31u)], _wgslsmith_add_vec4_i32(-func_3(vec4<i32>(u_input.a.x, -39454i, arg_0, u_input.a.x)), vec4<i32>(-2147483647i, u_input.a.x, 1i, -48029i))));
    let var_1 = Struct_2(arg_0, Struct_1(firstLeadingBit(u_input.a.zx), select(select(abs(u_input.a), ~vec3<i32>(arg_0, var_0, 0i), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, false))), -vec3<i32>(28601i, u_input.a.x, var_0) << ((vec3<u32>(4294967295u, 0u, u_input.b.x) & vec3<u32>(0u, 36285u, u_input.b.x)) % vec3<u32>(32u)), arg_2), ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 135817u, u_input.b.x), vec3<u32>(19004u, 0u, u_input.b.x))), ~vec2<u32>(~1647u, ~u_input.b.x), _wgslsmith_sub_u32(~u_input.b.x, abs(988u))), Struct_1(_wgslsmith_mod_vec2_i32(func_3(global0[_wgslsmith_index_u32(0u, 31u)]).zw, u_input.a.yy & vec2<i32>(var_0, arg_0)), select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0, u_input.a.x), u_input.a | vec3<i32>(-7061i, arg_0, 57742i)), ~vec3<i32>(-62163i, 30020i, 86249i) >> ((vec3<u32>(1u, 16356u, u_input.b.x) | vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), !vec3<bool>(arg_2, false, arg_2)), vec3<u32>(_wgslsmith_div_u32(min(u_input.b.x, 20849u), reverseBits(16528u)), reverseBits(u_input.b.x), u_input.b.x), vec2<u32>(u_input.b.x, min(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 18595u)), ~((u_input.b.x & 1u) >> (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u))), select(vec3<bool>(true, all(!vec4<bool>(false, arg_2, true, true)), arg_2), vec3<bool>(u_input.a.x > var_0, _wgslsmith_mult_i32(-23833i, var_0) < -40670i, (arg_0 << (u_input.b.x % 32u)) == 0i), (u_input.b.x < _wgslsmith_add_u32(u_input.b.x, 5172u)) & true));
    let var_2 = true;
    return Struct_4(~41069u, var_1, -4026i, false, var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_4 {
    var var_0 = Struct_1(~func_2(-1i, 1000f, any(select(vec4<bool>(arg_1.d, arg_0.d.x, arg_0.d.x, false), vec4<bool>(true, false, arg_0.d.x, arg_0.d.x), arg_1.e.d.x))).e.b.a, arg_0.c.b, arg_1.b.b.c, vec2<u32>(0u, ~firstLeadingBit(4294967295u)) >> (~vec2<u32>(arg_1.e.b.e, u_input.b.x) % vec2<u32>(32u)), 46510u);
    var var_1 = arg_1;
    let var_2 = false;
    var var_3 = 16987i;
    global0 = array<vec4<i32>, 31>();
    return func_2(1i, -1147f, arg_1.d);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: u32) -> bool {
    global0 = array<vec4<i32>, 31>();
    global1 = array<Struct_3, 30>();
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    let var_0 = true;
    return _wgslsmith_f_op_f32(-arg_1.x) <= -639f;
}

fn func_1() -> i32 {
    global0 = array<vec4<i32>, 31>();
    global1 = array<Struct_3, 30>();
    var var_0 = 36695i;
    var var_1 = vec2<bool>(true, func_5(func_4(Struct_2(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), Struct_1(u_input.a.zz, vec3<i32>(2202i, 2147483647i, u_input.a.x), vec3<u32>(4294967295u, 0u, 4294967295u), vec2<u32>(30749u, u_input.b.x), 24141u), Struct_1(u_input.a.yy, u_input.a, vec3<u32>(2955u, u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 19002u), 1u), vec3<bool>(true, false, false)), func_2(select(u_input.a.x, u_input.a.x, true), -482f, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1156f, -240f) - vec2<f32>(-240f, 1000f)) + vec2<f32>(299f, -2352f))), func_2(~u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -972f), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))).b, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(4294967295u, u_input.b.x, 74489u, u_input.b.x), max(vec4<u32>(34456u, 1u, 1057u, 7295u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u))))));
    let var_2 = func_2(~(i32(-1i) * -2147483647i), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2277f) - _wgslsmith_f_op_f32(max(1123f, -191f))), _wgslsmith_f_op_f32(sign(-916f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(217f - -309f), _wgslsmith_f_op_f32(f32(-1f) * -859f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1194f)) + _wgslsmith_f_op_f32(f32(-1f) * -252f)))), true).e;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-734f, 465f)), -844f, all(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(1285f - _wgslsmith_f_op_f32(f32(-1f) * -192f)), _wgslsmith_f_op_f32(abs(-328f)), 110f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1642f, -456f, 1512f, -1740f)))), vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(650f, -1544f, -134f, 228f) + vec4<f32>(-801f, -2162f, 1000f, 831f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1491f, 132f, 893f, -1245f)))))), -1209f, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 1i), ~firstTrailingBit(u_input.a.yy)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.a.zz, u_input.a.xz), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), vec2<i32>(30622i, u_input.a.x) | vec2<i32>(35836i, -17520i)))));
}

