struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<bool>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(1i, -1i, 58423i), vec4<u32>(45352u, 1u, 0u, 4294967295u));

var<private> global1: array<i32, 1>;

var<private> global2: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 3484u), vec2<u32>(4294967295u, 40632u), vec2<u32>(1u, 63137u), vec2<u32>(0u, 20334u), vec2<u32>(68475u, 39809u), vec2<u32>(0u, 36064u), vec2<u32>(0u, 42993u), vec2<u32>(19198u, 0u), vec2<u32>(13524u, 76318u), vec2<u32>(13325u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 7924u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 34302u), vec2<u32>(19516u, 1u), vec2<u32>(47201u, 99392u), vec2<u32>(53543u, 39423u), vec2<u32>(13107u, 21046u), vec2<u32>(1u, 1u), vec2<u32>(33491u, 57303u), vec2<u32>(31064u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 29781u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(44752u, 21497u), vec2<u32>(0u, 4294967295u), vec2<u32>(61657u, 1u), vec2<u32>(69670u, 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    var var_0 = min(abs(~_wgslsmith_sub_vec4_i32(max(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(-4194i, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.a, -2147483647i)), vec4<i32>(1i, global0.a.x, 0i, u_input.c) >> (global0.b % vec4<u32>(32u)))), -(firstLeadingBit(vec4<i32>(global0.a.x, global1[_wgslsmith_index_u32(17997u, 1u)], 2147483647i, 32913i)) << (~vec4<u32>(4294967295u, 37835u, 4294967295u, global0.b.x) % vec4<u32>(32u))) & firstTrailingBit(~(-vec4<i32>(global1[_wgslsmith_index_u32(24856u, 1u)], 34115i, global0.a.x, 2147483647i))));
    global2 = array<vec2<u32>, 30>();
    var var_1 = false;
    var var_2 = Struct_1(global0.a, global0.b);
    let var_3 = vec3<i32>(var_0.x, -global1[_wgslsmith_index_u32(1u, 1u)], global0.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(135f)), _wgslsmith_f_op_f32(floor(1254f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -737f)))) + 1f);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = !select(select(!vec4<bool>(arg_0, true, false, arg_0), !(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(true, false, arg_0, arg_0 || arg_0)), vec4<bool>(arg_0 && any(vec4<bool>(true, false, arg_0, arg_0)), true & !arg_0, any(vec3<bool>(true, arg_0, arg_0)), any(!vec4<bool>(true, arg_0, false, arg_0))), select(false, true, select(2361u >= u_input.d.x, true, true)));
    let var_1 = !var_0.yzx;
    global2 = array<vec2<u32>, 30>();
    let var_2 = Struct_5(Struct_3(Struct_2(Struct_1(global0.a, ~global0.b)), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -354f)), vec4<bool>(any(select(var_1.yx, vec2<bool>(var_0.x, arg_0), var_0.xw)), 4294967295u < max(u_input.d.x, 1u), all(!vec4<bool>(var_0.x, arg_0, false, arg_0)), var_1.x && all(var_1.zx)), all(!select(var_0.zyz, vec3<bool>(var_0.x, var_0.x, false), arg_0)), Struct_2(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(global0.b.x, 1u)], 2147483647i, -28945i), ~vec4<u32>(17882u, 29306u, global0.b.x, global0.b.x)))), ~u_input.d.x, vec3<u32>(_wgslsmith_mod_u32(global0.b.x, global0.b.x), u_input.d.x, u_input.d.x));
    var var_3 = var_2.a.b;
    return var_2.a;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>) -> Struct_4 {
    var var_0 = vec2<f32>(arg_0.a.b.x, -262f);
    var_0 = arg_1;
    var var_1 = vec2<u32>(62901u, global0.b.x) ^ vec2<u32>(min(_wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.d.x, u_input.d.x)), global0.b.x), _wgslsmith_mult_u32(arg_0.c.x, ~firstLeadingBit(0u)));
    var var_2 = arg_0.a.e.a;
    global1 = array<i32, 1>();
    return Struct_4(vec3<i32>(-59359i, ~1i, -23173i), Struct_2(func_2(true).a.a));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec4<f32>(func_2(false).b.x, 862f, _wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(2030f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -246f)))));
    var var_1 = _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1f, 1082f, _wgslsmith_f_op_f32(round(-1054f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-200f))))), _wgslsmith_f_op_f32(func_3())));
    var var_3 = -3969i;
    global1 = array<i32, 1>();
    return arg_1.a;
}

