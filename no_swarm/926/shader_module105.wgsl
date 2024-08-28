struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1967f), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-231f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a, -426f, arg_0.a)))))), true));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a)))), arg_0.a, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 256f, var_0.x))))));
    global0 = true;
    let var_2 = !(!(!(var_0.x >= _wgslsmith_f_op_f32(sign(arg_0.a)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(abs(-360f)), false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(704f, arg_0.a)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = ~vec4<i32>(u_input.b.x, 16187i, ~(-1i), -3833i) ^ _wgslsmith_mult_vec4_i32(-(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (~vec4<u32>(125923u, 1u, u_input.c, 1u) % vec4<u32>(32u))), vec4<i32>(-1i ^ u_input.b.x, u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x & u_input.b.x, _wgslsmith_add_i32(u_input.b.x, 1i), -16417i), u_input.b.x));
    var_0 = vec4<i32>(var_0.x, u_input.b.x, _wgslsmith_dot_vec3_i32(select(select(vec3<i32>(11485i, -2147483647i, u_input.b.x) & var_0.zxx, _wgslsmith_add_vec3_i32(var_0.xzz, vec3<i32>(var_0.x, var_0.x, u_input.b.x)), false), var_0.wyx, select(true, true, any(vec4<bool>(true, false, true, false)))), _wgslsmith_div_vec3_i32(~u_input.b, reverseBits(vec3<i32>(2147483647i, u_input.b.x, 68199i)) ^ u_input.b)), reverseBits(27844i));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_1.a, arg_0.x) - vec3<f32>(-172f, 790f, 231f)))))));
    let var_2 = vec4<i32>(-1i, _wgslsmith_clamp_i32(var_0.x, -min(var_0.x, 0i) & u_input.b.x, u_input.b.x), 1i, -34906i);
    let var_3 = any(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), arg_0.x == 379f), !(!any(vec3<bool>(false, true, false)))));
    return arg_1.a;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.d;
    return Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -944f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-800f, -1000f) * vec2<f32>(-468f, 337f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1824f, 481f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1609f, -133f)))), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(306f), max(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, -37355i))))), 44883u)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = all(vec2<bool>(true, !(344f > arg_0.a))) && false;
    global0 = !all(vec4<bool>(!any(vec4<bool>(false, false, false, false)), true, any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false))));
    var var_0 = _wgslsmith_dot_vec2_u32((max(abs(vec2<u32>(4294967295u, 1u)), ~vec2<u32>(global1[_wgslsmith_index_u32(70495u, 24u)], global1[_wgslsmith_index_u32(90544u, 24u)])) << (abs(vec2<u32>(99800u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 24u)], 24u)], 24u)]) & vec2<u32>(u_input.c, global1[_wgslsmith_index_u32(20020u, 24u)])) % vec2<u32>(32u))) | (reverseBits(select(vec2<u32>(1u, u_input.d), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 5197u), true)) | vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65315u, 24u)], 24u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.c), 24u)])), vec2<u32>(u_input.a, 1u));
    var_0 = abs(u_input.d);
    global1 = array<u32, 24>();
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global1 = array<u32, 24>();
    global0 = true;
    global1 = array<u32, 24>();
    var var_0 = Struct_2(_wgslsmith_clamp_u32(~select(_wgslsmith_mult_u32(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)]), u_input.c | u_input.d, all(vec4<bool>(arg_2, false, arg_2, arg_2))), global1[_wgslsmith_index_u32(~(1u << (~u_input.d % 32u)), 24u)], ~(~_wgslsmith_add_u32(u_input.d, u_input.d))), arg_3);
    let var_1 = ~(~firstTrailingBit(max(vec4<u32>(u_input.d, var_0.a, u_input.a, 44916u), vec4<u32>(0u, 36421u, 1u, 0u)) & max(vec4<u32>(global1[_wgslsmith_index_u32(0u, 24u)], 27550u, var_0.a, 17123u), vec4<u32>(4294967295u, 97013u, 1u, u_input.c))));
    return Struct_2(_wgslsmith_dot_vec3_u32(var_1.wyz, var_1.xxz), arg_3);
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(~firstTrailingBit(min(arg_0 << (arg_1.a % 32u), arg_1.a | arg_0)), 24u)], func_6(func_5(func_6(arg_3, _wgslsmith_f_op_f32(-arg_2.x), true, Struct_1(-830f)).b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f)))), _wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 24u)], 24u)]) < _wgslsmith_div_u32(~u_input.c, u_input.c), func_2()).b);
    global1 = array<u32, 24>();
    var var_1 = !vec4<bool>(!(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.b.a), u_input.b.yy)) <= _wgslsmith_f_op_f32(-arg_1.b.a)), true, true, true);
    let var_2 = func_6(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(597f + arg_3.a))), all(vec3<bool>(!var_1.x, !var_1.x, var_1.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-1000f + arg_3.a)))));
    var_1 = select(!vec4<bool>(var_1.x, false, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)) | var_1.x, var_1.x), vec4<bool>(all(select(var_1.zww, vec3<bool>(true, true, var_1.x), all(var_1.xw))), var_1.x, !var_1.x, any(var_1.yxy)), select(select(select(select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), !vec4<bool>(false, false, true, var_1.x), !vec4<bool>(false, true, false, var_1.x)), vec4<bool>(var_1.x, var_1.x, false, false), !select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x))), select(select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), true), vec4<bool>(false, true, var_1.x, var_1.x), any(vec3<bool>(var_1.x, var_1.x, false))), select(vec4<bool>(false, false, false, var_1.x), !vec4<bool>(false, var_1.x, var_1.x, false), !vec4<bool>(false, false, var_1.x, true)), select(select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(true, true, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), true));
    return ~(~abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_2.a, arg_0, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 27967u, 12826u, 1u), vec4<u32>(4294967295u, arg_0, global1[_wgslsmith_index_u32(u_input.c, 24u)], 54812u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<u32>(global1[_wgslsmith_index_u32(~max(abs(~u_input.c), firstLeadingBit(~0u)), 24u)], 4294967295u, ~(~(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(7501u, 24u)], 24u)])), 4294967295u);
    global1 = array<u32, 24>();
    var var_1 = ~min(~var_0.xxw, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.x, 84833u), vec3<u32>(24505u, 4294967295u, u_input.d), var_0.zzw)) >> (vec3<u32>(1u, u_input.a, 76425u | global1[_wgslsmith_index_u32(u_input.a, 24u)]) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1215f)), -1200f), 1491f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)));
    var_0 = func_7(_wgslsmith_add_u32(firstTrailingBit(0u) | global1[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 24u)], ~u_input.c), func_6(func_5(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) + var_2), true, Struct_1(1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1795f), var_2, 1271f, 253f))), Struct_1(_wgslsmith_f_op_f32(step(-885f, _wgslsmith_f_op_f32(-var_2)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.d, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)]), 24u)], func_1());
    let var_1 = vec2<bool>(!all(vec2<bool>(true, true)), false);
    global1 = array<u32, 24>();
    let var_2 = func_6(Struct_1(var_0.b.a), func_1().a, !var_1.x, Struct_1(1000f)).b;
    var var_3 = select(select(vec4<bool>((u_input.d | 4294967295u) < (u_input.a & var_0.a), var_1.x, var_1.x & !var_1.x, !any(vec2<bool>(var_1.x, true))), select(vec4<bool>(true, var_1.x, any(var_1), !var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), select(select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, var_1.x, var_1.x, false)), false & var_1.x)), select(vec4<bool>(var_1.x, any(vec3<bool>(var_1.x, var_1.x, false)), true, all(vec4<bool>(var_1.x, false, var_1.x, false))), !vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, var_1.x)), true, true, any(vec3<bool>(false, var_1.x, true))))), select(select(!vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, false, var_1.x, u_input.b.x != -11912i), !select(true, var_1.x, true)), select(vec4<bool>(true, false, true, var_0.a <= 30921u), select(vec4<bool>(var_1.x, var_1.x, true, true), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), false), vec4<bool>(all(var_1), true, true, var_2.a != -2183f)), true), select(select(select(vec4<bool>(var_1.x, true, false, false), select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x)), var_1.x), vec4<bool>(true, false == var_1.x, false | var_1.x, var_1.x), var_1.x), vec4<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, var_1.x, false))), var_1.x, var_1.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(327f, var_0.b.a, -1600f) * vec3<f32>(1051f, 2128f, 1348f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, 447f, var_2.a)), !(var_1.x != var_1.x))) + vec3<f32>(810f, _wgslsmith_f_op_f32(var_2.a - 1609f), _wgslsmith_f_op_f32(func_3(func_1(), vec2<i32>(u_input.b.x, u_input.b.x))))), ~u_input.b, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), -_wgslsmith_clamp_vec4_i32((vec4<i32>(2147483647i, 8392i, 2147483647i, -2147483647i) >> (vec4<u32>(var_0.a, 1u, 0u, u_input.a) % vec4<u32>(32u))) ^ -vec4<i32>(u_input.b.x, u_input.b.x, -14038i, -9482i), vec4<i32>(u_input.b.x | 46018i, -2248i, _wgslsmith_dot_vec4_i32(vec4<i32>(19400i, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 1i, u_input.b.x, 1i)), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), vec4<i32>(1i, -14463i, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.d, ~global1[_wgslsmith_index_u32(var_0.a, 24u)])), vec2<u32>(~(~52575u), u_input.a & ~4294967295u)));
}

