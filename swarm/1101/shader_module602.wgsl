struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, true, vec4<i32>(1i, 0i, 46552i, 20941i), Struct_1(vec3<i32>(1i, 15306i, 14439i)));

var<private> global1: array<f32, 26> = array<f32, 26>(827f, 555f, -292f, -1690f, 1407f, -394f, -374f, -263f, 829f, 2553f, -1450f, 1249f, -1020f, -1000f, 1249f, 1043f, -1258f, 521f, 2057f, 678f, -107f, 1897f, 2282f, -892f, 1016f, 408f);

var<private> global2: vec3<f32> = vec3<f32>(263f, -808f, 617f);

var<private> global3: array<vec2<bool>, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> vec4<bool> {
    global3 = array<vec2<bool>, 12>();
    var var_0 = global0.d;
    let var_1 = u_input.d.ww;
    var var_2 = arg_0;
    global0 = arg_0;
    return select(select(!vec4<bool>(true, 0i < arg_0.c.x, any(vec3<bool>(global0.b, var_2.b, global0.b)), any(vec3<bool>(arg_0.b, false, true))), vec4<bool>(false, global0.b || true, var_2.b, false), min(_wgslsmith_mult_u32(var_2.a, global0.a), 22184u) >= var_2.a), !(!vec4<bool>(false, true, all(vec4<bool>(global0.b, global0.b, true, var_2.b)), true)), vec4<bool>(arg_0.b, !var_2.b, arg_0.b, min(_wgslsmith_mod_u32(0u, 50967u), 9523u) >= (max(var_2.a, 22849u) | _wgslsmith_clamp_u32(var_2.a, 1u, global0.a))));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1786f, global2.x, 234f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_div_f32(-1453f, global2.x), -1000f)))));
    let var_0 = Struct_2(~(~_wgslsmith_mult_u32(1u, ~global0.a)), global0.b, select(_wgslsmith_clamp_vec4_i32(u_input.d | _wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.x, global0.c.x, u_input.c, -2147483647i), global0.c), global0.c, vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, global0.d.a.x), firstLeadingBit(u_input.a), u_input.d.x >> (85666u % 32u), global0.c.x)), global0.c, func_3(Struct_2(abs(arg_1), global0.b == global0.b, min(vec4<i32>(u_input.b, u_input.b, 1i, 4628i), global0.c), global0.d), ~min(global0.d.a.x, global0.d.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1498f, global2.x, -119f, -1154f), vec4<f32>(166f, -851f, global2.x, 111f), 0u == arg_1)))), Struct_1(~countOneBits(vec3<i32>(-40972i, u_input.b, -2147483647i) ^ vec3<i32>(u_input.c, -1i, 10241i))));
    var var_1 = global0.d;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1835f, -711f, -1000f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-623f, global1[_wgslsmith_index_u32(global0.a, 26u)], 1291f)))), vec3<f32>(_wgslsmith_f_op_f32(720f * _wgslsmith_div_f32(361f, 570f)), _wgslsmith_f_op_f32(-988f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2662u, 26u)] * 1000f)), -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_div_f32(-691f, global1[_wgslsmith_index_u32(min(arg_1, var_0.a), 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f - global2.x)))));
    var var_2 = func_3(var_0, -_wgslsmith_mod_i32(17412i, countOneBits(-16766i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1049f * 1118f) + global2.x) + global2.x), global1[_wgslsmith_index_u32(~countOneBits(firstTrailingBit(1u)), 26u)], _wgslsmith_f_op_f32(global2.x - _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, global1[_wgslsmith_index_u32(arg_0, 26u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 4294967295u), 26u)])), -1186f)).x;
    return Struct_2(0u, !((0i == global0.c.x) | select(var_0.b, u_input.a == 62346i, select(var_0.b, false, false))), u_input.d, Struct_1(-vec3<i32>(-54248i, _wgslsmith_sub_i32(40319i, var_1.a.x), min(25111i, var_1.a.x))));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    global1 = array<f32, 26>();
    global3 = array<vec2<bool>, 12>();
    let var_0 = func_2(~(~1u), ~global0.a);
    let var_1 = Struct_2(global0.a, true, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(u_input.d | vec4<i32>(var_0.d.a.x, 2147483647i, arg_0, -2147483647i)), vec4<i32>(global0.c.x, _wgslsmith_sub_i32(firstTrailingBit(0i), firstTrailingBit(2147483647i)), abs(~global0.d.a.x), 0i)), Struct_1(min(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(global0.d.a, vec3<i32>(-6987i, arg_0, global0.c.x)), vec3<i32>(12324i, var_0.d.a.x, arg_0)), vec3<i32>(_wgslsmith_add_i32(global0.d.a.x, 0i), var_0.d.a.x, _wgslsmith_div_i32(u_input.b, 0i)))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1[_wgslsmith_index_u32(var_0.a, 26u)], -201f) * vec3<f32>(global1[_wgslsmith_index_u32(global0.a, 26u)], 1791f, global2.x))) * vec3<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(-global2.x), global1[_wgslsmith_index_u32(~var_0.a, 26u)])) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1364f, global1[_wgslsmith_index_u32(1u, 26u)], -1872f))))));
    return Struct_1(vec3<i32>(_wgslsmith_div_i32(-1i, var_0.c.x), select(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.d, u_input.d), -u_input.d), _wgslsmith_mult_i32(~u_input.c, -2147483647i), true == (arg_1 || global0.b)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, -19132i), vec2<i32>(var_0.c.x, global0.c.x)), u_input.a), _wgslsmith_mult_i32(var_0.c.x & 40780i, -var_0.c.x))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<vec2<bool>, 12>();
    var var_0 = global0.a << (~arg_2.a % 32u);
    var var_1 = select(!vec2<bool>(any(!vec3<bool>(true, global0.b, arg_2.b)), arg_2.b), vec2<bool>(func_2(firstTrailingBit(~78580u), 14789u).b, global2.x == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -846f), _wgslsmith_f_op_f32(round(2074f))))), !(!vec2<bool>(!global0.b, func_3(Struct_2(global0.a, false, arg_2.c, Struct_1(global0.d.a)), global0.c.x, vec4<f32>(910f, 689f, global2.x, -128f)).x)));
    let var_2 = vec4<f32>(-1162f, global2.x, 960f, -761f);
    var_0 = ~_wgslsmith_mult_u32(reverseBits(arg_2.a >> (21531u % 32u)), ~(~0u)) & firstTrailingBit(42464u);
    return Struct_1(abs(vec3<i32>((u_input.a & arg_3.x) ^ firstTrailingBit(1i), u_input.d.x, arg_2.c.x)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.x)), 1424f);
    let var_1 = arg_1;
    global2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_0.x, 1009f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 352f, 796f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1000f, 414f) * vec3<f32>(var_0, arg_0.x, global1[_wgslsmith_index_u32(global0.a, 26u)]))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global0.a, 26u)], arg_0.x, var_0) - vec3<f32>(936f, arg_0.x, -796f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, arg_0.x, -302f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-577f, -1468f, -1535f)))))));
    var var_2 = func_2(~global0.a, 7500u);
    return _wgslsmith_mod_vec2_i32(var_2.c.xz, vec2<i32>(-24530i, countOneBits(max(reverseBits(-6860i), func_1(global0.c.x, global0.b).a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_f_op_vec2_f32(max(global2.yx, vec2<f32>(1000f, _wgslsmith_div_f32(-168f, 708f)))), func_4(func_1(select(u_input.a, global0.d.a.x, global0.b), true), 320u, func_2(_wgslsmith_mult_u32(global0.a, 48839u), 4294967295u), _wgslsmith_clamp_vec3_i32(global0.d.a, global0.c.yzz, vec3<i32>(global0.c.x, -2147483647i, u_input.d.x)))), ~(~min(_wgslsmith_sub_vec4_i32(global0.c, vec4<i32>(global0.d.a.x, -233i, 0i, u_input.b)), -vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a))), ~(~(~vec2<u32>(global0.a, global0.a))));
}

