struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = vec4<i32>(-26007i << (u_input.e % 32u), 2514i, _wgslsmith_clamp_i32(arg_1, u_input.b, abs(1i)), arg_1) | ~vec4<i32>(1i << (u_input.d.x % 32u), u_input.b, u_input.c, arg_1);
    global0 = array<Struct_2, 21>();
    var var_1 = vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(select(arg_0.b, 1569f, true))), arg_0.b))), _wgslsmith_f_op_f32(trunc(-180f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(246f, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f * -1170f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, -1141f, var_1.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-562f, var_1.x, -585f), vec3<f32>(-242f, -1616f, arg_0.c.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(1127f, 236f, var_1.x), false))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1478f, var_2.x, -675f), var_2)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 614f, -1139f), vec3<f32>(1000f, 200f, -984f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, var_2.x, arg_0.b)), true))) + var_2)));
    return max(~var_0.x, arg_1);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_2, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-259f, 442f)) - arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)))));
    global0 = array<Struct_2, 21>();
    return -917f;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_0 = vec2<f32>(1199f, _wgslsmith_f_op_f32(func_4(Struct_3((vec3<i32>(-25318i, -6026i, 13748i) | vec3<i32>(2147483647i, u_input.c, u_input.c)) | vec3<i32>(-2147483647i, 2147483647i, u_input.c), 1i << (_wgslsmith_add_u32(u_input.d.x, u_input.e) % 32u), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec2<bool>(true, true)), Struct_2(Struct_1(false, _wgslsmith_f_op_f32(f32(-1f) * -472f), _wgslsmith_div_vec2_f32(vec2<f32>(-801f, -1622f), vec2<f32>(arg_0, -221f))), _wgslsmith_f_op_f32(-1489f + _wgslsmith_f_op_f32(f32(-1f) * -338f)), vec3<i32>(-33659i, _wgslsmith_sub_i32(u_input.c, -110424i), func_3(Struct_1(false, -220f, vec2<f32>(-144f, arg_0)), -2147483647i)), ~vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(17739u, u_input.e, 19533u), vec3<u32>(u_input.d.x, 40780u, 35248u), u_input.d), u_input.d)))));
    var var_1 = Struct_2(Struct_1(any(vec3<bool>(false, true, false)) && false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(round(-351f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1022f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(867f, 1379f))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)))), 1544f, vec3<i32>(abs(u_input.c), _wgslsmith_dot_vec2_i32(-vec2<i32>(65011i, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.b, u_input.b))) ^ ~1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c ^ u_input.b, 1i), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, -18201i), -1i))), vec4<u32>(abs(abs(u_input.e)), _wgslsmith_div_u32(44116u & u_input.a.x, u_input.d.x), _wgslsmith_mult_u32(1u, ~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.d.x, 4294967295u), ~u_input.d.x), countOneBits(firstLeadingBit(u_input.d)))), ~(~0u));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.e, u_input.a.x, 2551u >> (u_input.a.x % 32u)) << (~var_1.d % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(var_1.d.xx, var_1.d.xz), var_1.e >> (abs(var_1.e) % 32u), var_1.d.x, 1u)), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(u_input.e, u_input.d.x) & abs(countOneBits(u_input.d.x)), _wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_1.d.x, var_1.d.x, 0u))), 7276u), 53779u)), 21u)];
    return var_2.a;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_2(func_2(arg_1.x), arg_0, max(abs(-(vec3<i32>(u_input.b, -2147483647i, u_input.b) | vec3<i32>(u_input.c, u_input.c, u_input.c))), -(~(vec3<i32>(u_input.c, u_input.b, u_input.c) | vec3<i32>(-14471i, u_input.b, u_input.c)))), _wgslsmith_sub_vec4_u32(abs(abs(vec4<u32>(1u, 104706u, u_input.e, u_input.a.x) | vec4<u32>(16854u, 110844u, 4294967295u, u_input.d.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, 1u)), abs(39851u), ~75326u), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.d.x, 33035u, u_input.e)), vec4<u32>(u_input.a.x, 1u, u_input.d.x, 1u)), select(vec4<u32>(u_input.a.x, u_input.d.x, 0u, u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.e, u_input.d.x), vec4<u32>(4294967295u, 16673u, 21804u, u_input.a.x)), u_input.d.x != 2446u))), 1u);
    let var_1 = all(vec3<bool>(any(select(vec4<bool>(false, var_0.a.a, var_0.a.a, false), vec4<bool>(var_0.a.a, false, false, false), vec4<bool>(var_0.a.a, var_0.a.a, true, true))), var_0.a.a, all(select(vec4<bool>(true, var_0.a.a, var_0.a.a, var_0.a.a), vec4<bool>(var_0.a.a, false, true, false), vec4<bool>(var_0.a.a, false, true, true))))) && select(~4294967295u > var_0.e, any(!vec3<bool>(var_0.a.a, true, true)), var_0.a.a);
    var var_2 = 1412f;
    global0 = array<Struct_2, 21>();
    var var_3 = var_0.a.a;
    return vec2<bool>(false, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.c;
    global0 = array<Struct_2, 21>();
    var var_1 = select(vec2<bool>(any(vec2<bool>(true, all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-501f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f))), select(vec2<bool>(false, true), vec2<bool>(select(true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))), func_1(1f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-150f, -2508f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-130f, 1503f))))), true);
    var var_2 = -firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-48666i, 0i, -1604i) & vec3<i32>(-2147483647i, var_0, u_input.c), -vec3<i32>(u_input.c, 27085i, 2147483647i), -vec3<i32>(var_0, 7897i, var_0)) << (vec3<u32>(u_input.e, 14070u, abs(u_input.e)) % vec3<u32>(32u)));
    var_2 = -_wgslsmith_add_vec3_i32(-abs(~vec3<i32>(u_input.c, var_0, var_0)), max(min(vec3<i32>(0i, 3601i, 2147483647i), vec3<i32>(1i, var_0, var_2.x)) << (countOneBits(u_input.d) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0, -85400i, -89132i) ^ vec3<i32>(1i, var_0, var_0), vec3<i32>(36343i, u_input.b, var_2.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1865f, -488f, 446f, -2314f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(580f, -1040f, -250f, 1950f), vec4<f32>(1815f, 335f, -185f, -224f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1788f, -169f, 146f, -270f), vec4<f32>(1000f, 360f, -410f, -717f), var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1593f, _wgslsmith_f_op_f32(select(490f, -635f, false)), _wgslsmith_f_op_f32(-315f + -1471f), _wgslsmith_f_op_f32(1599f - -492f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1629f, 289f, 374f, -921f) - vec4<f32>(462f, -1000f, -1000f, 1165f)))))));
    var_1 = !vec2<bool>(true, func_1(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(f32(-1f) * -213f)), var_3.zy).x);
    var_2 = -vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(max(vec2<i32>(var_0, 0i), var_2.xz), max(vec2<i32>(-30291i, var_2.x), var_2.zx)), -vec2<i32>(67318i, var_2.x)), _wgslsmith_div_i32(-abs(var_2.x), -1i), -(~(-14966i)));
    let var_4 = ~abs(~u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1506f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1511f, _wgslsmith_f_op_f32(ceil(var_3.x)))))));
}

