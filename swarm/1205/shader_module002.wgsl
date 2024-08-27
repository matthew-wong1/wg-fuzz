struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<f32>(-254f, -1103f), vec4<i32>(2147483647i, -1i, 2147483647i, 9286i), -263f, vec4<f32>(-818f, -444f, 508f, 370f)), Struct_2(vec3<u32>(83191u, 4294967295u, 4294967295u), vec4<u32>(0u, 8107u, 0u, 1u)), Struct_1(vec2<f32>(-1209f, -2895f), vec4<i32>(i32(-2147483648), 1828i, 0i, -24611i), 954f, vec4<f32>(157f, -736f, -171f, 1794f)), vec2<bool>(false, false), vec2<f32>(1134f, 3491f));

var<private> global1: i32 = 5946i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = arg_0;
    global1 = global0.a.b.x;
    global0 = Struct_3(global0.a, Struct_2(select(global0.b.b.yxx, global0.b.a, true == arg_0.b.x), vec4<u32>(~5246u, reverseBits(33818u), reverseBits(countOneBits(28589u)), min(~4294967295u, 24251u))), global0.c, select(arg_0.b.yy, !global0.d, select(arg_0.b.xx, select(vec2<bool>(arg_0.a, var_0.a), vec2<bool>(false, false), select(vec2<bool>(false, true), arg_0.b.zy, vec2<bool>(true, arg_0.a))), !(global0.c.b.x >= -32564i))), global0.e);
    var var_1 = Struct_4(true, !select(select(arg_0.b, select(arg_0.b, arg_0.b, true), vec3<bool>(false, global0.d.x, false)), arg_0.b, select(true, any(vec4<bool>(true, global0.d.x, true, false)), !arg_0.a)));
    var_1 = var_0;
    return global0.c.b.wxy;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.d.ww * _wgslsmith_f_op_vec2_f32(sign(arg_2.d.zy))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(max(global0.c.c, 1163f)))), _wgslsmith_f_op_vec2_f32(arg_2.d.yw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a.x, 2201f), arg_2.a, global0.d.x)))), true)), global0.c.b, arg_2.d.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(arg_2.d, vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), -1798f, _wgslsmith_f_op_f32(sign(global0.e.x)), 1188f)))));
    let var_1 = _wgslsmith_mult_vec3_i32(global0.c.b.ywx, vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(28673i, arg_1.x)), -_wgslsmith_add_i32(-arg_2.b.x, var_0.b.x), max(firstTrailingBit(~arg_2.b.x), arg_3)));
    global0 = Struct_3(Struct_1(global0.a.a, _wgslsmith_mod_vec4_i32(select(vec4<i32>(-2147483647i, 0i, -1i, -2147483647i) ^ var_0.b, global0.c.b & vec4<i32>(-2147483647i, arg_3, -2147483647i, 8469i), select(vec4<bool>(global0.d.x, true, false, false), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true), vec4<bool>(global0.d.x, false, global0.d.x, true))), -select(var_0.b, vec4<i32>(global0.a.b.x, -15997i, arg_1.x, -3707i), vec4<bool>(false, false, global0.d.x, global0.d.x))), _wgslsmith_f_op_f32(1247f + var_0.a.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1614f, 180f, 137f, 460f) * vec4<f32>(363f, 421f, var_0.a.x, -313f)), var_0.d))), Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(12437u, 1u, global0.b.a.x)) & vec3<u32>(u_input.a, 70635u, 133477u), select(vec3<u32>(u_input.a, 96401u, 49305u), select(global0.b.b.zyz, global0.b.b.xwy, true), vec3<bool>(true, true, true))), ~(vec4<u32>(113283u, arg_0, 28045u, 5786u) << (~vec4<u32>(3685u, global0.b.b.x, u_input.a, 0u) % vec4<u32>(32u)))), var_0, global0.d, vec2<f32>(959f, -308f));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-132f, global0.e.x))), var_0.a, arg_2.b.x > arg_1.x))), vec4<i32>(~1i, reverseBits(~(-29024i)), func_3(Struct_4(true, vec3<bool>(true, global0.d.x, true))).x, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.e.x))) * _wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.d, vec4<f32>(arg_2.a.x, 293f, -452f, -835f)))))), global0.b, Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(559f, arg_2.c), global0.e)), arg_2.b, -126f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, arg_2.d.x, arg_2.c, -1000f)))), vec2<bool>(global0.d.x, select(global0.d.x, global0.d.x, any(vec2<bool>(true, true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1874f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1482f + 1216f), _wgslsmith_f_op_f32(583f + -290f))), global0.c.d.x));
    let var_3 = -(arg_2.b.xwz >> (~(~(~var_2.b.a)) % vec3<u32>(32u)));
    return _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.b.a, select(abs(min(vec3<u32>(4018u, 13325u, var_2.b.a.x), vec3<u32>(5338u, var_2.b.b.x, u_input.a))), global0.b.b.yyw, select(select(vec3<bool>(true, global0.d.x, var_2.d.x), vec3<bool>(var_2.d.x, false, global0.d.x), vec3<bool>(global0.d.x, global0.d.x, false)), !vec3<bool>(var_2.d.x, false, global0.d.x), !var_2.d.x)), abs(global0.b.b.ywx)), vec3<u32>(select(1u, ~(~var_2.b.b.x), global0.d.x), var_2.b.a.x & abs(_wgslsmith_mult_u32(52392u, 1u)), max(global0.b.b.x, 12622u)));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(global0.e - _wgslsmith_f_op_vec2_f32(-global0.c.d.wx)), min(vec4<i32>(-2430i, _wgslsmith_mod_i32(-1i, global0.a.b.x), 1i, ~global0.a.b.x), vec4<i32>(global0.c.b.x, 2147483647i, -33364i, global0.a.b.x) >> (~global0.b.b % vec4<u32>(32u))), 1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(global0.c.d, vec4<f32>(global0.c.a.x, global0.e.x, global0.e.x, global0.e.x), true)))))), Struct_2(func_4(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global0.b.b, vec4<u32>(13690u, 0u, u_input.a, 4294967295u)), global0.b.b | vec4<u32>(4294967295u, 1u, global0.b.b.x, 4446u)), func_3(Struct_4(global0.d.x, vec3<bool>(global0.d.x, global0.d.x, global0.d.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.c.a), global0.a.b, _wgslsmith_f_op_f32(global0.a.a.x + global0.a.c), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.d.x, global0.c.c, -1000f, global0.e.x)))), -global0.c.b.x), ~_wgslsmith_mult_vec4_u32(global0.b.b, global0.b.b) << (~min(vec4<u32>(1u, global0.b.b.x, 1u, global0.b.a.x), global0.b.b) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.a.x, global0.a.c))))), global0.c.b, global0.a.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.d))), vec2<bool>(u_input.a > _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, global0.b.a.x), ~u_input.a), true), vec2<f32>(_wgslsmith_f_op_f32(min(-465f, -729f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1903f * _wgslsmith_f_op_f32(exp2(global0.a.d.x)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), 1652f, 1f, _wgslsmith_f_op_f32(ceil(-1190f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.d) + _wgslsmith_f_op_vec4_f32(select(global0.a.d, vec4<f32>(-2848f, global0.a.c, global0.a.d.x, -313f), select(vec4<bool>(global0.d.x, true, false, global0.d.x), vec4<bool>(var_0.d.x, true, false, false), true)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-841f - -642f), global0.c.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -962f))), global0.e.x, var_0.a.a.x)));
    var_0 = Struct_3(global0.c, global0.b, Struct_1(var_0.e, vec4<i32>(-_wgslsmith_dot_vec4_i32(global0.a.b, vec4<i32>(global0.a.b.x, 1743i, var_0.c.b.x, var_0.c.b.x)), abs(0i), reverseBits(var_0.a.b.x), _wgslsmith_mod_i32(-1i, -22683i ^ var_0.a.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * _wgslsmith_f_op_f32(abs(var_0.a.a.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.a.x, -776f, 918f, -706f), vec4<f32>(var_0.c.a.x, global0.a.c, 1442f, global0.e.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.x, -2584f, 1000f, 123f) * vec4<f32>(808f, global0.a.a.x, 617f, global0.e.x))), global0.c.d)), var_0.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c.a.x, -407f))))), vec2<f32>(var_1.x, -599f)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, var_0.c.a.x), var_0.e, var_0.d.x)) - _wgslsmith_f_op_vec2_f32(-var_1.wx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.d.x, var_0.e.x))) - _wgslsmith_f_op_vec2_f32(ceil(var_0.e))))), vec4<i32>(global0.a.b.x, global0.c.b.x, _wgslsmith_sub_i32(-21320i, -1i), -2147483647i) & vec4<i32>(var_0.a.b.x, 1i, global0.c.b.x ^ var_0.a.b.x, 4674i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-352f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.d.x) + _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2079f, _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -663f))), global0.b, global0.a, select(!select(!vec2<bool>(var_0.d.x, var_0.d.x), var_0.d, var_0.d.x & false), vec2<bool>(!global0.d.x, false & !global0.d.x), vec2<bool>(true, var_0.d.x)), var_1.wz);
    var var_3 = var_0.a;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(173f)), -598f), _wgslsmith_f_op_f32(-337f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1625f, 701f), _wgslsmith_f_op_f32(sign(var_1.x))))));
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_1 {
    global0 = Struct_3(global0.c, global0.b, global0.c, arg_2.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_1.x), global0.c.d.yx))))));
    var var_0 = Struct_4(arg_2.x, arg_2.wwy);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-390f - arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.x, 990f)))), ~(vec4<i32>(_wgslsmith_mult_i32(arg_0, global0.a.b.x), _wgslsmith_dot_vec2_i32(global0.c.b.yy, vec2<i32>(arg_0, 0i)), _wgslsmith_mult_i32(arg_0, arg_0), 20507i) | -global0.c.b), arg_1.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1772f, 868f, 546f) + vec4<f32>(-1000f, 707f, global0.c.d.x, global0.a.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1671f, global0.a.a.x, arg_1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-991f, -1289f, arg_1.x, -248f)))))));
    var var_2 = vec2<i32>(global0.a.b.x, func_3(Struct_4(all(global0.d), arg_2.ywy)).x);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-934f, var_1.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.c))), select(vec4<i32>(-2147483647i >> (global0.b.a.x % 32u), max(2440i, 7889i), global0.c.b.x, arg_0), global0.c.b, arg_2.x), 1000f, var_1.d), Struct_2(vec3<u32>(_wgslsmith_sub_u32(~u_input.a, ~u_input.a), ~(u_input.a >> (0u % 32u)), 1u), global0.b.b | countOneBits(global0.b.b)), global0.c, !vec2<bool>(!global0.d.x, select(arg_2.x, global0.d.x, all(vec3<bool>(var_0.a, false, false)))), _wgslsmith_f_op_vec2_f32(-global0.c.d.yz));
    return global0.a;
}