fn func_1(arg_0: vec2<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2636f, 2109f) * vec2<f32>(-1122f, 500f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -167f), -203f)))));
    let var_1 = true;
    global0 = func_5(func_4(Struct_5(func_2(var_1 == true), 22457u >> (u_input.d.x % 32u), ~select(vec3<u32>(arg_0.x, 1u, global0.b.x), global0.b.wzx, vec3<bool>(true, var_1, true))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1607f), _wgslsmith_f_op_f32(var_0.x + -216f))), Struct_2(func_2(func_2(!var_1).d).e.a));
    global1 = array<i32, 1>();
    let var_2 = Struct_2(func_2(all(!select(vec2<bool>(true, true), vec2<bool>(false, var_1), true))).a.a);
    return _wgslsmith_mod_vec4_u32(reverseBits(global0.b), var_2.a.b);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = func_4(Struct_5(func_2(select(false, false, true)), global0.b.x, ~(~(~vec3<u32>(u_input.d.x, 4294967295u, arg_1.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(2002f, 846f), vec2<f32>(623f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, 1000f)), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, 327f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(993f, -592f)))))).b;
    global0 = func_5(func_4(Struct_5(func_2(all(vec3<bool>(true, false, true))), ~(~arg_0), vec3<u32>(_wgslsmith_div_u32(global0.b.x, 3690u), ~arg_1.b.x, arg_0 << (u_input.d.x % 32u))), vec2<f32>(-1444f, 1272f)), Struct_2(Struct_1(vec3<i32>(global0.a.x, -48818i, global0.a.x), _wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.d.x, arg_1.b.x, arg_1.b.x, var_0.a.b.x), arg_1.b), ~vec4<u32>(arg_1.b.x, u_input.d.x, 1u, global0.b.x)))));
    var var_1 = func_2(any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))) & true);
    let var_2 = var_0.a.b.x;
    global1 = array<i32, 1>();
    return _wgslsmith_add_u32(reverseBits(abs(~16220u)) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20959u) ^ global2[_wgslsmith_index_u32(0u, 30u)], vec2<u32>(17821u, var_1.a.a.b.x)), 45873u, u_input.d.x) % 32u), select(~_wgslsmith_sub_u32(1u, ~var_0.a.b.x), _wgslsmith_sub_u32(func_2(!var_1.c.x).a.a.b.x, ~var_0.a.b.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(reverseBits(global0.a), vec4<u32>(_wgslsmith_dot_vec3_u32(~global0.b.zyz, global0.b.xwx), func_6(_wgslsmith_dot_vec4_u32(global0.b, global0.b), Struct_1(global0.a & vec3<i32>(u_input.c, 2147483647i, -26214i), func_1(global2[_wgslsmith_index_u32(4294967295u, 30u)]))), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.d.x), 1u, _wgslsmith_div_u32(u_input.d.x, global0.b.x)), global0.b.zzy)));
    global2 = array<vec2<u32>, 30>();
    global1 = array<i32, 1>();
    let var_0 = _wgslsmith_mult_i32(func_4(Struct_5(Struct_3(func_4(Struct_5(Struct_3(Struct_2(Struct_1(global0.a, vec4<u32>(global0.b.x, 0u, u_input.d.x, global0.b.x))), vec2<f32>(-1323f, 588f), vec4<bool>(true, true, true, false), false, Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<u32>(1u, 1u, u_input.d.x, global0.b.x)))), u_input.d.x, global0.b.wyw), vec2<f32>(-1049f, -258f)).b, vec2<f32>(516f, -998f), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, false, true)), func_4(Struct_5(Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.e, u_input.b, global0.a.x), global0.b)), vec2<f32>(-2365f, -966f), vec4<bool>(true, false, true, false), false, Struct_2(Struct_1(global0.a, global0.b))), 63356u, vec3<u32>(u_input.d.x, 16718u, 65842u)), vec2<f32>(-797f, 267f)).b), u_input.d.x, vec3<u32>(u_input.d.x | u_input.d.x, u_input.d.x, 0u)), vec2<f32>(1025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1109f * 184f)))).b.a.a.x, 4817i);
    let var_1 = Struct_4(-global0.a, Struct_2(func_5(func_4(Struct_5(Struct_3(Struct_2(Struct_1(global0.a, vec4<u32>(13464u, global0.b.x, 1u, 22392u))), vec2<f32>(965f, 224f), vec4<bool>(true, false, true, true), true, Struct_2(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], var_0, global0.a.x), vec4<u32>(global0.b.x, global0.b.x, u_input.d.x, 0u)))), global0.b.x, vec3<u32>(u_input.d.x, 4294967295u, global0.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(380f, -677f))), func_4(Struct_5(Struct_3(Struct_2(Struct_1(global0.a, vec4<u32>(10219u, 1u, u_input.d.x, 4078u))), vec2<f32>(1562f, 1000f), vec4<bool>(true, false, true, false), false, Struct_2(Struct_1(vec3<i32>(var_0, u_input.c, 3703i), global0.b))), 68047u, vec3<u32>(11564u, global0.b.x, 100725u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(126f, 1003f))).b)));
    global2 = array<vec2<u32>, 30>();
    var var_2 = var_1;
    var var_3 = vec3<u32>(_wgslsmith_mod_u32(1u >> (u_input.d.x % 32u), func_5(func_4(Struct_5(Struct_3(var_2.b, vec2<f32>(827f, -264f), vec4<bool>(true, false, false, false), true, Struct_2(Struct_1(var_2.a, vec4<u32>(u_input.d.x, 2421u, var_1.b.a.b.x, global0.b.x)))), global0.b.x, var_2.b.a.b.xyx), vec2<f32>(547f, 1066f)), func_2(true).a).b.x), ~func_4(Struct_5(func_2(false), global0.b.x, var_2.b.a.b.xzx), vec2<f32>(-716f, _wgslsmith_div_f32(750f, 340f))).b.a.b.x, global0.b.x);
    let var_4 = Struct_5(Struct_3(Struct_2(Struct_1(~var_1.b.a.a, ~var_1.b.a.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-183f, -483f), vec2<f32>(692f, 556f))), vec2<f32>(-133f, -1493f)))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select((var_1.a.x != global0.a.x) || false, true, func_2(true).d), Struct_2(func_4(Struct_5(Struct_3(Struct_2(var_2.b.a), vec2<f32>(-1142f, 526f), vec4<bool>(true, false, false, false), true, Struct_2(var_2.b.a)), 32057u, vec3<u32>(u_input.d.x, 0u, var_2.b.a.b.x)), vec2<f32>(-869f, 1343f)).b.a)), _wgslsmith_dot_vec3_u32(firstLeadingBit(~(~vec3<u32>(var_2.b.a.b.x, u_input.d.x, global0.b.x))), ~(~(var_1.b.a.b.wyw << (vec3<u32>(global0.b.x, global0.b.x, 1u) % vec3<u32>(32u))))), _wgslsmith_div_vec3_u32(~(~vec3<u32>(0u, var_3.x, 63666u)), var_2.b.a.b.wwx));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a.b.yzx >> ((_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.b.x, var_1.b.a.b.x, 1u), vec3<u32>(u_input.d.x, var_1.b.a.b.x, 0u)), var_1.b.a.b.zzz, ~vec3<u32>(var_3.x, 4294967295u, var_4.c.x)) & var_1.b.a.b.yxy) % vec3<u32>(32u)));
}

