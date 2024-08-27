struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(5179u, 0u, 37178u, 17857u), vec4<u32>(4294967295u, 1u, 13505u, 4294967295u), vec4<u32>(4294967295u, 56458u, 4294967295u, 78516u), vec4<u32>(0u, 1329u, 65252u, 24558u), vec4<u32>(45374u, 1u, 0u, 5411u), vec4<u32>(1u, 4294967295u, 1u, 50832u), vec4<u32>(4294967295u, 11262u, 30744u, 4294967295u), vec4<u32>(13011u, 50421u, 19645u, 60547u), vec4<u32>(4294967295u, 0u, 4294967295u, 27324u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 23194u, 1673u, 40466u), vec4<u32>(13420u, 25158u, 37120u, 93754u), vec4<u32>(88282u, 0u, 8313u, 1u), vec4<u32>(32576u, 61402u, 1u, 0u), vec4<u32>(29729u, 0u, 43063u, 90484u), vec4<u32>(92957u, 13387u, 13331u, 77273u), vec4<u32>(1u, 27123u, 1u, 532u), vec4<u32>(1u, 4294967295u, 55309u, 18000u), vec4<u32>(17040u, 24125u, 1u, 67379u), vec4<u32>(33165u, 0u, 30471u, 0u), vec4<u32>(20941u, 0u, 4294967295u, 24868u), vec4<u32>(49067u, 8862u, 1u, 0u), vec4<u32>(1u, 1u, 4294967295u, 7680u), vec4<u32>(1u, 4294967295u, 56075u, 1u), vec4<u32>(4294967295u, 4294967295u, 65251u, 1u), vec4<u32>(1u, 0u, 45930u, 22685u), vec4<u32>(0u, 50145u, 2038u, 61833u), vec4<u32>(55411u, 71578u, 0u, 91955u), vec4<u32>(63089u, 0u, 4294967295u, 893u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<f32> {
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    let var_0 = arg_2.e;
    let var_1 = 0i;
    global0 = array<vec4<u32>, 30>();
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-376f, _wgslsmith_f_op_f32(step(-819f, arg_1.b)))))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    let var_0 = arg_2;
    global0 = array<vec4<u32>, 30>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -380f, arg_1.x, 1109f)))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -718f)), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_div_f32(arg_1.x, 365f)), _wgslsmith_f_op_f32(round(arg_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, 1099f, arg_1.x, arg_1.x))), vec4<f32>(-184f, arg_1.x, arg_1.x, arg_1.x))))));
    var var_2 = select(!(all(vec3<bool>(true, true, true)) == true), _wgslsmith_dot_vec3_u32(~arg_2.yyy, arg_2.zzy) != arg_0.x, !all(vec3<bool>(true, true, true)));
    var var_3 = true;
    return ~reverseBits(arg_0.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec2<u32>(func_3(~(~_wgslsmith_mult_vec2_u32(u_input.a.yy, u_input.a.xy)), _wgslsmith_f_op_vec2_f32(func_2(~4425u, Struct_1(u_input.d.zy, -1852f), Struct_2(_wgslsmith_f_op_vec3_f32(arg_1.a * vec3<f32>(arg_1.a.x, -875f, arg_1.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -14170i, 1i, 1i), vec4<i32>(-2147483647i, u_input.d.x, arg_1.b, u_input.d.x)), global0[_wgslsmith_index_u32(arg_1.c.x >> (arg_1.c.x % 32u), 30u)], select(vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_1.d.x), arg_1.d, arg_1.e), vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_1.e.x)))), vec4<u32>(~(79584u | arg_1.c.x), u_input.a.x, _wgslsmith_mult_u32(u_input.a.x << (u_input.a.x % 32u), ~u_input.a.x), arg_1.c.x), arg_1.c.x), 0u);
    let var_1 = -1084f;
    global0 = array<vec4<u32>, 30>();
    let var_2 = arg_1.d;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(f32(-1f) * -473f)), -942f, -1470f) - _wgslsmith_f_op_vec3_f32(arg_1.a * arg_1.a)), -2147483647i, select(reverseBits(arg_1.c), min(arg_1.c, global0[_wgslsmith_index_u32(select(var_0.x | u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u), arg_0.x == -38725i), 30u)]), all(arg_1.d.xzx)), vec4<bool>(var_2.x, !any(vec2<bool>(arg_1.e.x, true)), true, any(arg_1.d.yww)), select(select(arg_1.d, arg_1.e, vec4<bool>(true, true, any(vec2<bool>(var_2.x, var_2.x)), var_0.x == 971u)), select(!var_2, arg_1.d, true), select(var_2, !(!vec4<bool>(var_2.x, true, var_2.x, arg_1.e.x)), select(select(vec4<bool>(var_2.x, arg_1.e.x, false, true), var_2, arg_1.e.x), !arg_1.e, select(arg_1.e, vec4<bool>(false, var_2.x, var_2.x, arg_1.d.x), arg_1.e.x)))));
    return Struct_1(~abs(arg_0.yx), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(389f, var_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-260f, 2037f, true)))))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(~(u_input.d.xy | abs(vec2<i32>(-1i, u_input.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -789f));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(25717i, arg_3.a.x, 1i, 2147483647i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(2147483647i, u_input.d.x, arg_3.a.x, -9871i), select(vec4<i32>(var_0.a.x, arg_0, 0i, 15240i), vec4<i32>(-2392i, arg_3.a.x, var_0.a.x, -2147483647i), arg_2), ~vec4<i32>(-43420i, -30438i, u_input.c.x, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, -2147483647i, arg_3.a.x), vec4<i32>(arg_3.a.x, var_0.a.x, -22078i, var_0.a.x)), -arg_0, _wgslsmith_sub_i32(u_input.c.x, u_input.d.x), -17328i))) ^ -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_sub_i32(1i, var_0.a.x), 1i, -var_0.a.x), countOneBits(select(vec4<i32>(arg_0, -5983i, 63807i, arg_0), vec4<i32>(-2147483647i, 2147483647i, 24379i, arg_0), vec4<bool>(false, false, arg_1, false))));
    var var_2 = countOneBits(min(_wgslsmith_mult_u32(1069u, 4897u) & _wgslsmith_div_u32(min(38011u, u_input.a.x), ~u_input.a.x), _wgslsmith_mod_u32(898u, u_input.a.x)));
    var var_3 = reverseBits(-(~var_1.x));
    return !select(vec4<bool>(!all(vec4<bool>(false, true, arg_1, arg_2)), true, select(true, arg_1 && arg_2, any(vec3<bool>(true, arg_1, arg_2))), false), !select(vec4<bool>(true, arg_1, false, arg_1), !vec4<bool>(arg_2, arg_2, true, arg_2), !vec4<bool>(arg_1, arg_2, arg_1, true)), vec4<bool>(true, u_input.a.x > u_input.a.x, any(select(vec4<bool>(true, false, arg_1, true), vec4<bool>(arg_2, arg_1, true, true), vec4<bool>(arg_1, true, arg_1, false))), !all(vec3<bool>(arg_1, false, arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 30>();
    let var_0 = !(!func_4(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(2147483647i, -1i, u_input.b)) << (min(u_input.a.x, u_input.a.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5226u, 1u, u_input.a.x), vec4<u32>(91631u, u_input.a.x, u_input.a.x, u_input.a.x)) == _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), true, func_1(~u_input.d, Struct_2(vec3<f32>(-306f, 660f, 1207f), -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))));
    let var_1 = ~(~vec4<i32>(u_input.d.x, u_input.b, u_input.c.x, ~_wgslsmith_div_i32(u_input.d.x, u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1523f * 541f)))) + _wgslsmith_f_op_f32(round(-953f))));
    let var_3 = 0u;
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(569f, -1960f, 1074f)))))), _wgslsmith_add_i32(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(var_1.x, 1i)) & ~min(2147483647i, u_input.d.x), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_div_i32(1i, var_1.x)), select(u_input.c.x, -2147483647i, any(var_0.wyy)))), global0[_wgslsmith_index_u32(4294967295u, 30u)], select(var_0, select(vec4<bool>(any(var_0.xy), u_input.b >= var_1.x, func_4(u_input.c.x, false, var_0.x, Struct_1(var_1.zy, -932f)).x, true), vec4<bool>(var_0.x && false, true, true, false), true), func_4(var_1.x, -28835i >= u_input.b, !var_0.x, func_1(-var_1.xwx, Struct_2(vec3<f32>(326f, -1078f, 1322f), -18104i, vec4<u32>(u_input.a.x, 41815u, var_3, 72812u), var_0, vec4<bool>(true, var_0.x, true, false))))), func_4(-_wgslsmith_dot_vec3_i32(vec3<i32>(-4542i, -2147483647i, u_input.c.x), vec3<i32>(0i, 1i, 0i)), false, true, func_1(vec3<i32>(_wgslsmith_mod_i32(-52023i, var_1.x), u_input.b, u_input.c.x), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, 1051f, 471f)), 0i | u_input.c.x, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 120778u), select(var_0, vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))));
    let var_5 = func_1(min(vec3<i32>(-2147483647i, ~0i, 0i), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-1i, var_4.b, 0i)), firstTrailingBit(firstTrailingBit(vec3<i32>(6170i, 35599i, 0i))))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.a)) + vec3<f32>(_wgslsmith_f_op_f32(var_4.a.x + var_4.a.x), 1f, 1033f)), min(~0i, var_4.b), _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(~0u, 30u)], vec4<u32>(var_4.c.x >> (u_input.a.x % 32u), u_input.a.x, var_3 << (u_input.a.x % 32u), _wgslsmith_clamp_u32(u_input.a.x, 6104u, u_input.a.x))), var_0, select(var_0, !select(var_4.d, var_0, var_0.x), true)));
    let var_6 = u_input.c;
    var_2 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -21625i, -35505i), vec4<i32>(1i, -1i, var_6.x, -38254i)) ^ var_6.x, abs(-(var_5.a.x ^ 1i))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1420f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(201f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a.x + var_5.b), _wgslsmith_div_f32(var_5.b, -774f)))), _wgslsmith_f_op_f32(max(var_5.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1523f)) * _wgslsmith_f_op_f32(f32(-1f) * -327f))))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(2902u, 1u), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, var_3)), ~var_4.c.zy)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, (var_4.c.x ^ 5914u) & 14974u, u_input.a.x), vec3<u32>(_wgslsmith_div_u32(abs(var_3), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), ~u_input.a.x, _wgslsmith_dot_vec3_u32(var_4.c.wwz, abs(var_4.c.xyw)))));
}

