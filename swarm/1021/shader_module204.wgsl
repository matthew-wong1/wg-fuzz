struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
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

var<private> global0: array<i32, 30> = array<i32, 30>(33565i, i32(-2147483648), -1i, 5374i, -7644i, 2147483647i, i32(-2147483648), -8954i, 1i, 1i, i32(-2147483648), 0i, -9825i, -6700i, -16735i, 11157i, i32(-2147483648), 2147483647i, -7717i, 13730i, 2147483647i, 2147483647i, 24469i, 2147483647i, 2147483647i, -1i, -21810i, 2147483647i, 1i, 2147483647i);

var<private> global1: vec2<f32> = vec2<f32>(-191f, -188f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_2(48754u, vec4<u32>((~arg_1 ^ ~arg_1) | 4294967295u, u_input.c.x, ((u_input.e.x & arg_1) >> (abs(arg_1) % 32u)) & 1u, ~u_input.e.x), true, Struct_1(vec3<i32>(~_wgslsmith_clamp_i32(-2147483647i, global0[_wgslsmith_index_u32(58574u, 30u)], -1i), global0[_wgslsmith_index_u32(select(u_input.e.x, ~u_input.c.x, !arg_2), 30u)], u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, u_input.c.x, arg_1), u_input.c), _wgslsmith_f_op_f32(sign(-221f))), vec4<bool>(select((arg_0.a || arg_2) != arg_0.a, arg_0.a, false), !any(vec3<bool>(true, false, arg_2)), arg_0.a == all(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a)), (true & all(vec4<bool>(arg_0.a, arg_0.a, arg_2, arg_0.a))) == false));
    let var_1 = var_0.d;
    let var_2 = Struct_5(false);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-561f - -1240f))), var_0.d.c);
    var_3 = var_0.d.c;
    return vec4<bool>(all(!vec4<bool>(!var_0.c, false, true, arg_0.a)), true, false, any(vec2<bool>((true & arg_0.a) & arg_2, !var_0.e.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: f32) -> vec3<i32> {
    var var_0 = Struct_2(~94746u, ~_wgslsmith_div_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(11781u, 4294967295u, u_input.e.x, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, u_input.b.x), vec4<u32>(0u, u_input.c.x, 4294967295u, 60328u))), select(firstLeadingBit(vec4<u32>(31086u, 0u, u_input.e.x, 13718u)), vec4<u32>(u_input.b.x, u_input.e.x, u_input.e.x, 67834u), true)), false, Struct_1(firstLeadingBit(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-44862i, 2147483647i, u_input.d)), -vec3<i32>(u_input.d, 30392i, -1i))), u_input.c, arg_1), vec4<bool>(any(func_3(Struct_5(true), u_input.e.x, false)), false, !(660f <= arg_0.x) & (all(vec2<bool>(true, false)) && all(vec3<bool>(true, false, true))), !(u_input.a != 8805i) || any(vec4<bool>(true, true, true, true))));
    global0 = array<i32, 30>();
    var_0 = Struct_2(~max(countOneBits(countOneBits(4294967295u)), firstLeadingBit(81291u) & var_0.d.b.x), vec4<u32>(460u, 1u, ~(~57938u), var_0.a), var_0.e.x, Struct_1(~firstLeadingBit(var_0.d.a) & -min(vec3<i32>(var_0.d.a.x, -2147483647i, 68151i), vec3<i32>(1i, u_input.d, global0[_wgslsmith_index_u32(4294967295u, 30u)])), min(~max(vec3<u32>(u_input.c.x, 17576u, 59723u), vec3<u32>(u_input.e.x, var_0.d.b.x, 0u)), _wgslsmith_mod_vec3_u32(var_0.d.b, _wgslsmith_div_vec3_u32(vec3<u32>(7094u, u_input.b.x, 10639u), vec3<u32>(u_input.b.x, var_0.b.x, u_input.c.x)))), _wgslsmith_f_op_f32(-2019f * -1221f)), vec4<bool>(!(!(!var_0.c)), var_0.c, var_0.c, true));
    var var_1 = vec3<u32>(u_input.c.x, ~(~var_0.a), u_input.c.x);
    return _wgslsmith_add_vec3_i32(var_0.d.a, var_0.d.a);
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = global1.x;
    var_0 = global1.x;
    global0 = array<i32, 30>();
    let var_1 = ~(abs(vec2<u32>(1u, u_input.e.x) >> (vec2<u32>(u_input.e.x, 4294967295u) % vec2<u32>(32u))) & vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, arg_0.b.x, arg_0.b.x), _wgslsmith_dot_vec3_u32(arg_0.b, u_input.c))) ^ arg_0.b.zx;
    let var_2 = vec3<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_3(Struct_5(any(vec2<bool>(false, true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.c.x, arg_0.b.x, 46956u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.c.x, arg_0.b.x, 4413u), vec4<u32>(u_input.b.x, 4637u, arg_0.b.x, var_1.x)), 4294967295u, firstTrailingBit(var_1.x), 5755u)), true).x, true);
    return ~arg_0.a.x;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = vec4<i32>(-1i, func_4(Struct_1(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(186f, arg_2.x, arg_2.x, arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-arg_2.x)), ~(~u_input.b), _wgslsmith_f_op_f32(select(815f, -506f, true)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, u_input.b.x), u_input.e.x), _wgslsmith_div_u32(_wgslsmith_add_u32(24920u, u_input.b.x), 0u)), 30u)] << (u_input.c.x % 32u), _wgslsmith_div_i32(993i, u_input.d >> (4294967295u % 32u)));
    let var_1 = arg_2;
    var var_2 = 213f;
    global1 = arg_2;
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(arg_2))));
    return Struct_2(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.e.x, 32u)), ~vec2<u32>(u_input.b.x, 0u)) & 0u, ~(~vec4<u32>(firstTrailingBit(u_input.c.x), firstLeadingBit(u_input.b.x), 1u, 1u)), false, Struct_1(var_0.xzx, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_2.x)))))), func_3(arg_0, 38237u, any(select(vec2<bool>(false, false), vec2<bool>(true, false), func_3(Struct_5(true), 3364u, false).yw))));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_5 {
    var var_0 = u_input.d;
    var_0 = ~countOneBits(~(40102i ^ select(-1i, arg_1.d.a.x, arg_1.c)));
    global1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-667f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), 1437f, arg_1.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.c, -675f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, -113f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d.c, 113f), vec2<f32>(global1.x, 170f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.c, global1.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, 1780f))))))));
    var_0 = reverseBits(u_input.d);
    global0 = array<i32, 30>();
    return Struct_5(false);
}

