struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<u32>,
    d: f32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, true, true));

var<private> global1: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    global0 = array<vec3<bool>, 1>();
    global1 = vec3<i32>(7411i, _wgslsmith_mod_i32(1i, arg_0.b.b.a.x), abs(-29765i));
    global1 = -countOneBits(vec3<i32>(20347i, u_input.e, firstTrailingBit(-2147483647i) & -9313i));
    var var_0 = ~0u;
    let var_1 = u_input.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1799f, arg_0.b.a));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_4(Struct_3(Struct_1(select(countOneBits(global1.zz), firstLeadingBit(vec2<i32>(u_input.a, -1i)), true)), Struct_2(arg_0, Struct_1(global1.zx)), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_1.x, 6647u, u_input.c.x), ~arg_1) ^ u_input.c, vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(global1.xz), Struct_2(408f, Struct_1(vec2<i32>(25373i, global1.x))), vec3<u32>(arg_1.x, 1u, u_input.d), vec3<f32>(arg_0, -1000f, 591f)), -1287f, vec2<bool>(true, true))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -923f))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))), Struct_1(firstLeadingBit(vec2<i32>(-16399i, global1.x)))), ~vec4<u32>(min(~0u, u_input.d), 1u, 0u, ~abs(arg_1.x)), 986f);
    global0 = array<vec3<bool>, 1>();
    let var_1 = (~(~u_input.e) ^ -15541i) <= _wgslsmith_clamp_i32(reverseBits(0i), ~(~1i), u_input.e);
    global1 = _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(global1.x, global1.x), _wgslsmith_mod_i32(-19905i, 1i)), select(vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(u_input.b, u_input.b, -1i) ^ vec3<i32>(-79566i, -8120i, -2907i), vec3<bool>(var_1, var_1, false)), -vec3<i32>(global1.x, 0i, 24852i) | -vec3<i32>(global1.x, u_input.e, var_0.b.b.a.x))), firstLeadingBit(-vec3<i32>(-9100i, var_0.b.b.a.x >> (3026u % 32u), _wgslsmith_clamp_i32(-12683i, -2147483647i, global1.x))));
    var var_2 = ~(~49921u);
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.d.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-158f, -895f))))), arg_0), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(arg_0 * var_0.a.b.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_0.a.b.a) + var_0.a.d.zx))))));
}

fn func_4(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec3_i32(~min(abs(vec3<i32>(-1i, u_input.a, -2147483647i)), vec3<i32>(1i, global1.x, 7809i)), (abs(vec3<i32>(u_input.a, 2147483647i, 16109i)) | ~vec3<i32>(u_input.e, 0i, -26264i)) << (vec3<u32>(4294967295u, 0u, u_input.c.x) % vec3<u32>(32u))) << (~u_input.c % vec3<u32>(32u));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(14677u, u_input.c.x, 7044u, u_input.c.x) >> (vec4<u32>(u_input.d, u_input.c.x, u_input.d, 6060u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 0u, abs(u_input.d), max(1u, 2777u))), vec4<u32>(u_input.c.x, 0u, 15888u, ~1u)) >> (_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.d, u_input.d, 7978u, 1u) >> (abs(vec4<u32>(u_input.d, 26764u, u_input.d, 114431u)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(25104u, 37253u, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.d, 0u, u_input.c.x)), vec4<u32>(13854u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.d, 1u, u_input.d)), u_input.c.x, ~29696u))) % vec4<u32>(32u));
}

fn func_1() -> Struct_1 {
    let var_0 = ~func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1125f, 655f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1058f) - vec2<f32>(1008f, -300f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(763f, 246f) * vec2<f32>(-151f, 1532f)) - _wgslsmith_f_op_vec2_f32(func_2(206f, u_input.c))), _wgslsmith_dot_vec4_u32(vec4<u32>(27250u, 4294967295u, 4294967295u, 21095u), vec4<u32>(u_input.c.x, u_input.d, u_input.c.x, 41644u)) >= u_input.d)));
    let var_1 = _wgslsmith_div_f32(846f, 1795f);
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(1u, 34227u)), 88900u);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-768f, -493f, var_1, var_1) + vec4<f32>(var_1, var_1, var_1, 771f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1423f, 1507f, -2025f) - vec4<f32>(var_1, 116f, var_1, var_1)), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(815f, -1238f, var_1, -1000f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, 1384f, -1245f), vec4<f32>(var_1, var_1, -1127f, var_1))), 2341f != var_1))))))));
    let var_4 = any(!global0[_wgslsmith_index_u32(u_input.d, 1u)]);
    return Struct_1(~global1.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_4(Struct_3(Struct_1(-var_0.a), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)), func_1()), vec3<u32>(~u_input.d, min(7638u, 4294967295u), u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(144f, -412f, 491f) + vec3<f32>(-987f, -458f, 808f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1095f, 2389f, 2227f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(431f, -454f, -196f))))), Struct_2(_wgslsmith_f_op_f32(-496f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1377f)))), func_1()), ~abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 3922u, 1u, u_input.c.x), vec4<u32>(u_input.d, 1u, 26234u, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(20634u, 0u, u_input.d, 3922u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(781f, _wgslsmith_f_op_f32(-211f + -584f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-147f, 1000f))) - -511f), all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)))));
    global1 = _wgslsmith_mult_vec3_i32(~vec3<i32>(i32(-1i) * -global1.x, u_input.e, min(13067i, select(41667i, -1i, true))), ~(vec3<i32>(-1i) * -countOneBits(vec3<i32>(var_0.a.x, var_1.b.b.a.x, -49313i))));
    var var_2 = _wgslsmith_mod_u32(26102u, 1u);
    let var_3 = Struct_4(Struct_3(func_1(), Struct_2(1708f, Struct_1(_wgslsmith_mod_vec2_i32(var_0.a, global1.yx))), vec3<u32>(var_1.c.x, 86641u >> (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u), u_input.c.x), vec3<f32>(var_1.b.a, -451f, 1000f)), Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2217f)), 1781f)), func_1()), _wgslsmith_add_vec4_u32(vec4<u32>(abs(max(0u, 50421u)), 105u, abs(abs(var_1.a.c.x)), var_1.c.x ^ func_4(vec2<f32>(-353f, -1829f)).x), vec4<u32>(54507u, _wgslsmith_sub_u32(u_input.c.x, 4294967295u << (u_input.d % 32u)), var_1.c.x, ~1u)), _wgslsmith_f_op_f32(-var_1.d));
    let var_4 = Struct_3(var_3.b.b, Struct_2(var_1.a.b.a, Struct_1(global1.xy)), var_1.c.xyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.a.d))))));
    let var_5 = var_1.d;
    global1 = select(vec3<i32>(~(-2147483647i), 1i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1607i, var_0.a.x, -31999i)), -min(vec3<i32>(1i, var_3.b.b.a.x, 0i), vec3<i32>(var_3.a.a.a.x, var_3.a.a.a.x, var_1.b.b.a.x)))), vec3<i32>(var_3.a.a.a.x, -2147483647i, reverseBits(~(-2147483647i))) | firstTrailingBit(~vec3<i32>(1i, var_0.a.x, global1.x)), !select(global0[_wgslsmith_index_u32(~1u, 1u)], select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(var_1.c.x, 1u)]), true), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~82830u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.d.x)))));
}

