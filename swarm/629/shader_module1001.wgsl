struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(757f)), _wgslsmith_f_op_f32(min(-219f, -507f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1588f + 816f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1875f, 255f, -662f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 773f, 984f)))))))));
    var var_1 = arg_2.a;
    var var_2 = !(!vec3<bool>(all(vec4<bool>(arg_2.a.b, arg_1, arg_1, var_1.b)), true, var_1.b));
    var var_3 = arg_2.b;
    return ~vec3<i32>(~(-_wgslsmith_mod_i32(arg_3.x, arg_2.c)), arg_2.c, arg_3.x);
}

fn func_2() -> f32 {
    let var_0 = func_3(abs(~u_input.d) ^ ~(~vec2<u32>(1u, u_input.d.x)), any(vec2<bool>(false, any(vec4<bool>(true, true, true, true)))), Struct_2(Struct_1(_wgslsmith_mod_u32(~u_input.d.x, _wgslsmith_add_u32(55897u, u_input.c.x)), false, ~_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.d.x, u_input.c.x))), Struct_1(~u_input.c.x, true, ~vec3<u32>(39528u, u_input.d.x, u_input.d.x)), _wgslsmith_clamp_i32(1i, reverseBits(1i), i32(-1i) * -2388i)), min(u_input.e.yz, _wgslsmith_mult_vec2_i32(-abs(vec2<i32>(6001i, u_input.b.x)), vec2<i32>(u_input.b.x, ~u_input.e.x))));
    let var_1 = abs(50173u);
    let var_2 = Struct_1(~1u, false, _wgslsmith_add_vec3_u32(~(~vec3<u32>(69964u, u_input.d.x, 9221u)) & vec3<u32>(8683u, _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.c.x), u_input.d.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1, var_1) << (select(u_input.c, vec3<u32>(var_1, var_1, var_1), vec3<bool>(false, true, false)) % vec3<u32>(32u)), u_input.c, ~u_input.c)));
    let var_3 = vec2<bool>(var_2.b, true);
    let var_4 = !vec4<bool>(true, true, var_2.b, _wgslsmith_dot_vec2_u32(var_2.c.yy, var_2.c.zy) <= var_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(arg_0)), -1456f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1169f, arg_0, arg_0, arg_0))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 126f, arg_0, arg_0), vec4<f32>(750f, -395f, 210f, 1211f)))))) - vec4<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-883f))))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1032f, arg_0, true)), _wgslsmith_f_op_f32(arg_0 * arg_0)) + 2340f)));
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    let var_2 = !(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, false), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false))));
    let var_3 = u_input.e.wzy ^ -u_input.a;
    var var_4 = 30437u;
    return Struct_1(107462u, var_2.x, firstTrailingBit(arg_1));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = abs(15673i);
    let var_1 = func_4(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f)) * 321f)), select(vec3<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_2.a, arg_1.c.x, arg_1.c.x), vec4<u32>(53143u, arg_1.c.x, 1u, 76621u)), _wgslsmith_sub_u32(u_input.c.x, u_input.d.x)), ~u_input.c.x), arg_1.c, vec3<bool>(false, false, arg_2.b)), abs(u_input.c.x));
    let var_2 = vec3<i32>(~firstLeadingBit(~abs(u_input.b.x)), -265i, _wgslsmith_dot_vec3_i32(vec3<i32>(max(_wgslsmith_mod_i32(u_input.b.x, arg_0), arg_0), u_input.e.x, -5261i), _wgslsmith_mult_vec3_i32(min(u_input.e.wxy, abs(vec3<i32>(-1i, 2147483647i, arg_0))), u_input.a)));
    let var_3 = ~arg_1.c;
    var var_4 = Struct_2(arg_1, Struct_1(1u, false, arg_1.c), max(_wgslsmith_mult_i32(8262i, _wgslsmith_div_i32(-27983i, var_2.x) << (~29533u % 32u)), _wgslsmith_mod_i32(-1i, func_3(vec2<u32>(u_input.c.x, var_3.x), arg_2.b, Struct_2(arg_2, var_1, arg_0), u_input.a.zy).x) & ((i32(-1i) * -64955i) << ((var_3.x << (arg_1.c.x % 32u)) % 32u))));
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-1112f, -497f)), false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f - 372f))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(62349u), 1u, 4294967295u), ~firstTrailingBit(vec3<u32>(var_1.c.x, 4294967295u, 1u))), var_3.x).c, 0u);
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    var var_0 = select(23242i, ~(~abs(u_input.b.x) | -1i), all(vec3<bool>(arg_0.b | arg_0.b, true, !any(vec2<bool>(false, arg_0.b)))));
    var_0 = abs(-25296i);
    var_0 = _wgslsmith_mod_i32(~abs(u_input.e.x) ^ u_input.a.x, max(u_input.a.x, u_input.b.x));
    let var_1 = vec4<u32>(u_input.c.x, ~48840u, 1u & (u_input.c.x << (arg_0.c.x % 32u)), 1u);
    var_0 = ~u_input.e.x;
    return Struct_2(Struct_1(1u, arg_0.b, ~func_4(-1420f, var_1.xxy, 4294967295u).c >> (var_1.xww % vec3<u32>(32u))), arg_0, u_input.e.x);
}

