struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1568f, -1037f);

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    global2 = -(~(abs(-u_input.a.x) | 37183i));
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    var var_1 = select(!arg_1.wx, vec2<bool>(all(arg_2), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, -484f, true & arg_0.b))) >= _wgslsmith_f_op_f32(ceil(global0.x)));
    var var_2 = arg_0;
    let var_3 = u_input.a.x;
    return _wgslsmith_f_op_f32(-arg_0.a.x);
}

fn func_2() -> bool {
    global2 = i32(-1i) * -_wgslsmith_div_i32(46350i, _wgslsmith_add_i32(-24610i, ~(-17380i)));
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2178f))) - _wgslsmith_f_op_f32(max(695f, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-923f, 680f, global0.x), false, -2147483647i, u_input.a.x, vec4<bool>(false, true, false, false)), vec4<bool>(false, true, false, true), vec3<bool>(true, true, false)))))), _wgslsmith_f_op_f32(-279f + global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x)), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), !vec4<bool>(all(vec4<bool>(true, true, false, false)), select(true, true, true), false, any(vec2<bool>(false, true))), vec4<bool>(true, true, true, all(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -482f, global0.x)))), !((u_input.b.x & u_input.b.x) > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 51973u), u_input.b.yyx)), ~max(_wgslsmith_mult_i32(u_input.a.x, -44183i), u_input.a.x), ~(-countOneBits(u_input.a.x)), vec4<bool>(true && select(false, false, true), any(vec3<bool>(true, true, true)) | any(vec2<bool>(true, true)), true, !select(false, false, true))));
    return var_0.b.x;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -689f, -124f))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.yy, _wgslsmith_f_op_vec2_f32(-var_0.zx)));
    global1 = _wgslsmith_add_u32(~4294967295u, _wgslsmith_div_u32(~(~0u | ~u_input.b.x), abs(_wgslsmith_sub_u32(min(15550u, u_input.b.x), ~27450u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(134f, global0.x, !any(vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(976f))), -744f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.x)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-648f))))), false)));
    return vec4<bool>(true, true, true, any(vec3<bool>(true, false, func_2())));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    var var_0 = u_input.a.yz ^ countOneBits(countOneBits(firstLeadingBit(~u_input.a.xy)));
    let var_1 = _wgslsmith_add_vec4_u32(u_input.b << (vec4<u32>(abs(~u_input.b.x), u_input.b.x, ~87303u << (firstLeadingBit(u_input.b.x) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 8092u), vec2<u32>(1u, 4294967295u))) % vec4<u32>(32u)), u_input.b);
    let var_2 = u_input.a;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(min(1333f, 763f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1000f) - vec2<f32>(arg_1, 1583f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1389f, -1251f)))))));
    global1 = 1u;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, 3220f), vec2<f32>(-313f, global0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(469f, global0.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))), vec2<bool>(true, true))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -310f) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 1320f), vec2<f32>(global0.x, global0.x))))));
    var var_0 = _wgslsmith_f_op_f32(func_4(select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, false)), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, true), true), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), func_1(), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0.x)))), !vec3<bool>(false, select(false, false, false) & func_1().x, func_2()), 1i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-442f)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -297f)))), all(vec4<bool>(false, true, true, true)), u_input.a.x, ~select(_wgslsmith_clamp_i32(u_input.a.x, 70731i, u_input.a.x), select(-u_input.a.x, -1i >> (u_input.b.x % 32u), false), 0i != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(-33344i, u_input.a.x, -55848i, 28907i))), !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)))));
    var_0 = _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, _wgslsmith_sub_i32(countOneBits(-13620i), var_1.d) >= u_input.a.x, -1i, abs(firstLeadingBit(-44565i)), vec4<bool>(var_1.b, true, any(vec3<bool>(var_1.e.x, var_1.b, true)), true)), var_1.e, !vec3<bool>(!(!var_1.b), any(!var_1.e), var_1.e.x)));
    var var_2 = Struct_1(vec3<f32>(893f, _wgslsmith_f_op_f32(sign(global0.x)), global0.x), var_1.b, _wgslsmith_sub_i32(-var_1.c, 2147483647i), abs(-max(var_1.d, max(9547i, u_input.a.x))), select(var_1.e, select(!select(var_1.e, vec4<bool>(false, false, true, false), var_1.e.x), var_1.e, var_1.e), vec4<bool>(var_1.b, (u_input.a.x <= u_input.a.x) || (var_1.b | false), var_1.e.x, var_1.b)));
    let var_3 = true;
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), true, u_input.a.x, _wgslsmith_sub_i32(-1i, var_1.c), vec4<bool>(all(!var_1.e.zz), func_2(), !var_3, false));
    global2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(var_2.a.x, -470f), _wgslsmith_f_op_f32(floor(-472f))) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1390f, -770f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-384f, var_2.a.x, global0.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.a.x, 718f), -392f, _wgslsmith_f_op_f32(-var_1.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(ceil(var_2.a.x)), _wgslsmith_f_op_f32(round(107f))))), firstTrailingBit(u_input.b.xw ^ vec2<u32>(reverseBits(21186u), 1u)), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), vec4<u32>(~(firstLeadingBit(u_input.b.x) | reverseBits(91423u)), max(4294967295u, _wgslsmith_dot_vec3_u32(select(u_input.b.ywy, u_input.b.yyz, var_2.e.x), u_input.b.ywx)), u_input.b.x, min(1u, u_input.b.x)));
}