fn func_1() -> Struct_4 {
    global1 = -global0.a.b.x;
    let var_0 = func_5(select(~1i, ~(i32(-1i) * -global0.a.b.x), global0.d.x), vec2<f32>(1048f, _wgslsmith_f_op_f32(func_2())), !select(select(select(vec4<bool>(true, global0.d.x, true, false), vec4<bool>(global0.d.x, global0.d.x, true, false), global0.d.x), !vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x), !vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x)), vec4<bool>(any(vec4<bool>(true, global0.d.x, false, true)), !global0.d.x, global0.d.x || global0.d.x, global0.d.x), all(vec4<bool>(false, global0.d.x, global0.d.x, true)) || all(vec4<bool>(true, global0.d.x, global0.d.x, true))));
    let var_1 = Struct_2(global0.b.b.zzw, global0.b.b);
    global1 = _wgslsmith_dot_vec2_i32(global0.a.b.xw, abs(_wgslsmith_add_vec2_i32(max(-vec2<i32>(13258i, -1i), vec2<i32>(var_0.b.x, 1i)), global0.c.b.xx ^ vec2<i32>(48111i, 43516i))));
    global0 = Struct_3(global0.c, Struct_2(var_1.b.xwx, var_1.b), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.e.x), -1518f), vec4<i32>(func_5(_wgslsmith_mult_i32(var_0.b.x, global0.c.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1101f, 635f)), !vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true)).b.x, -(~2147483647i), ~var_0.b.x, firstTrailingBit(~var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_vec4_f32(-global0.c.d)), select(select(vec2<bool>(global0.d.x, false | global0.d.x), global0.d, vec2<bool>(false, false)), !global0.d, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 358f) + vec2<f32>(global0.c.a.x, global0.e.x)), !global0.d.x))), var_0.a));
    return Struct_4(true, vec3<bool>(!all(vec2<bool>(true, true)), any(select(vec4<bool>(true, false, global0.d.x, true), select(vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(true, global0.d.x, false, false), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)), vec4<bool>(global0.d.x, true, true, true))), !global0.d.x));
}

