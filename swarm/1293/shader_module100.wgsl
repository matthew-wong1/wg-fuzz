struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
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

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_mult_i32((_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-42978i, 2147483647i), vec2<i32>(-2147483647i, arg_2.a.x)), arg_2.a.x) >> (arg_0.c % 32u)) >> (11847u % 32u), ~(-1i));
    let var_1 = arg_2;
    var var_2 = ~reverseBits(max(vec3<u32>(arg_0.c, 16744u, arg_1), _wgslsmith_sub_vec3_u32(u_input.c.wwy, vec3<u32>(arg_1, arg_0.c, arg_1))) | firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, 1u)));
    let var_3 = vec4<i32>(-(-2147483647i ^ firstLeadingBit(firstTrailingBit(0i))), _wgslsmith_clamp_i32(1i, reverseBits(-21084i), _wgslsmith_mult_i32(arg_3.a.x, firstLeadingBit(arg_2.a.x) << (u_input.a.x % 32u))), 42014i, -2147483647i);
    global0 = -1730f;
    return -884f;
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(2130f));
    let var_1 = Struct_2(countOneBits(~vec3<i32>(-2147483647i, arg_0.x & -40918i, _wgslsmith_mult_i32(arg_0.x, arg_0.x))));
    let var_2 = -_wgslsmith_div_vec4_i32(firstLeadingBit(-(vec4<i32>(arg_0.x, 1i, 2147483647i, var_1.a.x) ^ vec4<i32>(13181i, 2147483647i, -16365i, -11090i))), vec4<i32>(reverseBits(_wgslsmith_mod_i32(var_1.a.x, 1i)), var_1.a.x, 82016i, max(arg_0.x, arg_0.x ^ 2147483647i)));
    var_0 = _wgslsmith_f_op_f32(2137f * -862f);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-453f)) - 1367f)));
    return vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(f32(-1f) * -556f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2410f, -1192f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2270f, -425f), vec2<f32>(-1496f, 486f))), vec2<bool>(false, true))), ~1u), abs(0u), var_1, var_1)), 397f);
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2970f - -478f))))), -343f, !select(true, false, select(true, true, any(vec2<bool>(false, false))))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1007f, 676f), _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(6071i, -9081i))))))), vec2<f32>(2168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(13836i, 0i))).x)))), 1u);
    var var_1 = vec3<bool>(!all(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)), any(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(any(vec2<bool>(true, false)), true, true, true), vec4<bool>(true, all(vec3<bool>(true, false, false)), any(vec2<bool>(false, false)), true))), all(select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), 4294967295u > var_0.c), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), false), vec4<bool>(var_0.a <= var_0.a, false, false, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(327f)))) - 701f), var_0.b, 0u);
    var var_3 = select(var_1.yx, !var_1.yz, all(var_1.yy) | !any(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-756f, _wgslsmith_div_f32(var_2.a, var_0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.a.x, 0u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1247f - 1489f)))) - -136f);
    let var_1 = u_input.a.zy;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-536f + 329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) - _wgslsmith_f_op_f32(func_1()))))));
    var var_2 = 326f;
    var var_3 = u_input.c.x >> ((countOneBits(_wgslsmith_mult_u32(~1u, var_1.x)) << (countOneBits(abs(var_0 >> (21412u % 32u))) % 32u)) % 32u);
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1084f, -324f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(981f, -1000f) * vec2<f32>(284f, 687f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-722f, 1077f))), false)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-528f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1167f, 1000f))))))));
    global0 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, var_4.x, 483f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(907f - var_4.x) - _wgslsmith_f_op_f32(var_4.x * var_4.x)), 1244f, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

