struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32;

var<private> global2: vec2<bool>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = abs(abs(vec4<u32>(~u_input.b.x, 43303u, ~(~u_input.b.x), u_input.b.x)));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(0u << (abs(var_0.x) % 32u)), 39897u, _wgslsmith_mult_u32(~(~58761u), var_0.x), 0u), firstTrailingBit(~reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, var_0.x, var_0.x))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1529f)))) - _wgslsmith_f_op_f32(f32(-1f) * -312f)), _wgslsmith_f_op_f32(step(1160f, _wgslsmith_div_f32(1209f, _wgslsmith_f_op_f32(544f - -1000f)))), _wgslsmith_f_op_f32(355f + -391f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1148f, -234f, 1042f, 1509f), vec4<f32>(995f, -156f, -1518f, 453f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(914f, 807f, -485f, 195f), vec4<f32>(-845f, -741f, -1471f, 450f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -709f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(513f)), 959f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(-1211f))), 1883f)));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, 1000f, 1284f, 751f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1455f, -760f, -779f, -459f) - vec4<f32>(719f, 1315f, -1320f, 279f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(func_3())));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2462f, var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x))))));
    var var_2 = vec3<u32>(firstTrailingBit(~u_input.b.x), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), u_input.b.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 38914u, u_input.b.x), abs(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 21395u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))))), ~select(1u, u_input.b.x, !(global0.x <= -1i)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.x)))), 291f))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2969f)) - _wgslsmith_f_op_f32(f32(-1f) * -698f)), vec4<u32>(abs(reverseBits(0u)) << (1u % 32u), _wgslsmith_mod_u32(u_input.b.x, select(~var_2.x, min(1u, var_2.x), global2.x)), u_input.b.x, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 2599f, 229f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.x, var_0.x, var_0.x) * vec4<f32>(var_1.x, -635f, var_0.x, -2100f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -151f, -483f, 380f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -278f, 558f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_1.x, 1501f)))))), Struct_1(!(!(!global2.x)), var_2.x, ~(-10320i), u_input.a < -2147483647i), _wgslsmith_add_u32(var_2.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 94853u, var_2.x)), (vec3<u32>(var_2.x, 4294967295u, var_2.x) >> (u_input.b % vec3<u32>(32u))) ^ abs(vec3<u32>(1u, 85141u, u_input.b.x)))));
    return abs(abs(-((i32(-1i) * -1i) ^ _wgslsmith_dot_vec3_i32(global0.yyw, global0.xxx))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global2 = vec2<bool>(true, true);
    var var_0 = u_input.b.x;
    var var_1 = vec4<i32>(arg_1.c, reverseBits(~(~global0.x)), countOneBits(func_2(vec2<i32>(reverseBits(global0.x), global0.x))), -5538i);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(950f)))), vec4<u32>(6428u, _wgslsmith_add_u32(u_input.b.x, abs(4294967295u >> (0u % 32u))), 55531u, 0u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-230f, 872f, -647f, 1343f), vec4<f32>(585f, -1640f, -117f, -1185f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-328f, 997f, 745f, -1462f) - vec4<f32>(-2410f, 138f, -657f, -2102f)), true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, -902f, -134f, -1194f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1754f, 102f, -1707f, 219f) * vec4<f32>(1769f, 523f, -1000f, 140f))))))), Struct_1(true, ~u_input.b.x, -(~reverseBits(42469i)), all(global3.wz)), 1u);
    let var_3 = arg_1.b;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(global3.yz, select(vec2<bool>(global3.x, global2.x), global3.wz, false), all(vec4<bool>(global3.x, global3.x, false, false))), select(vec2<bool>(global3.x, true), !vec2<bool>(false, global3.x), func_1(vec4<i32>(-17873i, u_input.a, -40867i, u_input.a), Struct_1(global3.x, u_input.b.x, -64669i, false))), any(global3.wxx) || func_1(vec4<i32>(-29903i, global0.x, 1i, global0.x), Struct_1(global2.x, 20293u, global0.x, global3.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1237f, _wgslsmith_f_op_f32(floor(-1000f)), 1681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1463f, -1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, _wgslsmith_f_op_f32(-1084f - 803f), 1f, _wgslsmith_f_op_f32(floor(902f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(936f, _wgslsmith_f_op_f32(step(-920f, _wgslsmith_f_op_f32(999f * 1000f))), _wgslsmith_f_op_f32(1091f - _wgslsmith_f_op_f32(sign(787f))), 493f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1404f, 437f, -1120f, -1247f), vec4<f32>(1000f, 896f, -1336f, 1003f)) * vec4<f32>(-314f, 123f, 144f, 304f)))))));
    var var_2 = vec2<bool>(true, true);
    let var_3 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) + -858f))));
    global0 = vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, ~(-2147483647i), u_input.a | u_input.a, firstLeadingBit(u_input.a)), ~(~vec4<i32>(35077i, global0.x, -2147483647i, 10149i))), _wgslsmith_div_i32(i32(-1i) * -56958i, ~countOneBits(u_input.a)), global0.x, global0.x);
    var var_4 = Struct_1(true, _wgslsmith_mult_u32(firstTrailingBit(abs(abs(u_input.b.x))), firstLeadingBit(16775u)), ~abs(1i), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~global0.x)), -firstTrailingBit(vec3<i32>(var_4.c, 57957i, _wgslsmith_mult_i32(2366i, 1i))));
}

