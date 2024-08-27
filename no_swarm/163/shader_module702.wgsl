struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: f32 = 201f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> bool {
    global1 = select(!vec3<bool>(true, arg_2.a, true), vec3<bool>(arg_0.x, arg_2.a, !all(select(vec3<bool>(true, true, true), vec3<bool>(global1.x, false, true), false))), true);
    let var_0 = select(~1u, _wgslsmith_mod_u32(1u, max(arg_2.e, u_input.b)), arg_0.x);
    var var_1 = arg_2.e;
    var var_2 = Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-354f, 1799f), vec2<f32>(_wgslsmith_f_op_f32(arg_2.d.x - -278f), arg_2.b.x), vec2<bool>(false, arg_0.x))))), !(!vec2<bool>(arg_2.a, select(true, true, false))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1239f, arg_2.d.x, 778f))))), ~firstTrailingBit(~firstLeadingBit(var_0)));
    let var_3 = Struct_1(any(select(select(vec3<bool>(global1.x, var_2.c.x, false), !vec3<bool>(false, global1.x, false), !vec3<bool>(false, global1.x, var_2.c.x)), !select(vec3<bool>(false, global1.x, true), vec3<bool>(false, true, false), vec3<bool>(true, global1.x, false)), select(vec3<bool>(var_2.c.x, false, true), vec3<bool>(arg_2.a, var_2.c.x, true), !vec3<bool>(true, global1.x, var_2.a)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.x * arg_1.x) * _wgslsmith_f_op_f32(select(arg_2.d.x, arg_1.x, arg_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1237f)) * 1f)), select(select(select(var_2.c, global1.xx, true), vec2<bool>(any(vec3<bool>(var_2.c.x, true, true)), arg_2.c.x), select(!vec2<bool>(var_2.a, arg_0.x), global1.zx, arg_0)), select(arg_2.c, vec2<bool>(arg_2.e <= 1u, true), !(!vec2<bool>(var_2.c.x, false))), global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(round(-777f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -517f))), var_2.e);
    return global1.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(-vec3<i32>(-firstTrailingBit(-2147483647i), i32(-1i) * -1i, -33671i), min(_wgslsmith_add_i32(-(~(-76882i)), _wgslsmith_clamp_i32(-2147483647i, 1i, _wgslsmith_sub_i32(-41924i, 13534i))), 1i), arg_1, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b)), vec2<f32>(_wgslsmith_f_op_f32(abs(397f)), _wgslsmith_f_op_f32(836f + arg_2.d.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, arg_2.d.x))))), !select(select(arg_0, vec2<bool>(true, true), arg_0), !arg_2.c, true))));
    let var_1 = true;
    let var_2 = var_0.c;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1154f, -1221f)), var_0.d.x)) * _wgslsmith_div_f32(-815f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1914f - arg_2.d.x), _wgslsmith_f_op_f32(floor(arg_2.d.x)))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x + arg_2.d.x)), 1f)), var_0.d.x));
    let var_3 = arg_2;
    return arg_1;
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(460i, _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(1i, 2147483647i, 25508i)), _wgslsmith_mult_i32(~2147483647i, 1i))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -4898i, 64i), vec3<i32>(1i, 1i, 1i)));
    let var_1 = Struct_2(-(~vec3<i32>(var_0, _wgslsmith_mult_i32(var_0, 11398i), var_0)), 40034i, func_4(arg_0.wy, arg_0, Struct_1(true || func_3(vec2<bool>(false, false), vec2<f32>(1072f, -1471f), Struct_1(false, vec2<f32>(186f, 156f), vec2<bool>(global1.x, global1.x), vec3<f32>(-1814f, 133f, 557f), u_input.a), 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1704f) + vec2<f32>(165f, 646f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, -1481f))), select(!arg_0.zz, !vec2<bool>(global1.x, false), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-859f, 372f, -619f))), firstLeadingBit(~u_input.a))), vec2<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-313f, 1213f, true)) + _wgslsmith_f_op_f32(select(629f, 1059f, true))), _wgslsmith_f_op_f32(813f + 1f)))));
    global1 = vec3<bool>(arg_0.x, var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, 710f))) <= _wgslsmith_f_op_f32(trunc(343f)));
    global1 = vec3<bool>(all(!(!(!arg_0.zzy))), true, ~((u_input.a & u_input.a) & 14063u) >= abs(_wgslsmith_div_u32(u_input.a, u_input.a << (4294967295u % 32u))));
    var var_2 = ~(~(~abs(firstLeadingBit(vec2<u32>(30258u, 0u)))));
    return var_1.c.wyy;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(813f, _wgslsmith_f_op_f32(-356f - 1059f))))));
    global1 = func_2(select(vec4<bool>(true, true, global1.x, true), select(select(select(vec4<bool>(true, false, false, global1.x), vec4<bool>(false, false, global1.x, global1.x), false), !vec4<bool>(global1.x, global1.x, global1.x, false), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, true, false, global1.x), vec4<bool>(false, global1.x, true, global1.x))), !(!vec4<bool>(global1.x, global1.x, false, global1.x)), any(!global1.zz)), vec4<bool>(false, !select(false, true, false), all(!vec3<bool>(false, global1.x, true)), true)));
    let var_1 = Struct_2(~vec3<i32>(2526i, firstLeadingBit(i32(-1i) * -2147483647i), -_wgslsmith_add_i32(-28263i, 1i)), max(_wgslsmith_sub_i32(9807i, -1i), -_wgslsmith_sub_i32(~(-2147483647i), 0i)), vec4<bool>(true, global1.x, true, global1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * 3209f), _wgslsmith_f_op_f32(1575f + -572f)) - vec2<f32>(-1000f, _wgslsmith_div_f32(-655f, -1035f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1840f, -1669f), vec2<f32>(-895f, -264f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(254f, -1110f), vec2<f32>(1433f, 1139f), vec2<bool>(false, true))))))));
    let var_2 = firstLeadingBit(_wgslsmith_mult_u32(~u_input.b, _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(92408u, 96825u)), ~(vec2<u32>(1u, 5835u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))));
    global0 = array<vec2<i32>, 22>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 22>();
    let var_0 = firstTrailingBit(~2147483647i);
    global2 = -2526f;
    global0 = array<vec2<i32>, 22>();
    let var_1 = ~vec4<u32>(18932u, (abs(17844u) >> (u_input.b % 32u)) & _wgslsmith_div_u32(~1u, _wgslsmith_add_u32(0u, 1u)), ~_wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(u_input.a, 4294967295u)), 4294967295u);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1775f);
    let var_2 = func_1();
    global0 = array<vec2<i32>, 22>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.d.x))), var_2.d.x, var_2.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(countOneBits(u_input.b), abs(4294967295u), ~u_input.b), global0[_wgslsmith_index_u32(~1u, 22u)]);
}