fn func_6(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-global0.c.a.x);
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.e), reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-19401i, -4975i, global0.c.b.x, global0.c.b.x), vec4<i32>(2147483647i, 2147483647i, global0.c.b.x, -2147483647i)), abs(global0.c.b))), -1785f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(global0.c.d)))) - vec4<f32>(-1000f, 100f, global0.e.x, _wgslsmith_f_op_f32(-var_0)))), global0.b, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.a.x, 1395f), global0.a.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -288f)) + _wgslsmith_f_op_vec2_f32(min(global0.c.d.yw, global0.a.d.xz)))), _wgslsmith_add_vec4_i32(countOneBits(abs(vec4<i32>(-18014i, 1i, -31189i, global0.c.b.x))), firstTrailingBit(vec4<i32>(2147483647i, global0.c.b.x, -1i, -1i) << (global0.b.b % vec4<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec4_f32(global0.c.d * vec4<f32>(var_0, 1000f, -960f, 107f))), !select(select(!vec2<bool>(arg_0.a, true), global0.d, !vec2<bool>(false, global0.d.x)), !global0.d, true), global0.e);
    var var_1 = -global0.c.b;
    global1 = -20596i;
    let var_2 = _wgslsmith_sub_i32(~1i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(max(var_1.x, var_1.x), var_1.x << (u_input.a % 32u)), ~max(var_1.x, 46954i), -countOneBits(0i)), -min(-2147483647i, countOneBits(var_1.x))));
    return Struct_4(true, func_1().b);
}

