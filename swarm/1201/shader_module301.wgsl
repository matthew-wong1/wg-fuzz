struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: vec3<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = vec3<f32>(arg_0, 114f, arg_0);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-782f * global1.x), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)), -336f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(step(global1.x, var_0.x)), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-180f - arg_0))))));
    global0 = Struct_1(global0.a);
    global2 = ~vec3<u32>(global2.x, u_input.a.x, 39108u);
    global1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(select(-850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1166f - -1520f)), true)), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-611f, _wgslsmith_f_op_f32(f32(-1f) * -1128f), true)) + global1.x), _wgslsmith_f_op_f32(floor(global1.x)))));
    return vec4<i32>(arg_1, _wgslsmith_clamp_i32(0i, -21012i, firstTrailingBit(18484i)), _wgslsmith_sub_i32(46354i, global0.a), arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> vec3<f32> {
    global2 = select(vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, arg_0.a)), ~_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)))), reverseBits(~vec3<u32>(u_input.a.x << (7942u % 32u), arg_0.a | 1u, arg_0.a)), vec3<bool>(arg_0.e.x, arg_1.a > ((arg_1.a | 0i) >> (~4294967295u % 32u)), any(select(vec3<bool>(false, false, arg_0.c), vec3<bool>(arg_0.e.x, arg_0.c, true), true)) || !arg_0.e.x));
    global0 = arg_1;
    let var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-382f, global1.x, global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-586f, _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-arg_3.x)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, var_0.b, arg_0.b, arg_0.b), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1285f + 711f), _wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.x, global1.x, var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) + 1000f), 1531f))));
    let var_1 = u_input.a.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-287f, 1000f, global1.x), vec3<f32>(arg_3.x, global1.x, -254f)))) * global1.wwz));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(~73436u, global1.x, true, func_3(-2144f, arg_1.x, vec2<bool>(false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false)), Struct_1(arg_0.x), 19001u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1633f, global1.x, global1.x), vec3<f32>(global1.x, 1000f, global1.x), vec3<bool>(true, false, false))), global1.xwx, false)))))));
    let var_1 = 44413i;
    let var_2 = func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_div_u32(global2.x, global2.x), -578f, true, vec4<i32>(-14050i, -1i, var_1, global0.a) & vec4<i32>(var_1, arg_0.x, arg_0.x, arg_1.x), vec4<bool>(true, true, true, true)), Struct_1(global0.a << (u_input.a.x % 32u)), global2.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(447f, global1.x, 994f)))))).x, global1.x)), var_1, !vec2<bool>(true, !all(vec3<bool>(true, true, true)))).x;
    let var_3 = _wgslsmith_sub_i32(~(0i ^ select(var_2, arg_0.x, true)) | _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, -2147483647i, var_1, 20261i) | ~vec4<i32>(2147483647i, arg_0.x, arg_0.x, 27130i), ~(vec4<i32>(2715i, -2147483647i, 1i, -29172i) & vec4<i32>(-2147483647i, 57161i, 1i, var_1))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(~1i, arg_0.x, 1i), -vec3<i32>(arg_1.x, 11208i, var_2)), arg_1));
    let var_4 = true;
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_2(~_wgslsmith_sub_u32(arg_1.x, ~1u) | 0u, global1.x, !(arg_2 != ~_wgslsmith_mod_u32(0u, 3384u)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-28460i, 51i, ~1i, i32(-1i) * -27994i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, arg_0.a, global0.a, global0.a), vec4<i32>(-2126i, -2147483647i, global0.a, 6240i))), _wgslsmith_div_vec4_i32(min(vec4<i32>(arg_3.a, 109567i, global0.a, -97285i), ~vec4<i32>(arg_3.a, 4331i, 1i, 31504i)), -vec4<i32>(-1i, arg_3.a, arg_0.a, arg_0.a)), vec4<bool>(true, true, true, true)), select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, true, false, true), u_input.a.x != arg_1.x), vec4<bool>(true, true, true, true), false), vec4<bool>(func_2(reverseBits(vec2<i32>(arg_3.a, -1i)), ~vec3<i32>(2147483647i, arg_0.a, -82740i)), true, true, true), select(vec4<bool>(all(vec4<bool>(false, false, false, false)), true, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false)), _wgslsmith_f_op_f32(-global1.x) >= global1.x)));
    var var_1 = arg_0.a;
    global0 = Struct_1(var_0.d.x);
    let var_2 = _wgslsmith_add_vec4_i32(~var_0.d, var_0.d << (~(~(~vec4<u32>(arg_2, u_input.a.x, var_0.a, global2.x))) % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.b)), var_0.b, var_0.b, -587f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + 719f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-232f)) * _wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1073f, global1.x, false))), _wgslsmith_f_op_f32(trunc(global1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, -605f, _wgslsmith_f_op_f32(global1.x - 739f), _wgslsmith_f_op_f32(-var_0.b)))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1807f, 757f, global1.x, global1.x) * vec4<f32>(global1.x, global1.x, global1.x, global1.x)) * vec4<f32>(global1.x, global1.x, global1.x, 714f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - var_0.x), all(vec4<bool>(true, true, false, true)))), global1.x)));
    let var_2 = Struct_2(global2.x, 1910f, any(vec2<bool>(false, 34551u != func_1(Struct_1(global0.a), vec2<u32>(40899u, 64349u), global2.x, Struct_1(global0.a)))), vec4<i32>(_wgslsmith_mod_i32(~34210i, 4124i), global0.a, 8941i, reverseBits(global0.a)) ^ countOneBits(firstLeadingBit(max(vec4<i32>(8787i, global0.a, 1i, global0.a), vec4<i32>(-2147483647i, global0.a, global0.a, global0.a)))), select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(37167u > u_input.a.x, true, u_input.a.x == u_input.a.x, select(false, true, false)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))), true)));
    var var_3 = Struct_2(0u, _wgslsmith_f_op_f32(-1392f * _wgslsmith_f_op_f32(839f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_2.e.x & select(false, true && any(vec3<bool>(true, var_2.c, true)), var_2.e.x), var_2.d, !vec4<bool>(var_2.e.x, var_2.c, true, true));
    var var_4 = Struct_1(firstLeadingBit(global0.a));
    let var_5 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(402f, var_1.x, 344f), var_0.wzz) - var_0.yxy)))));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1873f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(step(var_5.x, 100f))))))), -730f);
}

