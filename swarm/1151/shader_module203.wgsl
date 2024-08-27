struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(3257f, 3789f, -206f, -1000f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec3<i32> {
    global0 = vec4<f32>(1435f, 298f, _wgslsmith_f_op_f32(abs(-148f)), _wgslsmith_f_op_f32(floor(-558f)));
    var var_0 = arg_1.c;
    var_0 = arg_1.c;
    var var_1 = countOneBits(~arg_3);
    let var_2 = 1556f;
    return u_input.a.xwy;
}

fn func_2() -> Struct_2 {
    var var_0 = abs(select(u_input.a.yzz, _wgslsmith_div_vec3_i32(firstLeadingBit(select(vec3<i32>(-2147483647i, 0i, u_input.a.x), u_input.a.wxz, vec3<bool>(false, true, true))), u_input.a.xyy), true));
    var_0 = firstTrailingBit(select(_wgslsmith_mod_vec3_i32(u_input.a.zxx, u_input.a.xzy), select(firstTrailingBit(func_3(52u, Struct_2(u_input.a.x, Struct_1(vec2<u32>(4294967295u, 0u), vec4<f32>(global0.x, 1000f, -2329f, -447f)), Struct_1(vec2<u32>(8779u, 1u), vec4<f32>(global0.x, 838f, 309f, 610f))), vec2<f32>(-1711f, global0.x), vec4<i32>(u_input.a.x, u_input.a.x, -46367i, 29327i))), vec3<i32>(1i, 29679i, u_input.a.x) << (firstLeadingBit(vec3<u32>(0u, 13094u, 19126u)) % vec3<u32>(32u)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true)));
    var var_1 = _wgslsmith_f_op_f32(ceil(global0.x));
    let var_2 = 2147483647i >= _wgslsmith_dot_vec2_i32(~(-var_0.xy), var_0.xz);
    var var_3 = select(!select(vec3<bool>(!var_2, false, false), !vec3<bool>(var_2, false, true), !vec3<bool>(var_2, false, false)), select(!(!vec3<bool>(var_2, var_2, false)), vec3<bool>(!any(vec3<bool>(var_2, true, true)), true, !(!var_2)), all(vec3<bool>(var_2, !var_2, false))), func_3(~29609u, Struct_2(_wgslsmith_clamp_i32(u_input.a.x, -1i, 2147483647i), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(414f, 441f, -748f, -686f)), Struct_1(vec2<u32>(4294967295u, 11576u), vec4<f32>(global0.x, -498f, 500f, -345f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1567f, global0.x), vec2<f32>(global0.x, global0.x)))), firstTrailingBit(u_input.a) | (u_input.a ^ vec4<i32>(u_input.a.x, u_input.a.x, 14065i, 0i))).x < u_input.a.x);
    return Struct_2(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(u_input.a, u_input.a) | _wgslsmith_add_vec4_i32(u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(abs(~vec4<i32>(var_0.x, -2147483647i, 2147483647i, var_0.x)), vec4<i32>(1i, -37313i << (1u % 32u), u_input.a.x, var_0.x))), Struct_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 1u), 1u), _wgslsmith_add_u32(firstLeadingBit(37502u), ~4294967295u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, global0.x, 1000f)))), Struct_1(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 18883u, 8066u) >> (~4294967295u % 32u), 4294967295u), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 1058f, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -281f))))));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    global0 = vec4<f32>(-506f, -718f, -1496f, global0.x);
    global0 = vec4<f32>(1923f, 277f, _wgslsmith_f_op_f32(-433f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-405f - func_2().b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1059f * arg_0.b.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-582f, global0.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + global0.x)))) - _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -924f))));
    var var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b.b + vec4<f32>(arg_0.c.b.x, global0.x, -1339f, 3298f)));
    var_0 = Struct_2(~(-8473i), func_2().c, arg_0.b);
    return arg_0.c.b;
}

fn func_1() -> vec4<f32> {
    var var_0 = false;
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) + _wgslsmith_f_op_f32(1060f + global0.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(382f * global0.x) * global0.x) * _wgslsmith_div_f32(-940f, global0.x)))));
    let var_1 = Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, 2138f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1398f, global0.x, global0.x, 141f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(func_4(func_2()));
    var var_2 = ~(vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.a.x, -1i | u_input.a.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 213f, var_1.b.x, -517f)) - var_1.b)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.b, vec4<f32>(global0.x, -434f, var_1.b.x, 1778f), false)), _wgslsmith_f_op_vec4_f32(var_1.b + var_1.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(472f, global0.x, global0.x, 2212f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-875f, 106f, global0.x, global0.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(964f, 662f, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))))), vec4<f32>(-689f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), 1000f))), _wgslsmith_f_op_f32(select(252f, global0.x, true)), _wgslsmith_f_op_f32(floor(665f))));
    let var_0 = Struct_1(vec2<u32>(~1u, ~1u), _wgslsmith_f_op_vec4_f32(func_4(func_2())));
    global0 = _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global0.x, _wgslsmith_f_op_f32(global0.x * -690f), _wgslsmith_f_op_f32(-global0.x)))));
    global0 = var_0.b;
    var var_1 = _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(min(~vec3<u32>(0u, 4294967295u, var_0.a.x), ~vec3<u32>(88328u, 4294967295u, var_0.a.x)), ~(vec3<u32>(var_0.a.x, 4294967295u, 4294967295u) & vec3<u32>(var_0.a.x, var_0.a.x, 1u))), _wgslsmith_div_vec3_u32(vec3<u32>(func_2().b.a.x, var_0.a.x, var_0.a.x), vec3<u32>(~(~240u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 39994u, 124091u), ~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u) ^ var_0.a, var_0.a << (vec2<u32>(var_0.a.x, 4294967295u) % vec2<u32>(32u))))));
    let var_2 = var_0;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(1958f - global0.x))) * -120f), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.a.x, 1561u), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, var_0.a.x, 0u), select(vec3<u32>(1u, 6700u, 11837u), vec3<u32>(var_1.x, var_2.a.x, 1u), true)))));
}

