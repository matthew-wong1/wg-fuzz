struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(Struct_2(-5302i, Struct_1(vec3<i32>(32140i, 3046i, 2147483647i))), vec2<u32>(50228u, 23784u)), Struct_5(Struct_2(2147483647i, Struct_1(vec3<i32>(0i, i32(-2147483648), 29773i))), vec2<u32>(4294967295u, 1u)), Struct_5(Struct_2(-10689i, Struct_1(vec3<i32>(1i, 9067i, -7259i))), vec2<u32>(4294967295u, 44539u)), Struct_5(Struct_2(-21135i, Struct_1(vec3<i32>(14496i, 1i, i32(-2147483648)))), vec2<u32>(1u, 4294967295u)), Struct_5(Struct_2(0i, Struct_1(vec3<i32>(-1i, 35706i, 21425i))), vec2<u32>(1u, 1u)), Struct_5(Struct_2(2147483647i, Struct_1(vec3<i32>(0i, 0i, 45297i))), vec2<u32>(33182u, 56555u)), Struct_5(Struct_2(16549i, Struct_1(vec3<i32>(19258i, 18337i, -6166i))), vec2<u32>(1u, 21669u)), Struct_5(Struct_2(-46770i, Struct_1(vec3<i32>(22360i, 1i, 1i))), vec2<u32>(1u, 10661u)), Struct_5(Struct_2(19225i, Struct_1(vec3<i32>(-10605i, 1i, -713i))), vec2<u32>(1u, 72864u)), Struct_5(Struct_2(50729i, Struct_1(vec3<i32>(8824i, 0i, 2147483647i))), vec2<u32>(27117u, 4294967295u)), Struct_5(Struct_2(i32(-2147483648), Struct_1(vec3<i32>(31056i, 94220i, 1i))), vec2<u32>(35210u, 1u)), Struct_5(Struct_2(0i, Struct_1(vec3<i32>(50899i, -9200i, 0i))), vec2<u32>(4294967295u, 4294967295u)), Struct_5(Struct_2(26299i, Struct_1(vec3<i32>(-52772i, 51613i, i32(-2147483648)))), vec2<u32>(0u, 5736u)), Struct_5(Struct_2(2147483647i, Struct_1(vec3<i32>(38261i, i32(-2147483648), 2147483647i))), vec2<u32>(0u, 1u)), Struct_5(Struct_2(0i, Struct_1(vec3<i32>(52904i, -18718i, 1i))), vec2<u32>(1u, 1u)), Struct_5(Struct_2(-1i, Struct_1(vec3<i32>(7367i, -8309i, 1i))), vec2<u32>(1094u, 11680u)), Struct_5(Struct_2(-16394i, Struct_1(vec3<i32>(-18989i, -31326i, 2147483647i))), vec2<u32>(1u, 41245u)), Struct_5(Struct_2(-23736i, Struct_1(vec3<i32>(20322i, 6306i, -1i))), vec2<u32>(1u, 0u)), Struct_5(Struct_2(-69163i, Struct_1(vec3<i32>(-1i, 10390i, -44503i))), vec2<u32>(9137u, 1u)), Struct_5(Struct_2(-11397i, Struct_1(vec3<i32>(2147483647i, 57955i, 2147483647i))), vec2<u32>(1u, 71224u)), Struct_5(Struct_2(49374i, Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i))), vec2<u32>(4294967295u, 6627u)), Struct_5(Struct_2(-1i, Struct_1(vec3<i32>(-43248i, i32(-2147483648), -4030i))), vec2<u32>(56069u, 1u)), Struct_5(Struct_2(2147483647i, Struct_1(vec3<i32>(23659i, 1i, 46721i))), vec2<u32>(4937u, 5445u)), Struct_5(Struct_2(2147483647i, Struct_1(vec3<i32>(-5960i, 13215i, -13995i))), vec2<u32>(5995u, 10852u)), Struct_5(Struct_2(-40062i, Struct_1(vec3<i32>(-1i, -20180i, -27973i))), vec2<u32>(0u, 19962u)), Struct_5(Struct_2(-1620i, Struct_1(vec3<i32>(0i, -2342i, -17687i))), vec2<u32>(852u, 1u)), Struct_5(Struct_2(i32(-2147483648), Struct_1(vec3<i32>(-36106i, -21867i, -6349i))), vec2<u32>(15626u, 4294967295u)), Struct_5(Struct_2(18462i, Struct_1(vec3<i32>(2147483647i, 0i, 1i))), vec2<u32>(55040u, 46285u)), Struct_5(Struct_2(1i, Struct_1(vec3<i32>(94i, 2147483647i, -37375i))), vec2<u32>(4294967295u, 56807u)), Struct_5(Struct_2(-35814i, Struct_1(vec3<i32>(i32(-2147483648), 9579i, -13558i))), vec2<u32>(1u, 1u)), Struct_5(Struct_2(0i, Struct_1(vec3<i32>(1i, 22447i, -21202i))), vec2<u32>(103510u, 4294967295u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = ~(~reverseBits(~0u));
    let var_1 = global0[_wgslsmith_index_u32(~(~0u), 31u)];
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(arg_0, vec3<i32>(1i, u_input.a.x, i32(-1i) * -50372i)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1591f, -356f) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1512f) * -2323f))) * _wgslsmith_f_op_f32(min(-1454f, _wgslsmith_f_op_f32(-416f * 1f))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-187f, 577f, 572f) * vec3<f32>(-724f, 796f, -1183f)))))), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    return countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(~var_1.b.x, 17830u, reverseBits(0u), abs(1u)), firstLeadingBit(~vec4<u32>(0u, var_1.b.x, var_1.b.x, 1u))) & vec4<u32>(~18116u, ~(~var_1.b.x), 27101u, ~4294967295u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(529f * arg_2), _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)), _wgslsmith_mult_u32(arg_0.x, arg_0.x) >= ~1u)), _wgslsmith_f_op_f32(arg_2 * arg_2)));
    let var_1 = Struct_5(Struct_2(countOneBits(-u_input.a.x), Struct_1(~vec3<i32>(-2147483647i, arg_1.x, -12765i))), arg_0.yy);
    global0 = array<Struct_5, 31>();
    var var_2 = Struct_3(var_1.b.x, arg_0.zxw, Struct_2(max(arg_1.x >> (var_1.b.x % 32u), var_1.a.b.a.x) >> (var_1.b.x % 32u), Struct_1(vec3<i32>(~arg_1.x, min(2147483647i, 41922i), min(0i, var_1.a.a)))), vec4<bool>(true, !select(arg_3.x, select(arg_3.x, arg_3.x, false), any(vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x))), false, (arg_3.x | true) || any(!vec4<bool>(true, arg_3.x, true, arg_3.x))), var_1.a.b);
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_2)), -838f, _wgslsmith_div_f32(var_0.x, -2033f), var_0.x))));
    return var_2.d;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_2 {
    global0 = array<Struct_5, 31>();
    let var_0 = select(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_1.b.a.x) & _wgslsmith_add_vec2_i32(arg_1.b.a.xy, vec2<i32>(-2147483647i, -15299i)), arg_1.b.a.xy), u_input.a.yw), -vec2<i32>(arg_1.b.a.x, -(~0i)), select(arg_0.ww, select(func_3(~vec4<u32>(15718u, 0u, 4294967295u, 4294967295u), vec4<i32>(8628i, u_input.a.x, u_input.a.x, arg_1.a), _wgslsmith_f_op_f32(step(1000f, 495f)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)).zz, vec2<bool>(!arg_0.x, arg_0.x), !vec2<bool>(true, arg_0.x)), !arg_0.ww));
    global0 = array<Struct_5, 31>();
    var var_1 = -u_input.a.x;
    global0 = array<Struct_5, 31>();
    return Struct_2(var_0.x, arg_1.b);
}

