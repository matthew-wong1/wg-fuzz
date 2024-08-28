struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(-1000f, vec3<bool>(true, true, false)), true), Struct_2(Struct_1(-1501f, vec3<bool>(true, true, false)), true), Struct_2(Struct_1(-1049f, vec3<bool>(false, false, false)), true), Struct_2(Struct_1(-216f, vec3<bool>(false, true, false)), true), Struct_2(Struct_1(1230f, vec3<bool>(true, false, true)), false), Struct_2(Struct_1(640f, vec3<bool>(false, false, true)), false), Struct_2(Struct_1(599f, vec3<bool>(true, true, false)), false), Struct_2(Struct_1(-1000f, vec3<bool>(true, false, false)), false), Struct_2(Struct_1(662f, vec3<bool>(false, true, true)), true), Struct_2(Struct_1(1354f, vec3<bool>(false, true, false)), true), Struct_2(Struct_1(655f, vec3<bool>(false, false, false)), true), Struct_2(Struct_1(907f, vec3<bool>(true, true, false)), true), Struct_2(Struct_1(1197f, vec3<bool>(false, true, true)), false), Struct_2(Struct_1(-348f, vec3<bool>(false, true, true)), true), Struct_2(Struct_1(-1000f, vec3<bool>(true, false, false)), false), Struct_2(Struct_1(1580f, vec3<bool>(true, true, true)), false), Struct_2(Struct_1(-496f, vec3<bool>(false, true, false)), true), Struct_2(Struct_1(542f, vec3<bool>(false, false, true)), true), Struct_2(Struct_1(158f, vec3<bool>(false, false, true)), false), Struct_2(Struct_1(456f, vec3<bool>(false, false, true)), false));

var<private> global1: f32;

var<private> global2: f32 = -759f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> vec4<f32> {
    global0 = array<Struct_2, 20>();
    let var_0 = arg_3.a;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a * -991f) + _wgslsmith_f_op_f32(-arg_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(196f, var_0.a))) - 402f)));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(621f * arg_3.a.a) - _wgslsmith_f_op_f32(floor(1617f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-640f)) - _wgslsmith_f_op_f32(-738f * -1141f)), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -583f));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_1, 46303i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, 258f, arg_0.x) + vec3<f32>(arg_1.a.a, -519f, 101f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1055f, -1000f))), arg_1)), vec4<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(arg_1.a.a * arg_1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.a)) + -249f), arg_1.a.a, -621f)));
    var var_2 = !vec4<bool>(true, false, !(!any(arg_1.a.b.yz)), select(arg_1.b, true, true));
    var var_3 = _wgslsmith_dot_vec4_i32(-(-_wgslsmith_div_vec4_i32(vec4<i32>(-56679i, -27206i, -17528i, u_input.a.x), vec4<i32>(u_input.a.x, 24922i, u_input.a.x, -49952i)) << (vec4<u32>(~1u, ~22586u, ~52804u, ~25104u) % vec4<u32>(32u))), ~abs(~select(vec4<i32>(u_input.a.x, -30357i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), arg_1.a.b.x)));
    var var_4 = -min(u_input.a.x, -26422i);
    return Struct_4(798f, Struct_3(abs(1i), vec3<bool>(var_2.x, !(!var_2.x), any(vec4<bool>(var_2.x, var_2.x, var_2.x, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.a, var_1.x, arg_1.a.a, var_1.x), vec4<f32>(273f, 560f, 647f, 487f))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-662f, -2281f)), !vec3<bool>(var_2.x, arg_1.b, var_2.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(1299f, arg_0.x), _wgslsmith_f_op_f32(min(1020f, var_1.x))) < arg_1.a.a));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec3<u32>) -> f32 {
    var var_0 = arg_1.c.wx;
    var var_1 = ~_wgslsmith_div_u32(arg_2.x, arg_2.x);
    let var_2 = any(!vec2<bool>(any(select(arg_1.d.a.b, vec3<bool>(arg_0, arg_1.d.a.b.x, arg_1.b.b.x), false)), -arg_1.b.a == 1i));
    var_0 = arg_1.c.wx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-198f * -918f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(vec2<f32>(var_0.x, 1000f), global0[_wgslsmith_index_u32(1u, 20u)]).a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), func_2(arg_1.c.xx, Struct_2(arg_1.d.a, false)).a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-805f, -147f)))));
}

