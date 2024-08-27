struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<vec4<u32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_5) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.b.b)))))));
    var var_1 = u_input.d;
    var_0 = Struct_1(vec2<f32>(-2445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(select(11433u, 57399u, arg_0.c), 12u)]) - _wgslsmith_f_op_f32(-var_0.a.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a));
    var var_2 = vec2<u32>(u_input.c | u_input.e, 0u);
    return -486f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> vec2<i32> {
    var var_0 = Struct_5(2147483647i, Struct_2(false, arg_1.a.x), true, vec4<bool>(select(!all(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, false, false, true)), any(vec2<bool>(true, true))), true, all(vec2<bool>(true, all(vec4<bool>(false, false, true, false)))), any(vec2<bool>(true, true))));
    global0 = array<f32, 12>();
    return vec2<i32>(u_input.a, var_0.a & firstTrailingBit(_wgslsmith_mult_i32(-23273i, var_0.a))) & vec2<i32>(-1i, countOneBits(firstTrailingBit(var_0.a)) & 8657i);
}

fn func_2(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = all(select(arg_0, arg_0, !arg_0));
    let var_1 = Struct_5(-60993i, Struct_2(true, global0[_wgslsmith_index_u32(firstTrailingBit(1u), 12u)]), arg_0.x, !select(vec4<bool>(true, true, any(arg_0.zx), arg_0.x), select(!vec4<bool>(arg_0.x, false, true, false), vec4<bool>(true, false, true, false), select(arg_0.x, arg_0.x, arg_0.x)), !(!vec4<bool>(arg_0.x, false, arg_0.x, false))));
    var var_2 = -(func_4(var_1.b.b, Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(56638u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.b, global0[_wgslsmith_index_u32(u_input.e, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)], var_1.b.b))), _wgslsmith_f_op_f32(func_3(var_1))) >> (_wgslsmith_div_vec2_u32(u_input.b.xz, ~u_input.b.zx) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, var_1.a) ^ -vec2<i32>(var_1.a, 49121i), abs(vec2<i32>(var_1.a, 24132i)) | vec2<i32>(var_1.a, var_1.a)), u_input.d);
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.b.xz << (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))) << (1u % 32u), ~u_input.c), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zx, ~u_input.b.zy & (vec2<u32>(1u, u_input.e) | vec2<u32>(u_input.e, 14718u))), vec2<u32>(~(~0u), (0u >> (0u % 32u)) << (~u_input.b.x % 32u)), select(firstTrailingBit(u_input.b.yz >> (vec2<u32>(57053u, u_input.e) % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(u_input.e, 120329u)), vec2<bool>(any(var_1.d), !var_1.b.a))));
    var var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(~var_2.x, ~_wgslsmith_mult_i32(7336i, -var_2.x), 53440i, abs(var_2.x)), ~reverseBits(select(vec4<i32>(-7838i, 21926i, var_1.a, -48230i), vec4<i32>(-1i, var_1.a, -7670i, -1i), var_1.d) | vec4<i32>(var_1.a, var_2.x, var_2.x, var_2.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-190f * var_1.b.b), var_1.b.b, _wgslsmith_f_op_f32(f32(-1f) * -1409f), _wgslsmith_f_op_f32(sign(var_1.b.b))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1457f, global0[_wgslsmith_index_u32(var_3.x, 12u)], global0[_wgslsmith_index_u32(var_3.x, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-114f, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(2885u, 12u)], 1015f))))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = vec4<i32>(~firstTrailingBit(_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(u_input.d, u_input.a, u_input.d))), _wgslsmith_clamp_i32(select(-(-2147483647i ^ u_input.d), 1i, _wgslsmith_f_op_f32(f32(-1f) * -1160f) > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(17531u, 12u)])), abs(_wgslsmith_add_i32(countOneBits(u_input.a), _wgslsmith_add_i32(-5041i, u_input.d))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f * var_0.a.x)), arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_3))), var_0.a.x).x), u_input.a, _wgslsmith_add_i32(~(-u_input.a), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.d, u_input.d, 23863i, u_input.a)), -abs(vec4<i32>(2147483647i, u_input.a, u_input.a, -31459i)))));
    var var_2 = countOneBits(~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.b.x), arg_0.x, arg_0.x, u_input.c) & arg_0);
    var_2 = vec4<u32>(~(~(~(~1u))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.x, arg_0.x, 89362u, var_2.x), global1[_wgslsmith_index_u32(~u_input.e, 14u)] ^ _wgslsmith_sub_vec4_u32(arg_0, vec4<u32>(1u, 39696u, u_input.e, arg_0.x))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~59385u), _wgslsmith_add_u32(161596u, u_input.c >> (var_2.x % 32u))), 14u)]), ~countOneBits(u_input.e), _wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(51010u), 65495u), 1u));
    var_2 = vec4<u32>(firstLeadingBit(~_wgslsmith_add_u32(arg_0.x >> (arg_0.x % 32u), _wgslsmith_sub_u32(4294967295u, u_input.c))), var_2.x, _wgslsmith_mult_u32(min(arg_0.x, 1u), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(42824u, arg_0.x), var_2.xz, vec2<bool>(true, false)), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(13647u, 4294967295u), vec2<u32>(50825u, var_2.x))))), _wgslsmith_clamp_u32(58452u, 0u, abs(_wgslsmith_dot_vec3_u32(u_input.b >> (u_input.b % vec3<u32>(32u)), vec3<u32>(arg_0.x, 19536u, var_2.x)))));
    return Struct_2(func_4(-2485f, Struct_1(arg_2.a), _wgslsmith_f_op_vec4_f32(-arg_3), global0[_wgslsmith_index_u32(u_input.c, 12u)]).x < u_input.a, _wgslsmith_f_op_f32(floor(arg_3.x)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_3;
    global1 = array<vec4<u32>, 14>();
    global0 = array<f32, 12>();
    var var_1 = -abs(vec3<i32>(u_input.d, 0i ^ _wgslsmith_mult_i32(1i, arg_2.x), arg_2.x));
    global1 = array<vec4<u32>, 14>();
    return func_5(vec4<u32>(u_input.b.x, u_input.e, u_input.c, u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(488f, 1286f, _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -944f), arg_3.d))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 - arg_1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1972f, var_0.b.a.x, -751f)), _wgslsmith_f_op_vec3_f32(trunc(arg_1))))), arg_3.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, -359f, global0[_wgslsmith_index_u32(16332u, 12u)], global0[_wgslsmith_index_u32(23593u, 12u)]))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(var_0.d, false, true)))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: bool) -> Struct_2 {
    global1 = array<vec4<u32>, 14>();
    global0 = array<f32, 12>();
    var var_0 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, 2147483647i), vec3<i32>(arg_1.a, 7372i, 4916i)), vec3<i32>(2147483647i, ~arg_1.a, firstTrailingBit(1i))), vec3<i32>(-18615i, arg_1.a, ~1i) << (vec3<u32>(abs(0u), ~u_input.b.x, u_input.c) % vec3<u32>(32u)));
    let var_1 = Struct_5(u_input.a >> (~u_input.e % 32u), Struct_2(func_1(_wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(false, arg_1.d.x, arg_2))).x, _wgslsmith_f_op_vec3_f32(-arg_0), vec4<i32>(arg_1.a, -59098i, -24571i, var_0.x) << (~global1[_wgslsmith_index_u32(u_input.e, 14u)] % vec4<u32>(32u)), Struct_4(Struct_1(arg_0.yy), Struct_1(arg_0.yy), arg_0.x, false)).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1495f + _wgslsmith_f_op_f32(arg_1.b.b + -1000f))))), any(arg_1.d), select(select(!select(vec4<bool>(arg_2, false, false, false), arg_1.d, arg_1.d), !(!arg_1.d), !(!arg_1.d)), !(!arg_1.d), vec4<bool>(all(!arg_1.d.xx), false, arg_1.b.a || arg_2, true)));
    let var_2 = _wgslsmith_sub_vec3_i32(~(~(~vec3<i32>(56576i, 2147483647i, var_0.x))), ~max(vec3<i32>(select(3984i, 39451i, var_1.b.a), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.a, var_0.x), vec3<i32>(var_1.a, arg_1.a, var_0.x))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_1.a, var_0.x), vec3<i32>(var_1.a, 2147483647i, 3616i)), max(vec3<i32>(2151i, -22171i, arg_1.a), vec3<i32>(var_1.a, 1i, 1i)))));
    return func_1(global0[_wgslsmith_index_u32(~u_input.c, 12u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(!vec3<bool>(false, arg_1.d.x, false))).wzz)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1404f, 866f, arg_0.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(52460u, 12u)], arg_0.x, -2292f), _wgslsmith_f_op_vec3_f32(-arg_0), all(vec3<bool>(arg_2, false, true))))))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, var_2.x, 0i), var_2), _wgslsmith_div_vec3_i32(var_2, vec3<i32>(-2147483647i, 0i, 20164i)) << (firstLeadingBit(u_input.b) % vec3<u32>(32u))), u_input.d & -1i, u_input.a, -(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -24179i, u_input.a, u_input.a), vec4<i32>(var_1.a, u_input.d, var_0.x, var_2.x)) | u_input.a)), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yz) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-894f, arg_1.b.b) * arg_0.xy))), Struct_1(arg_0.yx), var_1.b.b, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!(!vec3<bool>(any(vec2<bool>(true, false)), false, all(vec4<bool>(false, false, true, true)))));
    let var_1 = Struct_3(func_6(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.e, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)]) * vec3<f32>(-707f, global0[_wgslsmith_index_u32(87592u, 12u)], 1000f)), vec3<f32>(-665f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(u_input.e, 12u)]))))), Struct_5(_wgslsmith_mult_i32(-u_input.d, firstLeadingBit(u_input.a)), func_1(-1422f, vec3<f32>(global0[_wgslsmith_index_u32(80844u, 12u)], -1090f, global0[_wgslsmith_index_u32(1u, 12u)]), max(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.a), vec4<i32>(-44250i, u_input.a, 5481i, 0i)), Struct_4(Struct_1(vec2<f32>(-436f, global0[_wgslsmith_index_u32(u_input.e, 12u)])), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.e, 12u)])), -253f, true)), true, select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), !(global0[_wgslsmith_index_u32(u_input.e, 12u)] >= global0[_wgslsmith_index_u32(0u, 12u)]), func_5(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.e, 14u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(u_input.e, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), Struct_1(vec2<f32>(691f, global0[_wgslsmith_index_u32(10953u, 12u)])), _wgslsmith_f_op_vec4_f32(func_2(vec3<bool>(false, true, true)))).a)), firstLeadingBit(_wgslsmith_mod_vec2_u32(~u_input.b.xz, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c), u_input.b.zz)) << (_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.e, 106280u), ~u_input.b.yx) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(7777u, 12u)]), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1926f, global0[_wgslsmith_index_u32(u_input.e, 12u)]), vec2<f32>(global0[_wgslsmith_index_u32(31595u, 12u)], 1002f), true))))))), select(u_input.b, vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(1u, 7342u)), select(u_input.c, u_input.e, false)), vec3<bool>(true, true, true)) | _wgslsmith_add_vec3_u32(u_input.b, ~vec3<u32>(u_input.e, 18226u, u_input.b.x)), true);
    global0 = array<f32, 12>();
    var var_2 = u_input.c;
    var var_3 = Struct_5(~u_input.d, func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c.a.x, 602f, var_1.a.b), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], var_1.a.b, 563f), vec3<bool>(var_1.a.a, var_1.a.a, var_1.e)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-393f, -1337f, -752f), vec3<f32>(-736f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)], 478f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], var_1.c.a.x, global0[_wgslsmith_index_u32(40037u, 12u)]))), var_1.a.a))), Struct_5(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(-8903i, u_input.a)), abs(-30097i), var_1.e), func_1(_wgslsmith_f_op_f32(-145f * -120f), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], -951f, global0[_wgslsmith_index_u32(0u, 12u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_1.b.x, 12u)], -676f, 349f)), firstTrailingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.d)), Struct_4(var_1.c, var_1.c, -509f, var_1.a.a)), var_1.a.a, !select(vec4<bool>(var_1.e, true, true, false), vec4<bool>(false, var_1.e, var_1.a.a, false), var_1.e)), var_1.e), all(select(select(vec2<bool>(false, var_1.e), !vec2<bool>(var_1.a.a, var_1.e), select(vec2<bool>(var_1.a.a, var_1.e), vec2<bool>(var_1.e, var_1.e), vec2<bool>(false, var_1.a.a))), vec2<bool>(var_1.e, true), !select(vec2<bool>(var_1.a.a, true), vec2<bool>(false, true), vec2<bool>(true, true)))), !vec4<bool>(true, var_1.e, !var_1.e, !any(vec2<bool>(false, true))));
    let var_4 = u_input.b.zy;
    let x = u_input.a;
    s_output = StorageBuffer((~_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a, u_input.a, 0i), vec3<i32>(-13416i, 38267i, var_3.a)) & -u_input.d) << ((select(~var_4.x, firstLeadingBit(52209u), var_1.a.a) | u_input.e) % 32u), _wgslsmith_div_u32(~1u, 1u));
}