fn func_1() -> Struct_2 {
    return func_4(select(func_3(func_2(_wgslsmith_mult_vec3_i32(u_input.a.yxz, u_input.a.zxy)), vec4<i32>(-14212i ^ u_input.a.x, 0i, 0i, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-841f + -2197f)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), 1i < u_input.a.x)), func_3(firstLeadingBit(vec4<u32>(49558u, 35142u, 4294967295u, 1u)), -countOneBits(u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -883f))), func_3(~vec4<u32>(1u, 0u, 0u, 0u), u_input.a | vec4<i32>(0i, -10544i, 13389i, u_input.a.x), _wgslsmith_f_op_f32(461f + -416f), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)).wxw), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, true, false), true, true), false)), Struct_2(reverseBits(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), Struct_1(max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), -u_input.a.zww))));
}

fn func_5(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, 1403f, 1242f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1299f, 1451f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(917f, -1105f, -1000f), vec3<f32>(240f, 179f, -785f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(825f, -2270f, -429f) - vec3<f32>(-273f, -513f, -2167f)))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), func_3(vec4<u32>(1u, 4294967295u, 4294967295u, 62322u), u_input.a, -1472f, vec3<bool>(false, true, true)).ywy, func_3(vec4<u32>(1u, 4294967295u, 13152u, 1u), vec4<i32>(arg_0.a, 2147483647i, -51465i, 49306i), -719f, vec3<bool>(true, false, true)).zzz))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, 733f, -277f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, 434f, -351f))))), !func_3(vec4<u32>(1u, 1u, 1u, 1u), select(countOneBits(vec4<i32>(-2147483647i, arg_0.b.a.x, -16624i, arg_0.b.a.x)), vec4<i32>(-1i, 9574i, arg_0.a, -14969i), true), -1331f, !func_3(vec4<u32>(7878u, 21908u, 46681u, 0u), vec4<i32>(-59708i, -1i, 48354i, arg_0.b.a.x), 565f, vec3<bool>(false, false, false)).xxy).zx);
    global0 = array<Struct_5, 31>();
    let var_1 = Struct_5(func_1(), vec2<u32>(8302u, 1u));
    let var_2 = !(!vec3<bool>(true != (var_0.a.x > var_0.a.x), true, var_0.b.x));
    global0 = array<Struct_5, 31>();
    return func_1().b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -544f;
    var var_1 = Struct_1(func_5(func_1()) | u_input.a.zyw);
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-256f, 1293f, var_0)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2372f, var_0, var_0))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -165f, var_0) + vec3<f32>(403f, 1000f, 828f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1019f, 595f) * vec3<f32>(var_0, 550f, var_0))))), vec2<bool>(all(vec2<bool>(true, true)), false));
    var_1 = func_1().b;
    global0 = array<Struct_5, 31>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(9821u, countOneBits(~(~0u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4923u, 4208u, 1u)) % 32u))), -reverseBits(-(var_1.a.yy >> (vec2<u32>(19718u, 59950u) % vec2<u32>(32u)))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4061u, 0u, 0u), reverseBits(26886u), _wgslsmith_dot_vec3_u32(vec3<u32>(29511u, 4294967295u, 13981u), vec3<u32>(0u, 17604u, 0u))), 0u, 1u) << (func_2(vec3<i32>(1i, u_input.a.x, ~(-30765i))).zyz % vec3<u32>(32u)));
}