fn func_1() -> vec4<bool> {
    global1 = _wgslsmith_div_f32(-1209f, _wgslsmith_f_op_f32(func_4(false, func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, -412f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-629f, 373f) - vec2<f32>(1114f, 122f)), any(vec2<bool>(true, false)))), Struct_2(Struct_1(-266f, vec3<bool>(false, false, false)), select(false, false, false))), _wgslsmith_clamp_vec3_u32(abs(firstTrailingBit(vec3<u32>(45838u, 10665u, 1u))), vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(1u, 1u, 1u))))));
    var var_0 = -max(u_input.a, u_input.a);
    let var_1 = ~(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 13239u), vec3<u32>(11809u, 10796u, 1u), vec3<u32>(53418u, 55279u, 42177u)) >> (vec3<u32>(29086u, 40405u, 4294967295u) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1715f));
    let var_3 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(func_2(vec2<f32>(var_2, -461f), func_2(vec2<f32>(var_2, 1811f), Struct_2(Struct_1(-1959f, vec3<bool>(false, false, false)), true)).d).d, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, 10114i), var_0.x), vec3<f32>(916f, -2277f, _wgslsmith_f_op_f32(659f + var_2)), global0[_wgslsmith_index_u32(var_1.x, 20u)])).zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_f_op_f32(var_2 + 151f)))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-783f, 106f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2, 1351f), vec2<f32>(-366f, var_2)))), global0[_wgslsmith_index_u32(var_1.x, 20u)]).d).d.a;
    return select(select(select(select(select(vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, false), vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x), true), vec4<bool>(true, var_3.b.x, var_3.b.x, false), select(vec4<bool>(true, true, var_3.b.x, true), vec4<bool>(var_3.b.x, var_3.b.x, true, false), vec4<bool>(false, var_3.b.x, var_3.b.x, var_3.b.x))), !select(vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, false), vec4<bool>(var_3.b.x, true, true, var_3.b.x), var_3.b.x), select(var_3.b.x, !var_3.b.x, var_3.b.x)), select(!select(vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, false), vec4<bool>(var_3.b.x, true, false, true), var_3.b.x), select(vec4<bool>(var_3.b.x, true, true, var_3.b.x), !vec4<bool>(false, var_3.b.x, true, var_3.b.x), any(vec2<bool>(true, var_3.b.x))), select(vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, false), !vec4<bool>(false, var_3.b.x, true, false), any(var_3.b))), !select(vec4<bool>(var_3.b.x, false, var_3.b.x, var_3.b.x), vec4<bool>(true, true, true, true), var_3.b.x && false)), select(!(!select(vec4<bool>(false, var_3.b.x, true, var_3.b.x), vec4<bool>(false, var_3.b.x, false, true), var_3.b.x)), vec4<bool>(!(true | var_3.b.x), select(!var_3.b.x, !var_3.b.x, any(vec2<bool>(var_3.b.x, var_3.b.x))), all(!var_3.b.zy), var_3.b.x), true), all(vec4<bool>(any(select(vec4<bool>(false, var_3.b.x, true, var_3.b.x), vec4<bool>(var_3.b.x, true, var_3.b.x, false), var_3.b.x)), !(var_3.b.x && var_3.b.x), true, all(select(var_3.b, var_3.b, var_3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.yxz;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1415f, -713f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)))));
    let var_3 = 4294967295u;
    var var_4 = vec4<u32>(_wgslsmith_mult_u32(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 4294967295u, 0u, 38606u), vec4<u32>(1u, 4294967295u, var_3, 1u)), _wgslsmith_add_u32(24350u, 0u), ~var_3)), 1u), ~(~(~var_3)), min(_wgslsmith_dot_vec2_u32((vec2<u32>(var_3, 0u) | vec2<u32>(19539u, 20700u)) | ~vec2<u32>(0u, 26547u), max(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3, 4294967295u), vec2<u32>(var_3, 98510u)), vec2<u32>(4294967295u, 17163u))), var_3), _wgslsmith_mod_u32(1u, var_3));
    var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, max(1u, 6209u), 1u, _wgslsmith_mult_u32(var_4.x, 1u)), ~(vec4<u32>(0u, 28217u, var_4.x, var_3) & vec4<u32>(var_4.x, 32261u, 22491u, 4294967295u))), ~reverseBits(0u) | ~_wgslsmith_div_u32(var_4.x, var_4.x), abs(var_4.x), _wgslsmith_sub_u32(var_3, 39696u) << (~27687u % 32u)) | ~vec4<u32>(34122u, 10390u, 105721u, 1u);
    global0 = array<Struct_2, 20>();
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(25658u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_4.x, 60752u, var_3) >> (vec4<u32>(22936u, 0u, 0u, 1037u) % vec4<u32>(32u)), ~vec4<u32>(15399u, 0u, 48812u, 23780u))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -279f), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * 648f), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(267f, var_0.yxz), true), 1646i, vec3<f32>(1268f, var_2.x, -174f), Struct_2(Struct_1(var_2.x, vec3<bool>(var_1.x, false, var_0.x)), var_0.x))).x))), _wgslsmith_f_op_f32(trunc(-280f)), _wgslsmith_f_op_f32(exp2(var_2.x))), ~var_4.xyz);
}

