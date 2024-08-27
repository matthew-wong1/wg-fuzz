struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32> = vec2<f32>(-1160f, -752f);

var<private> global2: Struct_3 = Struct_3(vec4<i32>(-46919i, -1i, 1i, 30616i), vec3<u32>(4294967295u, 1u, 55294u), vec3<bool>(true, false, true));

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 2147483647i), vec3<u32>(0u, 15630u, 38158u), vec3<bool>(true, true, true)), Struct_3(vec4<i32>(-1i, -5720i, -16541i, 1i), vec3<u32>(1u, 33910u, 0u), vec3<bool>(false, false, true)), Struct_3(vec4<i32>(-1i, -26492i, 7628i, -16807i), vec3<u32>(13270u, 83678u, 19988u), vec3<bool>(false, true, false)), Struct_3(vec4<i32>(i32(-2147483648), 0i, -1362i, 29314i), vec3<u32>(0u, 44400u, 43106u), vec3<bool>(false, true, false)), Struct_3(vec4<i32>(2147483647i, -34883i, 12503i, -14012i), vec3<u32>(0u, 4294967295u, 17750u), vec3<bool>(true, false, true)), Struct_3(vec4<i32>(1i, -35658i, -36811i, 2147483647i), vec3<u32>(67295u, 85669u, 1u), vec3<bool>(false, true, true)), Struct_3(vec4<i32>(i32(-2147483648), -42306i, i32(-2147483648), -12039i), vec3<u32>(4294967295u, 25633u, 0u), vec3<bool>(false, true, false)), Struct_3(vec4<i32>(31285i, -22038i, -57337i, 2147483647i), vec3<u32>(35705u, 0u, 0u), vec3<bool>(false, true, true)), Struct_3(vec4<i32>(0i, 2147483647i, i32(-2147483648), 2147483647i), vec3<u32>(4294967295u, 18088u, 4294967295u), vec3<bool>(true, false, false)), Struct_3(vec4<i32>(0i, 18491i, i32(-2147483648), 23221i), vec3<u32>(1198u, 6225u, 12912u), vec3<bool>(true, true, false)), Struct_3(vec4<i32>(-59627i, 2147483647i, 13558i, 0i), vec3<u32>(43137u, 4294967295u, 0u), vec3<bool>(true, false, false)), Struct_3(vec4<i32>(2147483647i, -67533i, 6700i, 0i), vec3<u32>(111120u, 0u, 53397u), vec3<bool>(true, true, false)), Struct_3(vec4<i32>(-45922i, 2147483647i, 43240i, i32(-2147483648)), vec3<u32>(1u, 42405u, 1u), vec3<bool>(false, true, true)), Struct_3(vec4<i32>(51507i, 2147483647i, 53664i, -16200i), vec3<u32>(1u, 4294967295u, 55674u), vec3<bool>(true, false, true)), Struct_3(vec4<i32>(2147483647i, 16607i, -55932i, -67486i), vec3<u32>(30217u, 0u, 100975u), vec3<bool>(false, true, false)), Struct_3(vec4<i32>(0i, 0i, 0i, 2147483647i), vec3<u32>(1u, 36201u, 0u), vec3<bool>(false, true, true)), Struct_3(vec4<i32>(i32(-2147483648), 1i, 37892i, 47343i), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<bool>(false, true, false)), Struct_3(vec4<i32>(2147483647i, -11565i, -4506i, 21340i), vec3<u32>(81159u, 39080u, 27635u), vec3<bool>(false, false, false)), Struct_3(vec4<i32>(-5569i, -31619i, 6848i, i32(-2147483648)), vec3<u32>(126759u, 14288u, 0u), vec3<bool>(false, false, false)), Struct_3(vec4<i32>(1i, 2147483647i, i32(-2147483648), 0i), vec3<u32>(50154u, 44340u, 4294967295u), vec3<bool>(true, true, true)), Struct_3(vec4<i32>(1i, 12220i, 1i, 1i), vec3<u32>(0u, 1u, 0u), vec3<bool>(true, false, true)), Struct_3(vec4<i32>(1i, 29500i, i32(-2147483648), 20361i), vec3<u32>(18558u, 66646u, 0u), vec3<bool>(false, false, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a.x, ~global2.a.x & global2.a.x, 0i, 1i), select(vec4<i32>(global2.a.x, _wgslsmith_sub_i32(i32(-1i) * -7739i, max(2147483647i, 47243i)), 6564i, _wgslsmith_clamp_i32(~global2.a.x, ~global2.a.x, -7372i)), global2.a >> ((~vec4<u32>(66119u, global2.b.x, 36666u, global2.b.x) ^ vec4<u32>(global2.b.x, 12352u, 0u, 4294967295u)) % vec4<u32>(32u)), select(select(vec4<bool>(global2.c.x, false, global2.c.x, global2.c.x), vec4<bool>(true, global2.c.x, global2.c.x, true), select(vec4<bool>(global2.c.x, true, global2.c.x, global2.c.x), vec4<bool>(false, global2.c.x, false, global2.c.x), global2.c.x)), vec4<bool>(any(vec4<bool>(false, false, false, false)), global2.a.x > global2.a.x, any(vec3<bool>(global2.c.x, global2.c.x, true)), true), _wgslsmith_f_op_f32(841f - global1.x) >= _wgslsmith_f_op_f32(round(global1.x)))), select(vec4<i32>(1i, global2.a.x, -global2.a.x, ~global2.a.x) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(-29680i), _wgslsmith_dot_vec3_i32(global2.a.xxy, global2.a.xwz) ^ global2.a.x, _wgslsmith_sub_i32(global2.a.x, global2.a.x & 64975i), global2.a.x), !(!(!vec4<bool>(true, global2.c.x, global2.c.x, true)))));
    global1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * 651f), 1542f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(960f, global1.x))), -347f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-810f)))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_div_f32(global1.x, global1.x)), _wgslsmith_f_op_f32(global1.x - -916f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1077f, 951f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -644f) + vec2<f32>(-760f, global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1453f, 1000f) - vec2<f32>(global1.x, -1000f))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), global1.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 557f)))))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1000f, _wgslsmith_div_f32(-1362f, global1.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -114f, -1632f), vec3<f32>(1401f, global1.x, 607f)))) + vec3<f32>(global1.x, _wgslsmith_f_op_f32(sign(-180f)), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1250f)) * global1.x), abs(global2.b.x));
    var_0 = -abs(min(reverseBits(global2.a), global2.a)) << (~u_input.b % vec4<u32>(32u));
    return global2.a.x;
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> bool {
    let var_0 = arg_0;
    let var_1 = arg_1;
    var var_2 = !select(!vec3<bool>(!global2.c.x, true, any(vec4<bool>(global2.c.x, true, true, true))), select(select(global2.c, vec3<bool>(global2.c.x, true, false), !global2.c), !select(global2.c, vec3<bool>(global2.c.x, global2.c.x, false), false), all(vec3<bool>(global2.c.x, global2.c.x, false))), var_0 <= 4294967295u);
    let var_3 = var_1.x;
    let var_4 = Struct_1(min(firstTrailingBit(max(vec3<i32>(-2147483647i, 28701i, global2.a.x), vec3<i32>(global2.a.x, -41199i, 0i))), ~(global2.a.zwy | vec3<i32>(global2.a.x, 26072i, global2.a.x))) ^ (vec3<i32>(i32(-1i) * -23558i, -19790i, 2147483647i | global2.a.x) | vec3<i32>(global2.a.x, -558i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-_wgslsmith_mult_i32(global2.a.x, global2.a.x), ~global2.a.x, -17614i, (global2.a.x >> (21716u % 32u)) | (global2.a.x | 2147483647i)), ~global2.a), global2.c, _wgslsmith_sub_i32(_wgslsmith_div_i32(countOneBits(func_3()), global2.a.x >> (_wgslsmith_div_u32(arg_0, u_input.a.x) % 32u)), min(-1i, -5458i)));
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = global2.c;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x)))))), -338f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 249f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-837f, global1.x)), global1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -302f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-199f * _wgslsmith_f_op_f32(global1.x + 3103f)), -1832f)));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1300f, global1.x, global1.x, var_1.x), vec4<f32>(global1.x, 1127f, 1010f, -456f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(-1576f)), var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1504f, global1.x, 1196f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -2198f, var_1.x, var_1.x), vec4<f32>(-112f, global1.x, var_1.x, -3108f)))))), var_0.x && func_2(4837u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1046f, -1740f, var_1.x) * vec4<f32>(global1.x, -1000f, var_1.x, 1516f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(548f, -666f, var_1.x, var_1.x))))))));
    var var_2 = var_1.yx;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.wx))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-488f, -874f))), _wgslsmith_f_op_vec2_f32(var_1.xy * vec2<f32>(global1.x, -969f)))), arg_1.ww)) + var_1.wz) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1400f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(step(var_1.x, var_1.x))))))));
    return Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(~arg_0.x, _wgslsmith_div_i32(global2.a.x, 1i), ~(-1i), firstTrailingBit(0i)) ^ -_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, global2.a.x, -32853i, 2147483647i), vec4<i32>(arg_0.x, global2.a.x, 37678i, arg_3.a.x)), abs(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.x, global2.a.x, arg_0.x, 41280i), _wgslsmith_add_vec4_i32(global2.a, arg_3.a)))), abs(global2.b), select(arg_1.yxz, !global2.c, arg_3.c.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -170f)))) + global1.x);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(187f, global1.x, 547f))), _wgslsmith_f_op_vec3_f32(-arg_3.a), true))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + arg_3.a.x))))))), arg_0.b.x);
    let var_2 = -906f;
    global3 = array<Struct_3, 22>();
    var_1 = arg_3;
    return 95408u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.a.x, func_4(func_1(vec2<i32>(reverseBits(29490i), global2.a.x ^ global2.a.x), vec4<bool>(global2.c.x && true, global2.c.x, global2.c.x, false), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(9597u, global2.b.x)), global3[_wgslsmith_index_u32(global2.b.x, 22u)]), Struct_3(select(global2.a, ~global2.a, !global2.c.x), global2.b, global2.c), reverseBits(u_input.b.x) != 0u, Struct_2(vec3<f32>(-672f, _wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_f32(f32(-1f) * -1075f)), _wgslsmith_f_op_f32(step(global1.x, global1.x)), ~max(43807u, 4294967295u))), u_input.a.x);
    global3 = array<Struct_3, 22>();
    var var_1 = -74344i;
    var_0 = max(firstTrailingBit(vec3<u32>(var_0.x, 58701u, 29233u)), vec3<u32>(1u << (global2.b.x % 32u), u_input.b.x, u_input.b.x));
    let var_2 = ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, reverseBits(var_0.x), countOneBits(3521u), min(141148u, u_input.b.x)), vec4<u32>(~4294967295u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(90329u, 18911u, 46126u, global2.b.x), vec4<u32>(global2.b.x, global2.b.x, 10339u, u_input.a.x)), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 1u)))), vec4<u32>(31379u, _wgslsmith_mult_u32(abs(global2.b.x), 18480u), ~_wgslsmith_clamp_u32(5500u, 0u, u_input.b.x), ~4294967295u), 28168u > _wgslsmith_clamp_u32(~56633u, var_0.x << (global2.b.x % 32u), func_4(Struct_3(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, -2147483647i), vec3<u32>(36143u, 1u, 0u), vec3<bool>(global2.c.x, true, global2.c.x)), Struct_3(vec4<i32>(global2.a.x, 3270i, -1i, global2.a.x), vec3<u32>(global2.b.x, var_0.x, global2.b.x), global2.c), true, Struct_2(vec3<f32>(global1.x, -888f, -773f), -477f, var_0.x))));
    var_1 = -13007i << (max(~57304u, var_2.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(214f, countOneBits(var_2.x), ~(~0u), _wgslsmith_mult_vec3_u32((var_2.wxz & (vec3<u32>(0u, u_input.b.x, 4294967295u) | var_2.xyx)) ^ min(reverseBits(global2.b), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 39185u, var_2.x), vec3<u32>(u_input.a.x, 3213u, 5033u))), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.b.x, 1u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), ~vec3<u32>(u_input.a.x, 1214u, u_input.b.x))));
}

