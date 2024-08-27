struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, 1i, -1i);

var<private> global1: array<Struct_4, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = 256f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-320f * -354f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(707f)), _wgslsmith_f_op_f32(step(1757f, -1158f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(115f, 113f)) + 1000f))));
    var var_1 = _wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    global1 = array<Struct_4, 8>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(793f, _wgslsmith_f_op_f32(floor(-668f)), 1f, _wgslsmith_f_op_f32(step(-1517f, -786f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1452f, 1953f, 1472f, 846f)))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1489f + _wgslsmith_f_op_f32(f32(-1f) * -397f)), _wgslsmith_f_op_f32(abs(-960f)), -520f, -615f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-353f)) - _wgslsmith_f_op_f32(769f - 1894f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -971f) * _wgslsmith_f_op_f32(select(892f, 1000f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(934f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(137f))))));
    return u_input.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = Struct_4(_wgslsmith_clamp_u32(arg_3, arg_3, ~4294967295u));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = var_1.a.b;
    var_1 = Struct_5(Struct_3(u_input.a, !(!(!vec2<bool>(false, arg_1.d.c.b.b))), var_1.a.c, Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, arg_1.c.c.a.x, arg_1.c.c.b.a, 1i), arg_1.a.c.a), var_1.a.c.b, true == any(vec3<bool>(false, false, false))), var_0.a), arg_0, var_1.a, Struct_3(~arg_1.a.a, vec2<bool>(!(arg_1.c.a.x != arg_2), any(vec4<bool>(var_2.x, false, arg_0.x, var_1.d.c.c))), var_1.c.c, var_1.a.c, arg_1.c.d.b.e.x), firstLeadingBit(firstTrailingBit(-1i)));
    return max(firstTrailingBit(global0.x), firstLeadingBit(_wgslsmith_mult_i32(-2147483647i, 4727i >> (abs(var_0.a) % 32u))));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_4(21845u);
    let var_1 = u_input.d;
    global0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32((i32(-1i) * -1i) << ((81278u ^ u_input.a.x) % 32u), -reverseBits(-32918i)), ~var_1), 0i, _wgslsmith_div_i32(2147483647i | ~_wgslsmith_dot_vec3_i32(global0.ywy, vec3<i32>(u_input.d, u_input.d, var_1)), 0i), 1i);
    let var_2 = func_4(vec2<bool>(all(vec4<bool>(false, true, true, any(vec2<bool>(false, false)))), true), Struct_5(Struct_3(u_input.c, select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(true, false, true)), Struct_2(vec4<i32>(13832i, 1i, 14837i, var_1), Struct_1(-34232i, false, u_input.d, global0.wy, vec2<u32>(u_input.b, 27937u)), any(vec2<bool>(false, false))), Struct_2(firstLeadingBit(vec4<i32>(global0.x, global0.x, var_1, 0i)), Struct_1(2147483647i, true, -50337i, vec2<i32>(-19047i, 18858i), vec2<u32>(40148u, 51654u)), true), ~var_0.a), !vec2<bool>(var_0.a <= u_input.a.x, true), Struct_3(~(~vec3<u32>(var_0.a, 0u, u_input.b)), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_2(-vec4<i32>(2147483647i, global0.x, -91830i, 2147483647i), Struct_1(52863i, false, var_1, global0.ww, vec2<u32>(8255u, 0u)), true), Struct_2(vec4<i32>(global0.x, var_1, 0i, u_input.d) | vec4<i32>(u_input.d, 24727i, 0i, 0i), Struct_1(-42601i, false, var_1, vec2<i32>(-1i, u_input.d), u_input.c.zy), all(vec3<bool>(false, false, true))), func_3()), Struct_3((u_input.a ^ vec3<u32>(u_input.b, 0u, 0u)) << (~u_input.c % vec3<u32>(32u)), vec2<bool>(true, true), Struct_2(vec4<i32>(u_input.d, u_input.d, -24395i, 30929i), Struct_1(u_input.d, true, 4696i, global0.zy, u_input.a.zz), any(vec3<bool>(true, false, false))), Struct_2(~vec4<i32>(u_input.d, u_input.d, 65126i, -25454i), Struct_1(6930i, false, 25549i, vec2<i32>(var_1, 1i), vec2<u32>(4294967295u, u_input.b)), true), u_input.b), _wgslsmith_mult_i32(firstTrailingBit(u_input.d), select(~u_input.d, u_input.d, true))), var_0.a, ~0u);
    var var_3 = !(!(!(0u != var_0.a) & true));
    return Struct_5(Struct_3(~(~vec3<u32>(15971u, u_input.a.x, var_0.a)) ^ min(~vec3<u32>(14963u, var_0.a, u_input.b), ~vec3<u32>(u_input.a.x, 15310u, var_0.a)), vec2<bool>(true, true), Struct_2(max(vec4<i32>(var_1, u_input.d, u_input.d, u_input.d) ^ vec4<i32>(0i, -2147483647i, global0.x, 48826i), vec4<i32>(var_2, -17327i, var_1, 2016i) << (vec4<u32>(var_0.a, u_input.b, 0u, 0u) % vec4<u32>(32u))), Struct_1(var_2 >> (0u % 32u), true, abs(var_2), ~vec2<i32>(var_2, 37361i), u_input.a.zx), true), Struct_2(~vec4<i32>(-11190i, -1i, var_2, 32927i), Struct_1(2147483647i, true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, var_1, global0.x), vec4<i32>(u_input.d, 1i, var_1, 12418i)), _wgslsmith_add_vec2_i32(global0.xw, global0.zx), ~vec2<u32>(1u, 4294967295u)), select(any(vec2<bool>(false, true)), true, true)), 41627u), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !vec2<bool>(true, all(vec2<bool>(true, false)))), Struct_3(u_input.a, vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), Struct_2(~select(vec4<i32>(var_1, 2147483647i, u_input.d, 25555i), vec4<i32>(u_input.d, var_1, -16324i, global0.x), false), Struct_1(firstLeadingBit(12763i), true, -18661i, global0.xx, u_input.a.yz << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), (-26993i & var_1) <= ~24953i), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, var_2, -23210i) & vec4<i32>(20126i, u_input.d, -4406i, global0.x), vec4<i32>(u_input.d, var_1, global0.x, u_input.d)), Struct_1(func_4(vec2<bool>(false, false), Struct_5(Struct_3(u_input.c, vec2<bool>(true, false), Struct_2(vec4<i32>(-25785i, u_input.d, -1i, -31668i), Struct_1(u_input.d, false, 96557i, global0.wx, u_input.c.xx), false), Struct_2(vec4<i32>(var_1, -1568i, 2147483647i, u_input.d), Struct_1(1i, true, global0.x, global0.xw, vec2<u32>(u_input.c.x, 2777u)), true), 0u), vec2<bool>(true, false), Struct_3(u_input.c, vec2<bool>(true, false), Struct_2(vec4<i32>(-47713i, -1i, -14269i, 24358i), Struct_1(2147483647i, false, u_input.d, vec2<i32>(global0.x, -2147483647i), vec2<u32>(var_0.a, u_input.c.x)), false), Struct_2(vec4<i32>(1i, 2147483647i, u_input.d, var_1), Struct_1(7555i, true, u_input.d, vec2<i32>(var_2, 1i), u_input.c.zx), false), var_0.a), Struct_3(vec3<u32>(0u, 4294967295u, var_0.a), vec2<bool>(false, false), Struct_2(vec4<i32>(-50721i, 1i, -1i, 15379i), Struct_1(2147483647i, false, var_2, vec2<i32>(var_1, 5629i), vec2<u32>(var_0.a, u_input.c.x)), false), Struct_2(vec4<i32>(var_1, var_2, -2147483647i, -24658i), Struct_1(var_2, true, -1i, vec2<i32>(var_1, u_input.d), u_input.a.zz), false), 4294967295u), var_1), u_input.b, 59086u), false, 40114i, vec2<i32>(1i, var_2), ~vec2<u32>(9005u, u_input.b)), all(vec4<bool>(true, true, false, false))), var_0.a), Struct_3(vec3<u32>(countOneBits(min(u_input.b, var_0.a)), u_input.c.x, u_input.a.x), vec2<bool>(true, true), Struct_2(vec4<i32>(_wgslsmith_sub_i32(20435i, -1i), ~global0.x, 0i, -1i), Struct_1(6994i, true, -1i, global0.zw, abs(u_input.c.xx)), !any(vec2<bool>(false, true))), Struct_2(firstTrailingBit(~vec4<i32>(var_2, -2147483647i, u_input.d, u_input.d)), Struct_1(1i, false, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, var_1), global0.zw), global0.wz | vec2<i32>(9161i, -6569i), ~vec2<u32>(1u, var_0.a)), true), 4294967295u), _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, global0.x), vec4<i32>(-17777i, var_2, u_input.d, 0i)), vec4<i32>(30939i, 2147483647i, u_input.d, var_1) | vec4<i32>(-13637i, u_input.d, global0.x, 0i)), ~select(-vec4<i32>(0i, var_2, -30203i, -30618i), vec4<i32>(0i, 0i, 0i, global0.x), true)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = func_2();
    var var_1 = -1212f;
    var var_2 = ~func_3();
    global0 = arg_0.d.a;
    let var_3 = -589f;
    return select(select(!(!select(vec3<bool>(arg_1.x, false, arg_3.c.b.b), vec3<bool>(arg_0.b.x, arg_0.c.b.b, var_0.b.x), vec3<bool>(arg_0.c.b.b, arg_1.x, true))), select(select(select(vec3<bool>(arg_3.b.x, false, arg_0.d.c), vec3<bool>(true, arg_0.b.x, true), false), !vec3<bool>(arg_3.c.b.b, true, arg_0.d.b.b), any(vec2<bool>(arg_1.x, var_0.c.b.x))), select(vec3<bool>(false, false, var_0.b.x), !vec3<bool>(false, var_0.d.c.b.b, false), arg_1.x), arg_3.b.x), !vec3<bool>(arg_1.x, arg_3.c.b.b, select(arg_0.b.x, var_0.d.c.b.b, false))), !(!select(!vec3<bool>(arg_0.d.b.b, true, arg_3.b.x), !vec3<bool>(var_0.a.d.b.b, arg_3.b.x, arg_1.x), select(vec3<bool>(arg_1.x, arg_0.b.x, false), vec3<bool>(arg_0.d.c, false, true), arg_1.x))), var_0.d.c.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(u_input.c.xx);
    var var_1 = ~select(global0.xz, vec2<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(global0.wyz, vec3<i32>(global0.x, -35455i, u_input.d))), u_input.d), vec2<bool>(false, any(func_1(Struct_3(vec3<u32>(u_input.a.x, 3675u, u_input.b), vec2<bool>(false, false), Struct_2(vec4<i32>(u_input.d, u_input.d, global0.x, -30214i), Struct_1(u_input.d, false, global0.x, global0.zz, vec2<u32>(0u, var_0.x)), true), Struct_2(vec4<i32>(u_input.d, -31156i, u_input.d, 2147483647i), Struct_1(0i, true, global0.x, vec2<i32>(global0.x, global0.x), vec2<u32>(44430u, 1u)), true), u_input.b), vec2<bool>(true, false), vec2<i32>(46611i, global0.x), Struct_3(vec3<u32>(1u, var_0.x, 0u), vec2<bool>(false, false), Struct_2(vec4<i32>(u_input.d, 28685i, global0.x, 1i), Struct_1(global0.x, true, u_input.d, vec2<i32>(2147483647i, u_input.d), vec2<u32>(var_0.x, u_input.a.x)), true), Struct_2(vec4<i32>(global0.x, 14420i, global0.x, u_input.d), Struct_1(-89097i, false, -2147483647i, vec2<i32>(27358i, 57990i), u_input.a.xy), false), 14279u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1538f, _wgslsmith_f_op_f32(-485f * 1682f), _wgslsmith_f_op_f32(f32(-1f) * -486f), -728f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1467f + -245f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f - -248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-787f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-573f))))));
    let var_3 = vec2<i32>(_wgslsmith_clamp_i32(firstTrailingBit(-_wgslsmith_mult_i32(global0.x, u_input.d)), -10138i, _wgslsmith_add_i32(-8247i, u_input.d)), -2147483647i);
    global0 = abs(-vec4<i32>(func_4(vec2<bool>(true, true), func_2(), u_input.a.x, _wgslsmith_mult_u32(4294967295u, 0u)), u_input.d, -_wgslsmith_sub_i32(30669i, var_1.x), _wgslsmith_mult_i32(-23361i, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.yzz)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(453f)))), 1021f, _wgslsmith_f_op_f32(floor(686f)))));
}

