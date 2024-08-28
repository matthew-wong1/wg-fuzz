struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_3 = Struct_3(true, i32(-2147483648), vec2<u32>(0u, 21327u));

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<f32>(-447f, -1014f), false, Struct_1(vec4<f32>(730f, -2135f, -493f, -1478f))), Struct_2(vec2<f32>(786f, -718f), false, Struct_1(vec4<f32>(-404f, -416f, -1000f, 181f))), Struct_2(vec2<f32>(-1300f, -561f), false, Struct_1(vec4<f32>(-2307f, 2192f, 255f, -481f))), Struct_2(vec2<f32>(1457f, -625f), true, Struct_1(vec4<f32>(132f, 624f, 1327f, -2218f))), Struct_2(vec2<f32>(460f, 1453f), true, Struct_1(vec4<f32>(1440f, 1288f, -519f, 1292f))), Struct_2(vec2<f32>(-1526f, 798f), false, Struct_1(vec4<f32>(895f, -1147f, -1298f, -947f))), Struct_2(vec2<f32>(1279f, 1000f), false, Struct_1(vec4<f32>(-751f, -549f, -1000f, -621f))), Struct_2(vec2<f32>(1192f, 2148f), false, Struct_1(vec4<f32>(860f, 578f, -1642f, -1000f))), Struct_2(vec2<f32>(-1604f, -396f), true, Struct_1(vec4<f32>(1405f, 1319f, 159f, 268f))), Struct_2(vec2<f32>(813f, 1579f), true, Struct_1(vec4<f32>(244f, 1221f, -184f, -556f))), Struct_2(vec2<f32>(-998f, -472f), true, Struct_1(vec4<f32>(2598f, -596f, -270f, -420f))), Struct_2(vec2<f32>(188f, 764f), true, Struct_1(vec4<f32>(-1474f, 1351f, 143f, -1400f))), Struct_2(vec2<f32>(369f, 184f), true, Struct_1(vec4<f32>(1031f, 1373f, -501f, -286f))), Struct_2(vec2<f32>(2407f, 1285f), false, Struct_1(vec4<f32>(-1247f, -1000f, 571f, 1390f))), Struct_2(vec2<f32>(493f, -1851f), false, Struct_1(vec4<f32>(1456f, -649f, -327f, 1250f))), Struct_2(vec2<f32>(-1609f, -1000f), false, Struct_1(vec4<f32>(1000f, -983f, 1771f, 325f))), Struct_2(vec2<f32>(-414f, 1367f), true, Struct_1(vec4<f32>(1167f, 1000f, 1532f, 351f))), Struct_2(vec2<f32>(-316f, -237f), false, Struct_1(vec4<f32>(446f, 124f, -1538f, -904f))), Struct_2(vec2<f32>(-886f, 140f), true, Struct_1(vec4<f32>(-966f, -904f, -262f, 516f))), Struct_2(vec2<f32>(-266f, 508f), true, Struct_1(vec4<f32>(-460f, 1308f, -136f, -1079f))), Struct_2(vec2<f32>(448f, 476f), true, Struct_1(vec4<f32>(2333f, 2632f, -2459f, -489f))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_sub_i32(~(~(i32(-1i) * -1i)), select(max(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, global1.b), vec3<i32>(-69204i, 0i, u_input.b))), 1i), ~firstLeadingBit(abs(0i)), global1.a));
    global1 = Struct_3(all(select(vec3<bool>(true, global1.a, global1.a), select(vec3<bool>(true, global1.a, arg_1), !vec3<bool>(false, global1.a, arg_1), !vec3<bool>(true, arg_1, true)), any(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, global1.a), true)))), _wgslsmith_mult_i32(var_0, -global1.b), global1.c);
    var var_1 = Struct_4(~_wgslsmith_mult_u32(reverseBits(15836u), ~arg_0) ^ u_input.d, ~(~abs(vec3<i32>(var_0, 0i, 30202i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-764f, -113f), _wgslsmith_f_op_f32(-798f - 219f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, var_1.c) - vec2<f32>(-404f, -475f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2445f, 576f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -378f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(461f, var_1.c), _wgslsmith_f_op_f32(645f * -819f))), vec2<bool>(global1.a || !arg_1, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c * -1154f)))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, -697f, -1000f, var_1.c)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 113f, 1614f, 1872f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-613f, var_1.c, 932f, -114f)))))));
    global2 = array<Struct_2, 21>();
    return all(select(vec3<bool>(false, any(vec3<bool>(global1.a, true, var_2.b)), true), vec3<bool>(!var_2.b || any(vec2<bool>(true, true)), (-2008f >= var_1.c) || true, global1.a), vec3<bool>(false, global1.a, var_2.b)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = select(!vec4<bool>(false, func_3(~u_input.a.x, global1.a), true, true), !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(global1.a, global1.a, false, true), vec4<bool>(global1.a, true, false, false)), select(select(vec4<bool>(global1.a, global1.a, false, true), vec4<bool>(global1.a, true, false, global1.a), global1.a), !vec4<bool>(global1.a, global1.a, true, global1.a), select(vec4<bool>(false, false, true, true), vec4<bool>(true, global1.a, global1.a, false), vec4<bool>(global1.a, false, true, global1.a))), vec4<bool>(global1.a, false, global1.a, true)), select(vec4<bool>(global1.a, all(vec2<bool>(false, global1.a)), false, all(!vec2<bool>(true, global1.a))), !select(select(vec4<bool>(true, global1.a, global1.a, global1.a), vec4<bool>(true, false, false, true), vec4<bool>(global1.a, global1.a, global1.a, global1.a)), select(vec4<bool>(global1.a, false, false, true), vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(false, global1.a, global1.a, true)), vec4<bool>(true, true, global1.a, global1.a)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_1 = !select(select(vec2<bool>(true, true), select(!vec2<bool>(var_0.x, global1.a), select(var_0.zy, vec2<bool>(false, var_0.x), vec2<bool>(false, true)), select(var_0.zx, vec2<bool>(true, true), vec2<bool>(var_0.x, true))), !(!var_0.x)), !select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, false), false), !select(var_0.wy, select(var_0.xz, var_0.xz, var_0.x), true));
    let var_2 = i32(-1i) * -(95256i & u_input.b);
    let var_3 = _wgslsmith_mult_u32(~global1.c.x & u_input.c, ~reverseBits(0u));
    global1 = Struct_3(var_1.x, -25400i, firstLeadingBit(global1.c));
    return var_3;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_add_u32(select(~u_input.c, ~func_2(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, -24259i, global1.b), vec4<i32>(1i, 50848i, 1i, u_input.b))), global1.a), ~_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, global1.c.x, 28910u), vec3<u32>(43008u, u_input.a.x, u_input.c))));
    global2 = array<Struct_2, 21>();
    var var_1 = vec3<f32>(974f, -721f, _wgslsmith_f_op_f32(step(-513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f) * _wgslsmith_f_op_f32(abs(1817f)))))));
    let var_2 = _wgslsmith_f_op_f32(max(1757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))))));
    let var_3 = Struct_5(Struct_4(var_0, vec3<i32>(-1i) * -max(vec3<i32>(-63516i, global1.b, 19509i), vec3<i32>(u_input.b, 1i, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + -1377f) + 1f)), Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-221f, _wgslsmith_f_op_f32(floor(var_2))))), true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1000f, var_1.x, var_1.x)))))), abs(u_input.a.yx), vec2<i32>(u_input.b, max(max(_wgslsmith_clamp_i32(u_input.b, -1i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-24795i, global1.b), vec2<i32>(u_input.b, 61673i))), u_input.b)), vec3<f32>(var_1.x, 1418f, _wgslsmith_f_op_f32(select(var_2, 381f, !global1.a || any(vec3<bool>(true, global1.a, false))))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(!func_1(), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, firstTrailingBit(-7040i), global1.b ^ -42069i, global1.b), vec4<i32>(u_input.b, _wgslsmith_mod_i32(global1.b ^ global1.b, 0i), firstTrailingBit(_wgslsmith_div_i32(global1.b, u_input.b)), ~u_input.b ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -73646i, 0i, -53280i), vec4<i32>(u_input.b, -54267i, 32741i, -10954i)))), min(u_input.a.yz << (~(vec2<u32>(global1.c.x, 491u) << (vec2<u32>(0u, global1.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)), global1.c));
    global1 = Struct_3(!(~(u_input.a.x | 4294967295u) >= abs(select(1837u, global1.c.x, global1.a))), u_input.b, max(firstLeadingBit(max(~global1.c, global1.c >> (vec2<u32>(1u, global1.c.x) % vec2<u32>(32u)))), vec2<u32>(42611u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, 4294967295u, global1.c.x, u_input.c), vec4<u32>(global1.c.x, global1.c.x, 4294967295u, 1u)))));
    let var_0 = Struct_3(all(!vec4<bool>(!global1.a, true, false, false)), global1.b, vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global1.c.x, 4294967295u, 4294967295u)), abs(vec3<u32>(global1.c.x, 4294967295u, u_input.d)))));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~41690u, ~func_2(vec4<i32>(var_0.b, global1.b, 55473i, 9883i))), min(var_0.c, var_0.c) | select(u_input.a.zx, var_0.c | vec2<u32>(4294967295u, 1u), !vec2<bool>(true, global1.a))), max(_wgslsmith_dot_vec3_u32(u_input.a, ~(u_input.a ^ u_input.a)), countOneBits(~0u)), ~30787u);
    var_1 = u_input.a;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1663f, -534f)))) - vec2<f32>(_wgslsmith_f_op_f32(round(-964f)), _wgslsmith_div_f32(406f, -214f))), (global1.a & false) & all(vec3<bool>(true, false, global1.a)))), vec2<f32>(-1095f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-653f + 698f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(105f, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, -896f))), -718f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-239f)))));
}