fn func_1() -> bool {
    let var_0 = true;
    let var_1 = func_6(func_5(reverseBits(-54349i), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -564f), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 72073u), u_input.c, countOneBits(vec3<u32>(76976u, 4294967295u, u_input.c.x))), u_input.d.x), Struct_1(1u, func_4(-600f, select(vec3<u32>(u_input.c.x, 1u, 0u), vec3<u32>(0u, u_input.d.x, u_input.c.x), vec3<bool>(var_0, var_0, true)), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x))).b, min(u_input.c, vec3<u32>(u_input.d.x, 0u, 0u)))));
    let var_2 = func_6(Struct_1(0u, !var_0, ~var_1.a.c));
    var var_3 = var_1.a.b;
    let var_4 = true;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = u_input.c.x;
    var var_2 = vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zy, u_input.e.wz), func_3(vec2<u32>(var_1, 43767u), var_0, Struct_2(Struct_1(var_1, var_0, u_input.c), Struct_1(var_1, var_0, u_input.c), 19022i), vec2<i32>(72721i, u_input.a.x)).zx), -6780i), -9635i, i32(-1i) * -2147483647i, abs(u_input.e.x));
    var var_3 = Struct_1(countOneBits(_wgslsmith_add_u32(1293u, ~4294967295u)), !any(select(!vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, true, var_0, var_0), true)), min(u_input.c, vec3<u32>(2606u, 38568u, ~firstLeadingBit(var_1))));
    var_2 = reverseBits(-vec4<i32>(-1i, ~u_input.e.x >> (min(u_input.c.x, u_input.d.x) % 32u), 732i, -21088i));
    var var_4 = abs(reverseBits(_wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_add_i32(-1i, var_2.x), u_input.a.x)));
    var_4 = select(~var_2.x, 47296i, true);
    var_2 = select(-vec4<i32>(_wgslsmith_clamp_i32(select(-10055i, var_2.x, var_0), 17627i, _wgslsmith_add_i32(var_2.x, u_input.e.x)), countOneBits(_wgslsmith_dot_vec2_i32(u_input.e.ww, u_input.b.xw)), _wgslsmith_dot_vec4_i32(vec4<i32>(66718i, -1i, -2147483647i, u_input.b.x), u_input.e) ^ ~2147483647i, _wgslsmith_add_i32(u_input.b.x, var_2.x) << (31439u % 32u)), vec4<i32>(14481i, _wgslsmith_sub_i32(~(-1i), 42715i), u_input.b.x, -abs(i32(-1i) * -2147483647i)), all(!select(vec3<bool>(false, var_3.b, true), !vec3<bool>(true, var_3.b, true), !vec3<bool>(var_3.b, false, false))));
    var_4 = _wgslsmith_dot_vec4_i32(vec4<i32>(-12984i, ~0i, var_2.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_2.x, u_input.e.x), var_2.x)) & (u_input.e & (u_input.b | u_input.e)), min(_wgslsmith_add_vec4_i32(~(~vec4<i32>(var_2.x, 0i, 1i, u_input.b.x)), -u_input.b), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(-(~(~var_2.x)), Struct_1(func_6(Struct_1(u_input.c.x, var_3.b, u_input.c)).a.a, true, ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.c.x, var_1, var_1), vec3<u32>(var_1, 4294967295u, 47317u))), Struct_1(37206u, all(!vec2<bool>(var_0, var_0)), vec3<u32>(0u << (u_input.c.x % 32u), ~1u, u_input.d.x))).a, var_3.a, _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, var_1), var_3.c.xx), vec2<u32>(u_input.c.x, u_input.d.x)), _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(u_input.d.x), 4294967295u), vec2<u32>(_wgslsmith_add_u32(var_1, var_3.c.x), ~1u)), _wgslsmith_div_vec2_u32(vec2<u32>(var_3.c.x, 63272u), vec2<u32>(u_input.c.x, 91933u)) >> (_wgslsmith_clamp_vec2_u32(min(u_input.c.xz, u_input.c.yx), vec2<u32>(102866u, var_1), ~u_input.d) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_3.c.x, var_1, 4294967295u))), var_1), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))));
}

