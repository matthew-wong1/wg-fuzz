struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(1u, 4294967295u, 24464u, 1u), vec4<u32>(70998u, 115446u, 0u, 4294967295u), vec4<u32>(24203u, 0u, 102525u, 14664u), vec4<u32>(34u, 4294967295u, 1u, 15914u), vec4<u32>(0u, 22895u, 43074u, 0u), vec4<u32>(73647u, 1u, 0u, 0u), vec4<u32>(60949u, 14033u, 17025u, 4294967295u), vec4<u32>(1u, 38551u, 4294967295u, 84200u), vec4<u32>(37925u, 71590u, 25685u, 9210u), vec4<u32>(37167u, 93300u, 0u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(54942u, 50333u, 30841u, 5436u), vec4<u32>(1u, 4305u, 0u, 9630u), vec4<u32>(8490u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 206u), vec4<u32>(0u, 17653u, 42478u, 1u), vec4<u32>(1273u, 19676u, 22079u, 0u), vec4<u32>(4294967295u, 4294967295u, 4689u, 71621u), vec4<u32>(0u, 4294967295u, 0u, 35993u), vec4<u32>(18661u, 4294967295u, 1789u, 10016u), vec4<u32>(4294967295u, 26763u, 85050u, 0u), vec4<u32>(4294967295u, 0u, 41344u, 1u), vec4<u32>(23768u, 0u, 0u, 6743u), vec4<u32>(21152u, 4294967295u, 14807u, 4294967295u), vec4<u32>(1u, 0u, 1u, 34990u), vec4<u32>(0u, 29552u, 4294967295u, 4294967295u), vec4<u32>(0u, 4929u, 15117u, 56242u), vec4<u32>(20091u, 51120u, 1u, 0u), vec4<u32>(1u, 132508u, 61306u, 1u), vec4<u32>(26519u, 78631u, 4294967295u, 90768u));

var<private> global2: u32;

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec3<bool>(false, false, false), -1238f, 4294967295u, 1000f, vec4<f32>(-858f, 135f, -1525f, 932f)), Struct_4(vec3<bool>(true, false, true), -236f, 14417u, -818f, vec4<f32>(-388f, 260f, -690f, 870f)), Struct_4(vec3<bool>(true, true, true), 1000f, 14557u, -546f, vec4<f32>(-936f, -1469f, 402f, -708f)), Struct_4(vec3<bool>(false, true, true), -1058f, 0u, 811f, vec4<f32>(1000f, 930f, 1046f, 696f)), Struct_4(vec3<bool>(false, false, true), 612f, 12617u, -460f, vec4<f32>(1000f, -160f, 1000f, 872f)), Struct_4(vec3<bool>(true, false, false), -441f, 128836u, -1242f, vec4<f32>(170f, -727f, 581f, -820f)), Struct_4(vec3<bool>(true, true, false), 1000f, 1u, -1000f, vec4<f32>(-1875f, -1228f, -1336f, -216f)), Struct_4(vec3<bool>(false, true, false), -641f, 0u, -193f, vec4<f32>(1000f, 1468f, -1429f, -357f)), Struct_4(vec3<bool>(false, true, false), 1535f, 4294967295u, -557f, vec4<f32>(910f, 377f, -479f, 340f)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec4<u32>, 30>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(869f, -584f, 536f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-276f, arg_1.b, -562f), vec3<f32>(293f, -422f, -1240f)))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-223f, _wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_div_f32(-283f, 1181f))))), 38533u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), false))) + vec4<f32>(_wgslsmith_f_op_f32(abs(1524f)), -922f, -1037f, _wgslsmith_f_op_f32(784f + -973f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b, -972f, -231f, 1014f), vec4<f32>(arg_1.b, arg_1.b, 343f, arg_1.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1168f, -1202f, arg_1.b, 152f)))))));
    var var_1 = 1667u;
    let var_2 = ~1u;
    let var_3 = min(~(~var_2), firstLeadingBit(arg_0.a.x));
    return global0.c;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1236f, -1260f, 330f) * vec3<f32>(504f, 929f, arg_2)))))), ~firstTrailingBit(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(global0.a, 30u)] & vec4<u32>(0u, 4294967295u, 75312u, global0.b.a.x), global1[_wgslsmith_index_u32(global0.c.b, 30u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(round(-3018f)), _wgslsmith_f_op_f32(select(arg_2, 435f, arg_0.x)), 479f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 507f, arg_2, arg_2) + vec4<f32>(arg_2, arg_2, arg_2, 158f)), vec4<f32>(arg_2, 904f, 290f, 2018f), !arg_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(560f, arg_2, 1479f, arg_2)))))));
    var var_1 = false;
    global0 = Struct_2(6936u, Struct_1(abs(global0.c.a), global0.a), global0.b);
    let var_2 = Struct_4(vec3<bool>(all(select(!vec2<bool>(arg_0.x, arg_0.x), arg_0, true)), any(vec4<bool>(any(vec4<bool>(false, false, arg_0.x, false)), arg_2 <= arg_2, true, arg_1.a.x >= 43084u)), any(vec2<bool>(true, false && arg_0.x))), 741f, 95573u, arg_2, var_0.c);
    let var_3 = var_2.c;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.a, ~vec2<u32>(u_input.c, 38089u)), vec2<u32>(1u, ~firstTrailingBit(86943u))), 1u);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(~1i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-u_input.d, vec4<i32>(1i, -1i, u_input.e, -48664i)), countOneBits(0i))), 2147483647i, firstLeadingBit(-2797i), u_input.d.x);
    global2 = arg_1.x;
    let var_1 = firstLeadingBit(~vec2<u32>(4142u, func_3(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), func_2(Struct_1(vec2<u32>(global0.b.b, arg_1.x), 40456u), Struct_3(0i, 1000f)), _wgslsmith_div_f32(arg_0.x, -987f), _wgslsmith_sub_vec2_i32(u_input.b, var_0.yw))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1f);
    var var_3 = false;
    return arg_0.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1139f, 1000f, 880f))) * vec3<f32>(-426f, 2030f, 266f))), ~global1[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(59494u, u_input.c, u_input.c), u_input.c), 30u)])), vec2<f32>(1f, 733f), (~(global0.a & u_input.c) ^ u_input.c) >= select(u_input.c, ~(~global0.c.b), true)));
    global2 = 1u;
    let var_1 = func_2(global0.b, Struct_3(~(-u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))));
    global1 = array<vec4<u32>, 30>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))));
    var var_2 = Struct_3(~1i, -1608f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(444f + var_0.x) - _wgslsmith_f_op_f32(-275f * -826f)) + _wgslsmith_f_op_f32(-var_0.x)))), u_input.d.yx, ~select(vec4<u32>(global0.b.b, abs(4294967295u), 1u, 1u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(106702u), ~var_1.a.x, abs(var_1.a.x)), 30u)], select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-807f, 1259f) - vec2<f32>(var_2.b, -273f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -402f) - vec2<f32>(-1000f, var_2.b)))))))));
}

