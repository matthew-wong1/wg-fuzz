struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 215f;

var<private> global1: Struct_1 = Struct_1(1i);

var<private> global2: u32;

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(1743f, -1777f), vec2<f32>(1201f, 603f), vec2<f32>(-564f, 608f), vec2<f32>(250f, 506f), vec2<f32>(-1307f, 426f), vec2<f32>(-387f, -177f), vec2<f32>(152f, 1041f));

var<private> global4: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(1i), vec3<bool>(true, true, false), false), Struct_2(Struct_1(1i), vec3<bool>(false, false, false), false), Struct_2(Struct_1(-1i), vec3<bool>(false, true, false), true), Struct_2(Struct_1(2147483647i), vec3<bool>(false, true, false), true), Struct_2(Struct_1(25083i), vec3<bool>(true, true, true), true), Struct_2(Struct_1(14180i), vec3<bool>(false, false, false), true), Struct_2(Struct_1(19206i), vec3<bool>(false, true, true), false), Struct_2(Struct_1(0i), vec3<bool>(true, true, true), true), Struct_2(Struct_1(-41354i), vec3<bool>(false, false, false), true), Struct_2(Struct_1(0i), vec3<bool>(false, false, true), true), Struct_2(Struct_1(0i), vec3<bool>(false, false, false), false), Struct_2(Struct_1(54148i), vec3<bool>(true, true, false), false), Struct_2(Struct_1(40301i), vec3<bool>(false, false, true), false), Struct_2(Struct_1(-61645i), vec3<bool>(false, false, false), true), Struct_2(Struct_1(i32(-2147483648)), vec3<bool>(false, true, false), true), Struct_2(Struct_1(-8543i), vec3<bool>(true, true, true), false), Struct_2(Struct_1(2147483647i), vec3<bool>(true, false, true), true), Struct_2(Struct_1(1i), vec3<bool>(true, true, false), true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> i32 {
    var var_0 = countOneBits(_wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 19495u, 35682u) ^ vec3<u32>(108504u, arg_0, 1u), vec3<u32>(66195u, 1u, 47414u))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 38367u, arg_0), vec3<u32>(arg_0, arg_0, 0u)))));
    var var_1 = arg_1.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(arg_0, 7u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.a - arg_1.a)))));
    let var_3 = global4[_wgslsmith_index_u32(firstTrailingBit(var_0.x | _wgslsmith_sub_u32(_wgslsmith_add_u32(47960u, _wgslsmith_mod_u32(var_0.x, 45926u)), _wgslsmith_mult_u32(0u, 0u & arg_0))), 18u)];
    let var_4 = var_2.x;
    return ~global1.a;
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-169f, 1144f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1078f, -1335f, -266f)))))), vec3<f32>(680f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(477f + 2254f))), -761f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -100f)), _wgslsmith_f_op_f32(1089f * 1f), -1625f), select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, false, true)), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), any(vec3<bool>(false, true, true))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)))));
    let var_1 = var_0.x;
    var var_2 = 51785u <= ~(4294967295u & _wgslsmith_clamp_u32(123047u, ~46718u, 30388u));
    global3 = array<vec2<f32>, 7>();
    let var_3 = true;
    return _wgslsmith_add_i32(global1.a, 39547i);
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, func_2(1u, Struct_4(-2613f, Struct_1(2147483647i), -9150i, vec3<i32>(-20686i, -4976i, 0i)), global1.a)), u_input.a | u_input.a), func_3() << (~1u % 32u)));
    var var_1 = global4[_wgslsmith_index_u32(17045u, 18u)];
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-172f, -1325f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-189f, 1177f)) + 881f), 425f, false)))), _wgslsmith_div_f32(-849f, 1953f));
    global2 = ~(~4294967295u);
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, countOneBits(0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(1u, 1u)))), 18u)];
    return _wgslsmith_f_op_f32(max(-378f, 620f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(56218u, 72834u), vec2<u32>(4294967295u, 4294967295u)), ~(~vec2<u32>(49958u, 0u))));
    global4 = array<Struct_2, 18>();
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1211f, _wgslsmith_f_op_f32(128f * -670f)))))), Struct_1(-u_input.a), u_input.b.x, u_input.b);
    global1 = var_0.b;
    var var_1 = -var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(859f, -1580f, -595f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1443f, 604f) - vec3<f32>(var_0.a, var_0.a, 1634f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a, -1000f, 1872f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -1577f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<f32>(-1002f, -778f, -748f))))), -firstLeadingBit(1i), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(60974i, var_1.x | -3088i, var_1.x)), ~vec3<i32>(2147483647i, -_wgslsmith_dot_vec3_i32(var_0.d, u_input.b), _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, u_input.a), _wgslsmith_mod_i32(var_1.x, 47553i))), countOneBits(~1u));
}

