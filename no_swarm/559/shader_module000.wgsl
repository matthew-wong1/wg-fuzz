struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    global0 = countOneBits(vec2<i32>(u_input.a, 25106i));
    global0 = countOneBits(vec2<i32>(0i, 0i));
    var var_0 = Struct_1(~(countOneBits(vec3<i32>(38445i, -2828i, -1i)) & ((vec3<i32>(u_input.a, -25437i, 52910i) >> (vec3<u32>(60426u, 0u, 4294967295u) % vec3<u32>(32u))) ^ (vec3<i32>(1i, u_input.a, 0i) >> (vec3<u32>(13231u, 70791u, 26100u) % vec3<u32>(32u))))), false, ~_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, global0.x), vec3<i32>(36244i, 57041i, -1i), vec3<i32>(-1i, u_input.a, global0.x))), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, 2147483647i, 0i), vec3<i32>(global0.x, u_input.a, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -1695f), vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(-34468i, 1i, u_input.a, -43749i) ^ vec4<i32>(50154i, global0.x, u_input.a, 2147483647i), -(~vec4<i32>(u_input.a, 2147483647i, u_input.a, 15651i)))));
    var_0 = Struct_1(vec3<i32>(-1i, abs(0i), i32(-1i) * -59094i), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(false, true, true, var_0.b)), !var_0.b)) & !(!var_0.b), ~(-_wgslsmith_div_vec3_i32(var_0.c ^ var_0.a, var_0.a >> (vec3<u32>(17921u, 1u, 1u) % vec3<u32>(32u)))), 1698f, ~vec2<i32>(u_input.a, 1i));
    let var_1 = max(~6674u, 90434u);
    return var_0.d;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1000f)) + -550f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-540f, -529f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(497f, -1566f) - vec2<f32>(-1440f, 638f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-843f, -335f) - vec2<f32>(103f, 490f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-946f, 1617f))))))));
    var var_1 = Struct_1(vec3<i32>(u_input.a, 43893i, _wgslsmith_add_i32(u_input.a, -2147483647i)) << (vec3<u32>(~(43354u >> (1u % 32u)), countOneBits(15559u), 7947u) % vec3<u32>(32u)), any(vec3<bool>(select(true, -56634i >= u_input.a, false), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false)))), ~vec3<i32>((i32(-1i) * -1i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u)) % 32u), 42955i, select(firstLeadingBit(global0.x), global0.x, true)), 669f, ~vec2<i32>(firstTrailingBit(2147483647i << (0u % 32u)), -2376i));
    var_1 = Struct_1(_wgslsmith_sub_vec3_i32(-(vec3<i32>(global0.x, 23615i, -18893i) | abs(vec3<i32>(u_input.a, 0i, 21743i))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-3666i, u_input.a, global0.x), var_1.c), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, var_1.e.x, var_1.c.x), ~var_1.c))), !(-326f < _wgslsmith_f_op_f32(floor(383f))), var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-455f * var_1.d) + _wgslsmith_f_op_f32(-var_1.d)))))), vec2<i32>(_wgslsmith_clamp_i32(7101i, abs(firstLeadingBit(18476i)), i32(-1i) * -84058i), var_1.c.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, -1000f));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 561f) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, 464f, 1115f), vec3<f32>(-604f, 462f, 1842f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(611f, var_0.x, 2362f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-112f, var_1.d, 1000f)))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1579f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(895f, -505f)) - var_1.d)), var_0.x)));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(func_2()));
    var var_1 = ~firstLeadingBit(~vec3<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~4294967295u, ~0u));
    var var_2 = arg_0.d;
    var var_3 = 0u ^ (_wgslsmith_mult_u32(firstTrailingBit(var_1.x), ~(~var_1.x)) ^ ~(~4294967295u));
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(func_2()))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2401f, _wgslsmith_f_op_f32(select(-310f, -229f, arg_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a);
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1066f - -2010f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(global0.x, -2147483647i, var_0), false, vec3<i32>(-1i, 62340i, 1i), 1019f, vec2<i32>(39045i, 359i)))), 1039f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-119f, _wgslsmith_f_op_f32(f32(-1f) * -305f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f)))));
    global0 = min(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -19398i), vec2<i32>(33420i, 1i), vec2<i32>(18268i, global0.x)) | vec2<i32>(var_0, -10736i), ~(-vec2<i32>(var_0, -2147483647i))), vec2<i32>(_wgslsmith_mult_i32(~u_input.a, var_0), select(global0.x & 31012i, -9030i, all(vec4<bool>(false, false, false, true))))) | vec2<i32>(-6740i, -13i);
    let var_2 = vec4<bool>(!(!(_wgslsmith_f_op_f32(-var_1.x) < _wgslsmith_f_op_f32(round(var_1.x)))), !(var_1.x == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(max(919f, var_1.x))))), false, any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), true), vec4<bool>(true, true, select(false, true, false), true))));
    global0 = vec2<i32>(-(u_input.a & -2147483647i), 1i);
    var var_3 = vec3<bool>(true, var_2.x, all(var_2.xyz));
    let var_4 = vec3<f32>(var_1.x, var_1.x, -1053f);
    var var_5 = 857f == _wgslsmith_f_op_f32(-var_1.x);
    var_5 = -225f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -805f))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -23318i, 1u, var_4.yx, -countOneBits(0i), ~vec2<u32>(reverseBits(4294967295u), ~64436u) ^ ~(select(vec2<u32>(42438u, 4294967295u), vec2<u32>(35777u, 39328u), vec2<bool>(true, var_3.x)) << (vec2<u32>(25724u, 1u) % vec2<u32>(32u))));
}