fn func_7(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    var var_0 = global0.a;
    let var_1 = Struct_2(select(arg_2.b.xzw, countOneBits(_wgslsmith_sub_vec3_u32(global0.b.b.xyy, vec3<u32>(arg_2.b.x, arg_2.a.x, global0.b.b.x)) >> (vec3<u32>(arg_2.a.x, 34262u, global0.b.b.x) % vec3<u32>(32u))), arg_3.b), vec4<u32>(~global0.b.b.x, _wgslsmith_sub_u32(15409u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, 83368u, global0.b.a.x), arg_2.b), vec4<u32>(0u, 4294967295u, 0u, arg_2.a.x))), global0.b.b.x, arg_2.b.x));
    var var_2 = Struct_3(func_5(max(abs(countOneBits(28752i)), var_0.b.x), var_0.a, !select(select(vec4<bool>(arg_3.a, global0.d.x, true, global0.d.x), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), !vec4<bool>(true, arg_3.b.x, true, global0.d.x), false)), Struct_2(arg_2.b.xxw, ~vec4<u32>(~arg_2.a.x, 830u, global0.b.b.x | 0u, select(var_1.b.x, 0u, global0.d.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yz)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-2147483647i, var_0.b.x, global0.c.b.x, 26433i)), ~vec4<i32>(global0.a.b.x, var_0.b.x, 2147483647i, global0.a.b.x)), vec4<i32>(52492i, 2147483647i, var_0.b.x, _wgslsmith_add_i32(global0.a.b.x, var_0.b.x))), _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-716f, arg_1.x, -670f, global0.e.x)), var_0.d)))), !func_1().b.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, -505f) * vec2<f32>(472f, -274f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-469f, var_0.c) * vec2<f32>(global0.e.x, var_0.c)))))));
    let var_3 = var_2.b;
    let var_4 = select(!vec4<bool>(var_2.d.x, any(func_1().b), all(!vec3<bool>(global0.d.x, false, false)), -1234f <= _wgslsmith_f_op_f32(arg_1.x + -880f)), select(vec4<bool>(reverseBits(6287u) == abs(var_1.a.x), true, false, arg_3.b.x), vec4<bool>(!all(vec4<bool>(true, true, true, false)), !global0.d.x, !global0.d.x, firstTrailingBit(var_0.b.x) > 1i), global0.d.x), true);
    return func_5(i32(-1i) * -1i, var_0.d.zx, !var_4);
}

