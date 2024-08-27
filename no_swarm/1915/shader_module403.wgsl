struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(1000f, 999f, 784f, 1213f, 1784f, 352f, -441f, -1000f, -384f, 747f, -362f, 113f, 316f, -377f, -517f, 1000f, 511f);

var<private> global1: array<Struct_3, 30>;

var<private> global2: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<i32>) -> bool {
    global2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-abs(arg_2.x), u_input.b), arg_2.x);
    let var_0 = arg_2;
    let var_1 = Struct_4(!(any(vec3<bool>(false, true, false)) && any(vec3<bool>(false, false, false))));
    let var_2 = Struct_2(Struct_1(0i, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 17u)] * 686f), 178f))), arg_2.x, _wgslsmith_dot_vec2_u32(~arg_1, vec2<u32>(arg_1.x, 70696u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(537f, -241f, -1236f, 781f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(234f, global0[_wgslsmith_index_u32(u_input.a, 17u)], -746f, global0[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(arg_1.x, 17u)], -669f, -459f), var_1.a))) - vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(17127u, u_input.a), 17u)], _wgslsmith_f_op_f32(ceil(997f)), _wgslsmith_f_op_f32(1309f * -1727f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(u_input.a, arg_1.x, arg_1.x)), 17u)]))), _wgslsmith_div_u32(1u, ~(~u_input.a >> (0u % 32u))), Struct_1(select(~arg_2.x, firstTrailingBit(0i << (u_input.a % 32u)), ~arg_1.x < min(u_input.a, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1375f, 976f) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 17u)] - -1000f)), _wgslsmith_f_op_f32(-1394f * -1000f)), _wgslsmith_div_i32(abs(_wgslsmith_mod_i32(-29240i, -2147483647i)), countOneBits(22317i)), 106548u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], -981f, 164f))))), !vec2<bool>(var_1.a, var_1.a), Struct_1(u_input.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-599f, -1649f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 17u)], global0[_wgslsmith_index_u32(arg_1.x, 17u)]))) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], -1510f)), _wgslsmith_mod_i32(76367i, -abs(6714i)), 25587u ^ _wgslsmith_sub_u32(arg_1.x | 4294967295u, ~13449u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], -125f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, global0[_wgslsmith_index_u32(u_input.a, 17u)], 399f, 500f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1986f, 998f, -2253f, global0[_wgslsmith_index_u32(arg_1.x, 17u)]))))));
    var var_3 = min(~(-(vec4<i32>(2147483647i, u_input.b, arg_2.x, var_2.a.a) | _wgslsmith_sub_vec4_i32(vec4<i32>(-27344i, var_2.a.c, var_2.c.c, var_2.c.a), vec4<i32>(arg_0, 0i, u_input.e.x, var_0.x)))), vec4<i32>(i32(-1i) * -firstTrailingBit(-5066i), arg_2.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(arg_2.x, arg_0), _wgslsmith_mult_i32(firstTrailingBit(var_2.c.c), 15397i)), arg_2.x));
    return true;
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = array<f32, 17>();
    var var_0 = arg_0.d.x;
    global2 = countOneBits(-_wgslsmith_sub_i32(~(~arg_0.e.a), u_input.c));
    let var_1 = arg_0.a.d | arg_0.b;
    var_0 = arg_0.d.x;
    return !all(select(select(vec4<bool>(arg_0.d.x, false, arg_0.d.x, arg_0.d.x), vec4<bool>(true, arg_0.d.x, arg_0.d.x, arg_0.d.x), select(arg_0.d.x, false, false)), vec4<bool>(func_3(arg_0.c.c, vec2<u32>(14665u, arg_0.a.d), u_input.d), arg_0.d.x, arg_0.a.a < arg_0.e.a, 1056f < global0[_wgslsmith_index_u32(var_1, 17u)]), all(vec3<bool>(arg_0.d.x, false, arg_0.d.x))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: bool) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 914f, 1358f, global0[_wgslsmith_index_u32(u_input.a, 17u)]))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 17u)], 140f, global0[_wgslsmith_index_u32(0u, 17u)], -766f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], -1322f, global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], -244f, global0[_wgslsmith_index_u32(u_input.a, 17u)]))))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(39055u), 4294967295u), 17u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(343f, global0[_wgslsmith_index_u32(4294967295u, 17u)])), _wgslsmith_f_op_f32(-612f + -809f))), -494f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1525f * 1198f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(-2147483647i, func_2(Struct_2(Struct_1(2147483647i, vec2<f32>(global0[_wgslsmith_index_u32(1u, 17u)], -287f), 1999i, u_input.a, vec4<f32>(-2474f, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(30295u, 17u)], -200f)), u_input.a, Struct_1(5344i, vec2<f32>(-910f, global0[_wgslsmith_index_u32(u_input.a, 17u)]), u_input.e.x, u_input.a, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], -1000f, global0[_wgslsmith_index_u32(31058u, 17u)])), vec2<bool>(true, false), Struct_1(u_input.b, vec2<f32>(-1038f, 748f), u_input.c, 1u, vec4<f32>(-385f, 1000f, -848f, -380f)))), min(0u, u_input.a), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], 798f, global0[_wgslsmith_index_u32(u_input.a, 17u)], -249f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false))), !(u_input.c > (u_input.d.x ^ -29765i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(u_input.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 17u)])))) > 1000f, u_input.a, _wgslsmith_mult_u32(63155u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 48503u), vec3<u32>(4294967295u, 35641u, 1u)), 49989u) != ~countOneBits(1u))).yw;
    global0 = array<f32, 17>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_i32(~u_input.c << (u_input.a % 32u), min(max(u_input.c, 48662i), 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xy, _wgslsmith_f_op_vec2_f32(sign(var_0.wy)), vec2<bool>(true, true)))), 1i, u_input.a, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(733f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(max(var_0.x, global0[_wgslsmith_index_u32(1u, 17u)]))), _wgslsmith_f_op_f32(-262f * 1247f), _wgslsmith_div_f32(-2662f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 17u)], var_0.x))))), abs(~_wgslsmith_mod_u32(~u_input.a, u_input.a)), Struct_1(1i, vec2<f32>(global0[_wgslsmith_index_u32(~countOneBits(98437u), 17u)], 872f), _wgslsmith_add_i32(countOneBits(u_input.d.x), u_input.c), ~(~u_input.a >> (_wgslsmith_add_u32(1u, u_input.a) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_0.x - 641f)), 1609f, _wgslsmith_f_op_f32(-var_1.x), -326f)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), Struct_1(~_wgslsmith_mult_i32(-2147483647i, u_input.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], -763f), vec2<f32>(-783f, -426f))) * vec2<f32>(-1000f, 184f))), -21930i, min(~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) << (vec4<u32>(u_input.a, u_input.a, 0u, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-148f - var_1.x), _wgslsmith_f_op_f32(var_0.x * 187f), _wgslsmith_f_op_f32(-var_1.x), var_0.x)))));
    let var_3 = select(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(var_2.a.d, 0u, var_2.c.d, u_input.a), vec4<u32>(var_2.b, var_2.e.d, var_2.e.d, 2867u)) >> (~vec4<u32>(3052u, 85764u, u_input.a, var_2.a.d) % vec4<u32>(32u)), ~reverseBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, var_2.c.d))), ~(~(~vec4<u32>(60886u, 0u, u_input.a, 4294967295u))), var_2.d.x || false);
    return Struct_2(var_2.a, (~max(var_2.b, var_3.x) << (62774u % 32u)) << (1u % 32u), Struct_1(-select(var_2.e.a, 22040i, false), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.wy - _wgslsmith_f_op_vec2_f32(var_2.e.e.yx + vec2<f32>(var_1.x, var_0.x))))), _wgslsmith_clamp_i32(var_2.e.a, ~(~(-18490i)), 9441i), 0u, vec4<f32>(global0[_wgslsmith_index_u32(~(~1u), 17u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + global0[_wgslsmith_index_u32(44190u, 17u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.b, 17u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-545f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 17u)]))), var_2.d, Struct_1(var_2.a.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_0.yz)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1654f, var_1.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, var_2.c.e.x))), !vec2<bool>(false, var_2.d.x))), false)), abs(u_input.e.x), 0u ^ abs(firstTrailingBit(9650u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2.c.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_2(var_0.c, _wgslsmith_clamp_u32(44763u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c.d, 8877u), select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(21148u, 1u), var_0.d)), ~_wgslsmith_add_u32(u_input.a, ~1u)), func_1().a, var_0.d, var_0.a);
    global2 = _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(47816i, firstLeadingBit(-34893i), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 30238i, var_0.a.a, u_input.b), firstTrailingBit(vec4<i32>(u_input.e.x, u_input.b, var_0.e.a, -2147483647i)))), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-5304i, 1i, u_input.c, -53635i), vec4<i32>(1i, u_input.b, u_input.d.x, 0i) | vec4<i32>(-2147483647i, -19565i, u_input.d.x, 7833i)));
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0.c.e), vec4<f32>(var_0.c.b.x, var_1.c.b.x, -101f, 2051f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c.e))), var_0.e.e) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f)) - -1198f), 777f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_1().c.e.x))), _wgslsmith_f_op_f32(var_0.e.b.x - var_1.e.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.wyy)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e.e.wzz)), vec3<f32>(func_1().a.e.x, func_1().c.e.x, _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_mod_vec3_u32(abs(max(reverseBits(vec3<u32>(4294967295u, var_0.c.d, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b, u_input.a, var_0.c.d), vec3<u32>(var_1.a.d, 7871u, u_input.a), vec3<u32>(var_1.c.d, var_0.c.d, 51988u)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.e.d, var_0.c.d, 678u), vec3<u32>(0u, 1u, 87791u)) & select(select(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(var_1.a.d, 16909u, 0u), vec3<bool>(var_0.d.x, false, false)), vec3<u32>(var_1.a.d, u_input.a, u_input.a), !vec3<bool>(var_0.d.x, var_0.d.x, true))));
}

