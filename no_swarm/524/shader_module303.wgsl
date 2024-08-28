struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 25741i, 0u, 45389u, 0u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = all(select(vec3<bool>(true, true, true), !vec3<bool>(true, true, any(vec2<bool>(true, true))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true))));
    var var_1 = Struct_2(Struct_1(1u, -1i << (~_wgslsmith_div_u32(4294967295u, global0.e) % 32u), 15198u, abs(global0.a), arg_0.a));
    let var_2 = Struct_2(arg_0);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f));
    var var_4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(1375f - -401f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -366f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(458f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(281f, 781f) * vec2<f32>(-1780f, -242f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(783f, -545f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-166f, 1000f) + vec2<f32>(569f, -515f)), vec2<f32>(-807f, 1171f)))))));
    return -781f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(~u_input.a, -1i, u_input.a, (u_input.b.x & arg_0.x) << (~u_input.a % 32u), ~_wgslsmith_mod_u32(global0.e, global0.a))), abs(arg_1.zz), Struct_2(Struct_1(countOneBits(arg_0.x) << (1u % 32u), firstTrailingBit(_wgslsmith_div_i32(46298i, global0.b)), global0.e, _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.x, global0.d), _wgslsmith_sub_u32(u_input.b.x, global0.e)), abs(arg_0.x))), -_wgslsmith_clamp_i32(arg_1.x, 58739i | _wgslsmith_add_i32(arg_1.x, 1i), 26011i), ~_wgslsmith_clamp_i32(reverseBits(-global0.b), -36233i, i32(-1i) * -31780i));
    var var_1 = arg_1.x;
    var_1 = -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(15400i, var_0.b.x), arg_1.yw), ~vec2<i32>(global0.b, -2147483647i)), -_wgslsmith_add_vec2_i32(arg_1.ww, vec2<i32>(var_0.e, 0i))) >> (~var_0.a.a.a % 32u);
    let var_2 = arg_1.zx;
    return _wgslsmith_f_op_f32(718f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.c.a, var_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f * 448f) * _wgslsmith_f_op_f32(select(375f, 387f, true))) + -1073f)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(379f - -1491f)) * 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) * _wgslsmith_f_op_f32(func_2(vec2<u32>(54346u, 0u), vec4<i32>(-11641i, 2147483647i, 0i, 0i)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(select(u_input.b, vec2<u32>(u_input.a, u_input.b.x), vec2<bool>(true, true)), ~vec4<i32>(24779i, global0.b, -60981i, global0.b))) - 347f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f), _wgslsmith_f_op_f32(1055f + -111f)))));
    let var_1 = -(~_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 1i), global0.b));
    global0 = Struct_1(~1u, _wgslsmith_div_i32(global0.b, var_1), global0.e, _wgslsmith_sub_u32(global0.d ^ 20375u, abs(2256u)), u_input.a);
    global0 = Struct_1(81721u, -17458i, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, u_input.b.x) ^ vec4<u32>(u_input.a, 52870u, 9966u, 1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 1u, u_input.b.x), vec4<u32>(72265u, 56690u, 58995u, 1149u))) ^ firstTrailingBit(25949u), 70940u, 0u);
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, 188438u), global0.a), i32(-1i) * -7593i, 42671u, ~0u, ~(~1u))), select(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.b, -115463i), -vec2<i32>(global0.b, var_1)), max(min(global0.b, -33517i), 1724i)), vec2<i32>(_wgslsmith_sub_i32(var_1, countOneBits(-5649i)), 2147483647i), true), Struct_2(Struct_1(global0.c, max(0i, var_1), firstLeadingBit(~0u), u_input.b.x, 0u)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(global0.b, global0.b), 1i, countOneBits(-19118i), abs(0i)) >> (~(~vec4<u32>(global0.d, 4294967295u, u_input.b.x, 516u)) % vec4<u32>(32u)), vec4<i32>(30318i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, global0.b, var_1), vec3<i32>(25759i, global0.b, global0.b))), select(-15510i, 51855i, global0.b <= 0i), _wgslsmith_mult_i32(var_1, -var_1))), global0.b);
    return Struct_1(7829u, ~var_2.a.a.b << ((~_wgslsmith_add_u32(global0.e, global0.c) << (~_wgslsmith_div_u32(0u, u_input.b.x) % 32u)) % 32u), 4294967295u, ~_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(global0.d, 0u)), vec2<u32>(53533u, u_input.b.x) & ~vec2<u32>(global0.c, 4671u)), 40907u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.c, 4294967295u) ^ ~global0.e, ~_wgslsmith_dot_vec3_u32(vec3<u32>(24407u, 51694u, 82668u), vec3<u32>(1u, global0.c, 81826u))), u_input.b.x), 10647i, 4294967295u, ~_wgslsmith_mod_u32(~(global0.e << (28411u % 32u)), _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 1u, _wgslsmith_mod_u32(global0.a, 1u))), ~global0.a);
    var var_0 = Struct_1(~69707u, global0.b, 1u, _wgslsmith_mult_u32(54602u, _wgslsmith_sub_u32(1u, func_1().d)), u_input.a);
    var_0 = func_1();
    var var_1 = min(reverseBits(5756u), _wgslsmith_div_u32(31072u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(13921u, global0.c), ~(~1u))));
    var_1 = global0.d;
    var_1 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(select(~u_input.b, ~vec2<u32>(56180u, u_input.b.x), vec2<bool>(true, true)), select(~u_input.b, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.c), vec2<u32>(global0.a, u_input.b.x)), u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), abs(countOneBits(-countOneBits(vec4<i32>(1i, var_0.b, global0.b, -23189i)))));
}

