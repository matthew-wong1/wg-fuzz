struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 32u)];
    var var_1 = ~abs(arg_0);
    var var_2 = ~u_input.a;
    global0 = array<Struct_1, 32>();
    let var_3 = Struct_1(_wgslsmith_dot_vec2_u32(~u_input.b.xy, countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(19102u, var_0.a), u_input.b.wy, u_input.b.xz))));
    return _wgslsmith_f_op_f32(661f * _wgslsmith_f_op_f32(f32(-1f) * -568f));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(~arg_0.c.a, arg_0.a.wxz)))) - arg_3.x));
    global0 = array<Struct_1, 32>();
    var var_1 = Struct_1(u_input.b.x);
    var_1 = Struct_1(max(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 12748u), firstLeadingBit(u_input.b.x)), 15674u));
    global0 = array<Struct_1, 32>();
    return arg_0.c;
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = -155f;
    var var_1 = func_2(Struct_3(select(vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(183f, 148f, 606f), vec3<f32>(var_0, 1000f, -207f), vec3<bool>(false, true, true))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 1283f, -283f), vec3<f32>(1047f, var_0, var_0)) + vec3<f32>(1090f, -409f, 1214f))), arg_0), -17209i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-486f, -1383f, -614f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, -2661f, _wgslsmith_f_op_f32(func_3(arg_0.a, vec3<bool>(true, false, false))))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0)), -766f));
    var var_2 = vec2<bool>(!all(vec4<bool>(false, 11382i < u_input.a, all(vec2<bool>(true, false)), all(vec2<bool>(false, true)))), all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), u_input.b.x > arg_0.a), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true))));
    global0 = array<Struct_1, 32>();
    var var_3 = vec4<bool>(var_2.x, true, true, var_2.x);
    return !vec4<bool>(false, var_2.x, true, select(all(var_3.zw), var_2.x, all(!vec4<bool>(var_3.x, var_3.x, true, false))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_3(!select(func_4(func_2(Struct_3(vec4<bool>(arg_2, arg_2, arg_2, false), vec3<f32>(-1284f, 576f, -1000f), global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), 0i, vec3<f32>(-1115f, -767f, 854f), vec2<f32>(-497f, 434f))), !(!vec4<bool>(true, false, true, arg_2)), func_4(Struct_1(16133u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-933f, -1000f, -1000f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(639f, -664f, -1876f), vec3<f32>(-1735f, -1105f, 230f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, -868f, -832f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 400f, 105f)))))), Struct_1(~u_input.b.x));
    let var_1 = ~vec2<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.c), u_input.b.xwy)), ~firstLeadingBit(33743u));
    let var_2 = abs(-(~arg_1));
    var_0 = Struct_3(func_4(func_2(Struct_3(select(var_0.a, var_0.a, var_0.a.x), _wgslsmith_f_op_vec3_f32(-var_0.b), var_0.c), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, var_2, -5966i), vec3<i32>(65360i, -1i, -2147483647i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-575f, var_0.b.x, var_0.b.x))))), var_0.b.xz)), var_0.b, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(var_1.x), 1u), 32u)]);
    var var_3 = Struct_3(!vec4<bool>(true, arg_2, var_0.a.x, select(false, func_4(Struct_1(var_0.c.a)).x, arg_2 && true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.b)))) + var_0.b), func_2(Struct_3(select(!vec4<bool>(true, arg_2, var_0.a.x, var_0.a.x), select(vec4<bool>(true, arg_2, var_0.a.x, var_0.a.x), vec4<bool>(true, false, var_0.a.x, arg_2), var_0.a.x), var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-771f, var_0.b.x, var_0.b.x) + var_0.b)), var_0.c), _wgslsmith_mod_i32(1i, i32(-1i) * -19595i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.b - var_0.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, -562f, var_0.b.x))))), _wgslsmith_f_op_vec3_f32(-var_0.b))), var_0.b.yy));
    return select(var_3.a, vec4<bool>(!arg_2, true, any(!var_0.a.yz) && true, !(_wgslsmith_mod_u32(var_0.c.a, 1u) < var_3.c.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    let var_0 = u_input.b;
    var var_1 = Struct_3(select(func_1(u_input.d, u_input.d, any(vec3<bool>(true, true, false))), !vec4<bool>(all(vec3<bool>(false, false, false)), func_4(global0[_wgslsmith_index_u32(24876u, 32u)]).x, true, true), any(vec4<bool>(true, true, true, func_1(u_input.a, -2147483647i, false).x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), func_2(Struct_3(vec4<bool>(true, true, true, true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -204f), 1f, _wgslsmith_f_op_f32(ceil(-2452f))), global0[_wgslsmith_index_u32(~var_0.x, 32u)]), countOneBits(~(u_input.a << (14204u % 32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1308f, 195f, 2224f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-673f, -2430f), -387f))));
    var_1 = Struct_3(vec4<bool>(~_wgslsmith_sub_u32(43456u, u_input.b.x) >= ~var_1.c.a, false, select(_wgslsmith_f_op_f32(var_1.b.x - -937f) > _wgslsmith_div_f32(-1104f, 1666f), true, false && (-1000f >= var_1.b.x)), true), var_1.b, var_1.c);
    global0 = array<Struct_1, 32>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.b.x, _wgslsmith_f_op_f32(-1397f - _wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x)))))));
    var var_3 = func_2(Struct_3(select(vec4<bool>(any(vec2<bool>(var_1.a.x, var_1.a.x)), true, select(true, false, false), func_1(-31946i, 0i, false).x), !select(vec4<bool>(false, var_1.a.x, true, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), var_1.a), var_1.a), _wgslsmith_f_op_vec3_f32(-var_1.b), Struct_1(~(~var_0.x))), select(-2147483647i, _wgslsmith_mult_i32(12121i, i32(-1i) * -3235i), var_1.a.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2103f))), var_2, var_1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), 208f)));
    global0 = array<Struct_1, 32>();
    let var_4 = countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(~1i, u_input.d), vec2<i32>(u_input.d, -_wgslsmith_dot_vec4_i32(vec4<i32>(81931i, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.d, u_input.d, 1i, u_input.a))), vec2<i32>(_wgslsmith_div_i32(1i << (1u % 32u), u_input.d), _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, -1i), 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + var_2) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.x)))), vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, 16362i) << (u_input.b.xwy % vec3<u32>(32u)), vec3<i32>(u_input.d, var_4.x, u_input.a))), ~2147483647i), -((_wgslsmith_dot_vec3_i32(vec3<i32>(-6636i, var_4.x, var_4.x), vec3<i32>(var_4.x, -9887i, 2147483647i)) & _wgslsmith_dot_vec2_i32(var_4, var_4)) & u_input.a));
}