fn func_8(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    global1 = global0.c.b.x;
    var var_0 = arg_2.b;
    var var_1 = !(608u > (43130u ^ (35287u << (arg_3.a.x % 32u))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.c, arg_2.a.x))));
    var_1 = _wgslsmith_f_op_f32(-107f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f))) >= _wgslsmith_f_op_f32(-func_7(-271f, _wgslsmith_f_op_vec4_f32(-func_7(global0.c.c, vec4<f32>(arg_2.d.x, global0.e.x, -2528f, global0.c.d.x), global0.b, Struct_4(true, vec3<bool>(arg_1, true, global0.d.x))).d), Struct_2(vec3<u32>(73554u, 70017u, arg_0.x) & vec3<u32>(1u, 44762u, global0.b.a.x), select(global0.b.b, arg_3.b, vec4<bool>(false, true, false, false))), Struct_4(all(vec3<bool>(global0.d.x, true, true)), vec3<bool>(true, true, true))).a.x);
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1059f, arg_2.a.x) * vec2<f32>(global0.c.d.x, 1328f)), vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 1030f)), _wgslsmith_f_op_f32(max(-632f, arg_2.c))))), ~(global0.c.b | _wgslsmith_sub_vec4_i32(arg_2.b, global0.c.b)), _wgslsmith_f_op_f32(global0.c.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1148f, 1036f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.e.x, arg_2.c, arg_2.c, arg_2.a.x))) + vec4<f32>(-932f, -503f, arg_2.a.x, _wgslsmith_f_op_f32(-global0.a.d.x)))), global0.b, Struct_1(vec2<f32>(arg_2.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.c.d.x))))), vec4<i32>(arg_2.b.x, global0.a.b.x, global0.c.b.x, -1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1477f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-451f, 110f))), _wgslsmith_f_op_f32(-func_7(1067f, global0.a.d, Struct_2(vec3<u32>(global0.b.a.x, 1u, arg_0.x), vec4<u32>(arg_3.a.x, global0.b.a.x, 3703u, 1u)), Struct_4(true, vec3<bool>(arg_1, arg_1, arg_1))).d.x), func_7(_wgslsmith_f_op_f32(arg_2.a.x * arg_2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.x, arg_2.d.x, arg_2.d.x, global0.a.d.x) + vec4<f32>(arg_2.c, global0.a.d.x, global0.a.d.x, arg_2.a.x)), global0.b, func_6(Struct_4(arg_1, vec3<bool>(global0.d.x, false, global0.d.x)))).a.x, func_7(global0.a.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, 1312f, -106f, global0.a.a.x)), Struct_2(arg_0, vec4<u32>(arg_0.x, global0.b.b.x, 43869u, 28886u)), Struct_4(arg_1, vec3<bool>(true, false, global0.d.x))).d.x)), !vec2<bool>(arg_1 || global0.d.x, true), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.d.x), _wgslsmith_f_op_f32(step(-1890f, _wgslsmith_f_op_f32(exp2(global0.a.a.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c.d.x, 1082f, true)) + 398f), -1642f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    var var_1 = func_8(_wgslsmith_div_vec3_u32(abs(_wgslsmith_mod_vec3_u32(global0.b.b.wxz, global0.b.a) ^ ~vec3<u32>(global0.b.a.x, 8691u, global0.b.b.x)), global0.b.b.wxy), global0.d.x, func_7(-1000f, _wgslsmith_f_op_vec4_f32(floor(global0.c.d)), global0.b, func_6(func_1())), Struct_2(_wgslsmith_add_vec3_u32(~global0.b.b.zwx, global0.b.a), vec4<u32>(18599u, _wgslsmith_mod_u32(12240u, 4294967295u), 4294967295u, 4294967295u)));
    let var_2 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.d.x * -367f), _wgslsmith_f_op_f32(trunc(var_0.d.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(~global0.a.b.wwx, global0.c.b.xyy), (var_0.b.x ^ 1i) | ~56693i, var_1.c.b.x, ~var_1.a.b.x << (reverseBits(u_input.a) % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_vec4_f32(-global0.c.d)), Struct_2(vec3<u32>(~u_input.a << (~4294967295u % 32u), ~112066u, ~(~93903u)), ~firstTrailingBit(max(vec4<u32>(global0.b.a.x, u_input.a, u_input.a, u_input.a), global0.b.b))), func_8(min(var_1.b.a, var_1.b.b.yyx), !(_wgslsmith_clamp_i32(0i, global0.c.b.x, var_0.b.x) > 0i), global0.c, func_8(vec3<u32>(min(33449u, 4935u), _wgslsmith_mult_u32(var_1.b.b.x, global0.b.b.x), firstLeadingBit(0u)), true, global0.c, Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b.b.x, global0.b.b.x, global0.b.a.x), var_1.b.a), var_1.b.b)).b).c, func_8(~(~vec3<u32>(1u, 1u, 0u)), var_1.d.x, Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.c.d.xz), -var_0.b, _wgslsmith_f_op_f32(sign(-413f)), func_7(var_1.e.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1472f, -1044f, -247f, -499f)), global0.b, func_1()).d), Struct_2(var_1.b.b.zyw, vec4<u32>(37563u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.b.a.x), vec2<u32>(u_input.a, 1u)), ~28352u, firstTrailingBit(global0.b.a.x)))).d, _wgslsmith_f_op_vec2_f32(var_0.d.wy - _wgslsmith_f_op_vec2_f32(-global0.e)));
    let var_3 = vec2<f32>(func_8(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a) >> ((9712u >> (0u % 32u)) % 32u), _wgslsmith_div_u32(0u | var_2.b.a.x, ~44987u), _wgslsmith_mult_u32(u_input.a, ~1u)), any(func_6(func_1()).b.xy), global0.c, func_8(var_1.b.a, !(var_1.d.x || var_1.d.x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 1593f)), vec4<i32>(global0.c.b.x, 53386i, var_2.a.b.x, var_2.a.b.x) & vec4<i32>(2147483647i, 0i, 47034i, global0.c.b.x), var_1.c.a.x, _wgslsmith_f_op_vec4_f32(var_2.a.d * var_1.c.d)), func_8(vec3<u32>(4294967295u, global0.b.b.x, 1u), !var_2.d.x, Struct_1(var_2.e, var_1.c.b, var_1.a.d.x, var_2.c.d), global0.b).b).b).e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.e.x)) - func_8(vec3<u32>(var_2.b.a.x, 4294967295u, global0.b.b.x), -2850f < var_1.a.c, var_1.c, func_8(var_2.b.b.xwy, global0.d.x, global0.c, var_1.b).b).a.a.x) + func_8(var_2.b.b.xxw, true, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-295f, 1418f) * vec2<f32>(-1856f, var_1.c.a.x)), global0.c.b, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.c, -708f, var_0.d.x, 1128f))), global0.b).e.x));
    let x = u_input.a;
    s_output = StorageBuffer(~func_8(~(var_1.b.b.xxx ^ vec3<u32>(u_input.a, 1u, global0.b.b.x)), !func_1().b.x, Struct_1(vec2<f32>(var_2.a.a.x, 219f), global0.a.b, _wgslsmith_f_op_f32(-global0.c.d.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1010f, 750f, var_1.a.a.x, var_2.c.a.x) + vec4<f32>(var_2.a.c, -240f, 179f, 802f))), func_8(vec3<u32>(global0.b.a.x, 1u, global0.b.b.x) & global0.b.b.xxz, true, func_8(var_2.b.a, var_2.d.x, var_1.c, Struct_2(global0.b.a, var_2.b.b)).a, global0.b).b).b.b.x);
}

