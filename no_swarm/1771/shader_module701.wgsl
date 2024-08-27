struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, 85585u, ~arg_1.a.a.x)), _wgslsmith_div_vec3_u32(arg_1.a.a, _wgslsmith_add_vec3_u32(arg_1.a.a ^ arg_1.a.a, select(vec3<u32>(arg_1.a.a.x, 39627u, 1754u), vec3<u32>(14425u, arg_1.a.a.x, arg_1.a.a.x), arg_1.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 173f, arg_2.x), arg_2) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 153f, 545f) - arg_2) - vec3<f32>(arg_0, -426f, arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.x - 1331f) - arg_0) * _wgslsmith_f_op_f32(floor(1000f))), 714f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = vec4<i32>(max(1i, countOneBits(firstLeadingBit(-34311i))) ^ (-u_input.a.x << (135799u % 32u)), _wgslsmith_mult_i32(-select(u_input.a.x, 0i ^ u_input.a.x, true), ~max(1i, _wgslsmith_sub_i32(0i, u_input.a.x))), u_input.a.x, 0i << (0u % 32u));
    let var_2 = arg_1;
    global0 = array<vec4<f32>, 20>();
    let var_3 = _wgslsmith_f_op_f32(min(var_0.c.x, 819f));
    return arg_1.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = -_wgslsmith_div_vec2_i32(~firstLeadingBit(vec2<i32>(-1i, 0i)) & (vec2<i32>(-1i) * -u_input.a), ~(~u_input.a ^ _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(-20313i, u_input.a.x))));
    let var_1 = arg_2.a;
    global0 = array<vec4<f32>, 20>();
    let var_2 = Struct_2(arg_1, false, arg_2.d, (select(any(vec4<bool>(arg_0.c, true, arg_0.b, arg_0.c)), false, true) & any(vec3<bool>(true, true, true))) | (var_1.a.x == reverseBits(var_1.a.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-171f)))), _wgslsmith_div_f32(-997f, var_2.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(962f - _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -246f)) * _wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.b.x, -397f, arg_2.a.b.x))))));
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(4294967295u, 0u), 4294967295u, func_4(Struct_2(Struct_1(firstLeadingBit(vec3<u32>(11952u, 54150u, 18052u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(311f, -608f, -1623f) + vec3<f32>(-1608f, -1000f, -266f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, -285f, 1811f) * vec3<f32>(-745f, -869f, -1684f))), !all(vec4<bool>(false, false, false, true)), !any(vec3<bool>(false, true, true)), !(3597i > u_input.a.x)), Struct_1(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, -394f, 127f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, -1010f, 1555f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1008f, -598f), vec3<f32>(-1530f, 2050f, 534f)))), Struct_2(Struct_1(func_3(-616f, Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 8199u), vec3<f32>(-971f, -677f, -632f), vec3<f32>(-1000f, 328f, 2073f)), true, false, true), vec3<f32>(3053f, -1523f, -663f), true), vec3<f32>(430f, 1000f, -1817f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(462f, 702f, -1511f)))), any(vec4<bool>(true, true, false, true)), all(vec2<bool>(true, false)), !any(vec3<bool>(false, true, false)))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~1u, abs(abs(36646u)), 67208u), ~1u, max(countOneBits(~6456u), ~select(1u, 13963u, true))));
    let var_1 = ~(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x, _wgslsmith_sub_u32(var_0.x, var_0.x)), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(var_0.x, var_0.x), 0u), 4294967295u) | reverseBits(~var_0.x));
    global0 = array<vec4<f32>, 20>();
    global0 = array<vec4<f32>, 20>();
    let var_2 = !select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), (u_input.a.x << (2462u % 32u)) <= 18334i), vec2<bool>(true, true), !vec2<bool>(any(vec4<bool>(true, false, false, false)), true));
    return Struct_2(Struct_1(~vec3<u32>(abs(0u), max(var_0.x, var_0.x), _wgslsmith_clamp_u32(41343u, var_0.x, var_1)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, 354f, -584f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, -1278f, 241f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1562f, -1222f, -657f) * vec3<f32>(257f, 646f, 1000f))))), !(~21849u < var_0.x) | true, all(select(select(!vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(false, false, false, var_2.x)), !vec4<bool>(var_2.x, true, var_2.x, var_2.x), var_2.x)), var_2.x);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = reverseBits(~select(countOneBits(vec4<u32>(19124u, arg_0, var_0.a.a.x, 4294967295u)), select(vec4<u32>(arg_0, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<u32>(arg_0, 0u, arg_0, arg_0), !vec4<bool>(var_0.c, var_0.c, var_0.b, true)), var_0.c));
    var var_2 = Struct_1(~_wgslsmith_add_vec3_u32(var_0.a.a, ~abs(vec3<u32>(var_1.x, 4294967295u, 33797u))), _wgslsmith_f_op_vec3_f32(sign(var_0.a.c)), func_2().a.c);
    var_2 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.x, _wgslsmith_mult_u32(~0u, ~var_2.a.x), 54697u), ~(~(~vec3<u32>(197u, 8156u, 0u)))), vec3<f32>(_wgslsmith_f_op_f32(-946f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, var_2.c.x))), _wgslsmith_f_op_f32(arg_1.x - var_0.a.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), 840f))), var_0.a.b);
    var var_3 = func_2();
    return Struct_1(~reverseBits(vec3<u32>(~var_0.a.a.x, max(0u, arg_0), firstTrailingBit(41981u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + _wgslsmith_f_op_f32(-arg_1.x))), -718f, arg_1.x), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-308f, -1388f), vec2<f32>(202f, 448f), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(194f, -328f) + vec2<f32>(1212f, -735f))))), true, any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)))), func_2().c && true);
    global0 = array<vec4<f32>, 20>();
    var var_1 = firstTrailingBit(4294967295u);
    let var_2 = Struct_1(~(~var_0.a.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-448f, var_0.a.b.x, var_0.d))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b.x), func_1(var_0.a.a.x, vec2<f32>(var_0.a.b.x, var_0.a.c.x)).b.x) + -1000f), var_0.a.c.x), var_0.a.b);
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<i32>(u_input.a.x, u_input.a.x), select(vec2<i32>(-19792i, u_input.a.x) & vec2<i32>(13735i, -2147483647i), firstLeadingBit(~u_input.a), u_input.a.x <= ~u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), var_2.c.x));
}

