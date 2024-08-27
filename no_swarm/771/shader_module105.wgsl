struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(5167u, 29914u, 82360u), vec3<u32>(32010u, 0u, 26282u), vec3<u32>(1u, 10004u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(47700u, 45563u, 28523u));

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(abs(u_input.c.wxy), u_input.b, u_input.b);
    let var_1 = _wgslsmith_dot_vec2_i32(firstTrailingBit(max(vec2<i32>(-1i) * -u_input.c.yx, vec2<i32>(23302i, 29070i))), _wgslsmith_mod_vec2_i32(vec2<i32>(18088i, -19722i) | var_0.yy, -vec2<i32>(-58754i, 3725i)));
    let var_2 = Struct_4(vec2<bool>(true, !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), var_0.x, var_0, _wgslsmith_mod_vec3_i32(var_0 << (global0[_wgslsmith_index_u32(~u_input.a, 5u)] % vec3<u32>(32u)), vec3<i32>(~var_1, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, -18910i, var_0.x, 2147483647i), vec4<i32>(u_input.d, var_0.x, -108826i, var_1)), -2147483647i)), Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(~var_0.yz, select(var_0.yx, vec2<i32>(1i, u_input.c.x), false)), ~(48688u & u_input.a), global1.x, var_0.yz, _wgslsmith_f_op_f32(-994f * global1.x)), select(var_0.x, _wgslsmith_add_i32(-2147483647i, 33909i), !select(true, false, false)), Struct_1(firstTrailingBit(u_input.c.zx), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)), vec2<i32>(abs(1i), ~(-14420i)), 614f), _wgslsmith_mult_u32(14245u, u_input.a | u_input.a)));
    var var_3 = Struct_3(var_2.e, vec4<i32>(var_2.d.x, max(_wgslsmith_div_i32(~u_input.b.x, var_2.c.x), var_1), -2147483647i, var_2.b), ~(-(~(~vec2<i32>(u_input.b.x, var_0.x)))), vec2<f32>(261f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1)))))));
    let var_4 = _wgslsmith_clamp_i32(0i, 5957i, min(-63684i, 1i));
    return -1310f;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<i32>) -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(257f * _wgslsmith_f_op_f32(arg_1 + -118f)), -1871f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 711f, -336f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(381f, -491f, global1.x))))))));
    let var_0 = select(vec3<bool>(false, false, ~abs(4294967295u) >= (_wgslsmith_dot_vec2_u32(arg_0.wx, vec2<u32>(arg_0.x, 1u)) ^ ~u_input.a)), vec3<bool>(true, (u_input.a < reverseBits(u_input.a)) || true, arg_0.x > u_input.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_1, arg_1)), _wgslsmith_f_op_f32(min(global1.x, arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 1544f))) == global1.x);
    global0 = array<vec3<u32>, 5>();
    let var_1 = Struct_1(-u_input.c.zw, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstLeadingBit(~4294967295u), ~_wgslsmith_div_u32(85751u, 1u), firstLeadingBit(u_input.a)), ~abs(abs(arg_0.x))), -1000f, vec2<i32>(~u_input.c.x, -8768i), -743f);
    var var_2 = Struct_2(var_1, ~1i, Struct_1(abs(min(-vec2<i32>(arg_2.x, u_input.d), vec2<i32>(arg_2.x, -36126i) >> (arg_0.zy % vec2<u32>(32u)))), countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4368u, var_1.b, arg_0.x), arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(11854u, arg_0.x, arg_0.x), vec3<u32>(var_1.b, 37419u, 47091u)))), 591f, ~countOneBits(-u_input.c.wy), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(global1.x, _wgslsmith_f_op_f32(-847f - var_1.e)))))), arg_0.x);
    return ~vec3<i32>(-57717i, u_input.d, -arg_2.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> Struct_2 {
    global0 = array<vec3<u32>, 5>();
    var var_0 = ~(~_wgslsmith_div_vec2_i32(vec2<i32>(-21974i, firstLeadingBit(31589i)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.d), u_input.b.yx)));
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_1 = -func_2(vec4<u32>(4294967295u, u_input.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(15774u, 5970u, 8228u), global0[_wgslsmith_index_u32(8378u, 5u)]), u_input.a, 89834u), arg_0.x, u_input.c.yyy);
    return Struct_2(Struct_1(vec2<i32>(-1i) * -(var_1.zz & vec2<i32>(-2147483647i, var_1.x)), (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 50358u, 0u), global0[_wgslsmith_index_u32(54487u, 5u)]) & u_input.a) << (u_input.a % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x))), -_wgslsmith_sub_vec2_i32(max(vec2<i32>(var_0.x, 10878i), u_input.b.zx), select(vec2<i32>(u_input.d, -1i), u_input.b.xx, vec2<bool>(false, false))), -851f), func_2(firstTrailingBit(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), 1622f, firstLeadingBit(u_input.c.zzw) ^ ~vec3<i32>(36578i, u_input.b.x, var_1.x)).x, Struct_1(u_input.c.xz, 0u, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_1)), countOneBits(u_input.b.xz) ^ vec2<i32>(abs(-1i), abs(25695i)), -1344f), 4294967295u);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: i32) -> f32 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), arg_1.c.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(f32(-1f) * -1190f))) - -1000f)));
    var var_0 = !any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false)));
    var_0 = all(!vec2<bool>(_wgslsmith_mult_i32(u_input.d, -2147483647i) <= 2147483647i, true));
    let var_1 = -arg_2;
    global0 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-137f, 437f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(824f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 5>();
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(766f, global1.x, global1.x)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1063f, global1.x) * vec3<f32>(global1.x, -711f, -1000f))))))), vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 882f) * vec3<f32>(1739f, 1146f, -348f))), Struct_5(func_1(vec3<f32>(-913f, global1.x, 770f), 1125f), u_input.d, Struct_2(Struct_1(vec2<i32>(u_input.b.x, 39935i), u_input.a, global1.x, vec2<i32>(0i, -1545i), global1.x), -2147483647i, Struct_1(u_input.b.yx, 51025u, global1.x, vec2<i32>(-625i, u_input.b.x), global1.x), 0u)), 1i & _wgslsmith_div_i32(-1i, u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f)), _wgslsmith_f_op_f32(max(func_1(vec3<f32>(global1.x, -719f, global1.x), -794f).c.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x - global1.x))))))));
    let var_0 = !vec4<bool>(true, false && any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true)), !any(vec2<bool>(false, true)) && all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), !select(true, u_input.c.x == u_input.b.x, false));
    let var_1 = Struct_5(Struct_2(Struct_1(abs(u_input.c.yy), u_input.a, global1.x, vec2<i32>(_wgslsmith_add_i32(u_input.b.x, -2147483647i), abs(u_input.d)), 295f), ~40246i, Struct_1(vec2<i32>(u_input.c.x, ~u_input.b.x), _wgslsmith_mult_u32(u_input.a, 95006u) ^ u_input.a, -310f, u_input.b.yy, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(global1.x * global1.x))), 0u), ~(firstLeadingBit(-1i) >> (_wgslsmith_div_u32(~u_input.a, u_input.a) % 32u)), func_1(vec3<f32>(_wgslsmith_div_f32(global1.x, -573f), 1075f, 139f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1107f), 420f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(select(var_1.c.b | ~u_input.c.x, ~0i, false), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, -3419i), ~u_input.b.xy, vec2<bool>(var_0.x, var_0.x)), u_input.b.xy)), min(min(-(~u_input.c), u_input.c), -_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.a.b, var_1.a.a.a.x, u_input.b.x), firstLeadingBit(vec4<i32>(-2147483647i, u_input.b.x, u_input.c.x, var_1.a.b)))), u_input.d, 1u, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, 15584u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(81496u, 24649u), vec2<u32>(22310u, var_1.a.d), vec2<u32>(1u, 139820u)) ^ vec2<u32>(u_input.a, var_1.a.d)), ~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_1.a.d), vec2<u32>(4294967295u, 14207u)))));
}