fn func_6(arg_0: Struct_5) -> i32 {
    var var_0 = Struct_4(select(!vec3<bool>(true, all(vec2<bool>(false, arg_0.a)), arg_0.a), !vec3<bool>(true, true, !arg_0.a), vec3<bool>(arg_0.a, func_1(Struct_5(false), vec3<f32>(global1.x, 476f, global1.x), vec2<f32>(-885f, 1860f)).e.x, !(arg_0.a != arg_0.a))), func_1(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -480f, -1070f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))) - vec3<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_div_f32(455f, 1162f), -392f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, global1.x))))).d);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(max(func_6(func_5(_wgslsmith_f_op_f32(global1.x + 211f), func_1(Struct_5(true), vec3<f32>(global1.x, global1.x, -312f), vec2<f32>(2243f, global1.x)))), _wgslsmith_div_i32(u_input.a, -2147483647i)), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-10784i, global0[_wgslsmith_index_u32(u_input.e.x, 30u)], u_input.d), -53868i)) & u_input.d);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-382f * -1149f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.x, -931f, false)), _wgslsmith_f_op_f32(global1.x + global1.x)) + _wgslsmith_f_op_f32(trunc(250f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))) + global1.x)), _wgslsmith_f_op_f32(max(-1839f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(716f)), -174f) * _wgslsmith_f_op_f32(func_1(Struct_5(false), vec3<f32>(global1.x, -433f, global1.x), vec2<f32>(global1.x, global1.x)).d.c * global1.x)))), global1.x);
    let var_2 = false;
    var var_3 = select(firstTrailingBit(vec3<i32>(firstLeadingBit(abs(global0[_wgslsmith_index_u32(u_input.e.x, 30u)])), -1i, u_input.a)), ~vec3<i32>(var_0, reverseBits(7909i), ~_wgslsmith_clamp_i32(-2147483647i, -1i, -1i)), !vec3<bool>(var_2, false, var_2));
    var var_4 = u_input.d;
    var var_5 = countOneBits(~(~(~u_input.b.xy) | select(vec2<u32>(4294967295u, 4294967295u), u_input.e.yy, var_2)));
    let var_6 = Struct_4(select(select(!vec3<bool>(var_2, var_2, var_2), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, var_2)), var_2), vec3<bool>(false, true, func_3(func_5(global1.x, Struct_2(var_5.x, vec4<u32>(11185u, var_5.x, u_input.b.x, u_input.b.x), true, Struct_1(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 30u)], var_0), u_input.b, global1.x), vec4<bool>(var_2, false, var_2, true))), 1u, !var_2).x), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(32468i, 2147483647i, u_input.d) ^ vec3<i32>(var_3.x, -1i, -5357i)), vec3<i32>(-10171i, i32(-1i) * -91813i, ~var_3.x), ~vec3<i32>(0i, var_0, u_input.a) ^ -vec3<i32>(var_0, u_input.a, 24856i)), ~vec3<u32>(~14596u, u_input.b.x << (var_5.x % 32u), _wgslsmith_div_u32(var_5.x, u_input.e.x)), -2498f));
    var var_7 = Struct_3(global1.x, var_6.b.a.zy, Struct_2(4294967295u, vec4<u32>(4294967295u, 1u | max(70258u, var_5.x), ~66932u, ~(~0u)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(720f + -484f)), func_1(func_5(var_6.b.c, Struct_2(22435u, vec4<u32>(22105u, u_input.e.x, u_input.e.x, var_5.x), false, Struct_1(var_6.b.a, vec3<u32>(4294967295u, 1u, u_input.c.x), 827f), vec4<bool>(var_6.a.x, true, var_2, var_6.a.x))), _wgslsmith_f_op_vec3_f32(var_1.www - var_1.xwy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(216f, 306f)))).a, Struct_1(-abs(var_6.b.a), u_input.e | (u_input.c >> (var_6.b.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_1(Struct_5(var_2), vec3<f32>(var_1.x, var_1.x, -141f), vec2<f32>(612f, var_6.b.c)).d.c - _wgslsmith_f_op_f32(ceil(-1713f)))), func_3(func_5(_wgslsmith_div_f32(-162f, 1434f), Struct_2(u_input.c.x, vec4<u32>(7577u, u_input.e.x, var_5.x, var_5.x), true, var_6.b, vec4<bool>(var_6.a.x, var_6.a.x, var_6.a.x, var_6.a.x))), ~(var_5.x << (var_5.x % 32u)), var_2 || false)), vec4<i32>(-1i) * -firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_5.x, 30u)], var_3.x, u_input.a, -35454i), vec4<i32>(var_0, global0[_wgslsmith_index_u32(15520u, 30u)], -18030i, 52618i))), -3456i & ~_wgslsmith_mod_i32(var_3.x, _wgslsmith_clamp_i32(-2147483647i, 1i, global0[_wgslsmith_index_u32(var_6.b.b.x, 30u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.e));
}

