struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: bool,
    d: Struct_4,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(583f, 358f, 751f), vec3<f32>(-441f, 1281f, 1381f), vec3<f32>(-2564f, 211f, 1000f), vec3<f32>(-844f, -951f, 1000f), vec3<f32>(1251f, 908f, -544f), vec3<f32>(886f, 385f, 215f), vec3<f32>(-885f, 1034f, 498f), vec3<f32>(-416f, 300f, 332f), vec3<f32>(-224f, 1877f, 116f), vec3<f32>(1063f, 242f, 612f), vec3<f32>(905f, -1155f, -125f), vec3<f32>(695f, -992f, 908f), vec3<f32>(935f, -1169f, 153f), vec3<f32>(501f, -1237f, -2012f), vec3<f32>(-958f, -1000f, -2046f), vec3<f32>(517f, -2146f, -789f), vec3<f32>(347f, -930f, -1001f), vec3<f32>(2484f, 255f, -636f), vec3<f32>(725f, 223f, 771f), vec3<f32>(373f, -850f, 2085f), vec3<f32>(-2912f, -249f, -997f), vec3<f32>(-1374f, -238f, -807f));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> u32 {
    global0 = array<vec3<f32>, 22>();
    var var_0 = vec3<u32>(58749u, u_input.a, u_input.a);
    return 48488u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec2<u32> {
    let var_0 = 28727u;
    let var_1 = vec3<u32>(~(~_wgslsmith_div_u32(var_0, u_input.a) | ~(~u_input.a)), u_input.a, _wgslsmith_add_u32(min(abs(4294967295u) & func_3(arg_0.x, vec4<f32>(-1000f, arg_0.x, 342f, arg_0.x), false, arg_0.x), arg_1.x), 8669u));
    let var_2 = vec4<u32>(0u, ~(_wgslsmith_mult_u32(46210u, 43264u) ^ ~var_0), ~max(~45472u ^ ~var_0, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, var_0, arg_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(22235u, arg_1.x, 4294967295u, var_0), vec4<u32>(var_1.x, var_1.x, var_1.x, var_0)))), 4294967295u ^ arg_1.x);
    let var_3 = Struct_1(-(~_wgslsmith_mult_i32(i32(-1i) * -2147483647i, 1i)), ~(-vec2<i32>(-41418i, -16089i)) >> (((abs(vec2<u32>(34679u, arg_1.x)) << (vec2<u32>(var_0, 1u) % vec2<u32>(32u))) << (~(~var_1.xy) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_4 = abs(firstLeadingBit(_wgslsmith_mod_vec3_u32(var_2.xwy, select(vec3<u32>(14066u, u_input.a, arg_1.x), var_2.wyz, vec3<bool>(false, false, false)))));
    return vec2<u32>(_wgslsmith_mult_u32(~(~_wgslsmith_sub_u32(34327u, var_1.x)), var_1.x), abs(~var_4.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<u32> {
    global0 = array<vec3<f32>, 22>();
    let var_0 = ~(_wgslsmith_clamp_vec2_u32(~func_2(global0[_wgslsmith_index_u32(u_input.a, 22u)], vec2<u32>(59671u, 1u)), abs(max(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 1u))), ~reverseBits(vec2<u32>(1u, 0u))) ^ select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 11830u), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.a, 3353u))), vec2<u32>(u_input.a, 1u ^ u_input.a), (i32(-1i) * -1i) <= _wgslsmith_add_i32(arg_0.b.x, -8375i)));
    var var_1 = ~firstTrailingBit(vec4<u32>(4294967295u, _wgslsmith_div_u32(var_0.x, _wgslsmith_mod_u32(var_0.x, 4294967295u)), 1u, u_input.a));
    let var_2 = -1606f;
    let var_3 = Struct_5(select(select(~_wgslsmith_mod_vec2_i32(arg_0.b, vec2<i32>(arg_0.a, arg_0.b.x)), arg_0.b, select(all(vec4<bool>(false, true, true, true)), true, true)), firstLeadingBit(countOneBits(arg_0.b << (var_1.zw % vec2<u32>(32u)))), true), Struct_3(select(vec3<bool>(any(vec3<bool>(true, false, false)), false, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), Struct_2(~vec3<i32>(11544i, arg_0.b.x, arg_0.b.x) ^ -vec3<i32>(42407i, 0i, arg_0.b.x), vec4<i32>(1i, firstLeadingBit(arg_0.a), _wgslsmith_mult_i32(51208i, arg_0.b.x), arg_0.b.x)), ~var_1.x, vec3<i32>(-1i, countOneBits(-10255i), 1i >> (select(49349u, var_1.x, false) % 32u)), ~select(-vec4<i32>(arg_0.a, arg_0.a, -1i, arg_0.b.x), vec4<i32>(arg_0.a, arg_0.b.x, arg_0.a, arg_0.a), vec4<bool>(false, true, false, true))), all(vec4<bool>(true, true, true, true)), Struct_4(Struct_2(firstLeadingBit(firstLeadingBit(vec3<i32>(2147483647i, arg_0.b.x, 68889i))), vec4<i32>(~(-12741i), countOneBits(arg_0.b.x), arg_0.b.x, 0i)), 0i), vec2<u32>(var_1.x, u_input.a));
    return vec4<u32>(~_wgslsmith_mult_u32(var_0.x, ~var_1.x) ^ 0u, var_0.x, _wgslsmith_div_u32(u_input.a, abs(u_input.a)), 1977u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(Struct_1(~_wgslsmith_add_i32(-1i, 1i), vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1435f, 1252f), vec2<f32>(1000f, -971f))) + vec2<f32>(_wgslsmith_f_op_f32(floor(-771f)), _wgslsmith_f_op_f32(f32(-1f) * -263f))));
    var var_1 = any(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), true));
    var var_2 = Struct_1(_wgslsmith_mod_i32(75144i, _wgslsmith_sub_i32(1i, ~1i)), vec2<i32>(~_wgslsmith_mult_i32(1i, 7251i), -_wgslsmith_add_i32(0i, 0i)) ^ abs(select(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-9879i, 0i), vec2<i32>(2147483647i, -23276i), vec2<i32>(0i, -2147483647i)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    global0 = array<vec3<f32>, 22>();
    var var_3 = Struct_2(((~vec3<i32>(var_2.a, -2147483647i, var_2.a) & (vec3<i32>(20024i, -47319i, var_2.b.x) ^ vec3<i32>(var_2.a, 87i, var_2.a))) << (vec3<u32>(~u_input.a, u_input.a, 1u | var_0.x) % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, var_2.b.x), vec2<i32>(var_2.b.x, var_2.a) | var_2.b), firstTrailingBit(-32104i), i32(-1i) * -1i), reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(33013i, var_2.b.x, 3632i, var_2.b.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(1u, 89876u, 100195u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(0i, var_2.a, firstLeadingBit(var_2.b.x), abs(var_2.b.x)))));
    var var_4 = select(select(vec3<bool>(false, true, true), vec3<bool>(all(vec2<bool>(false, true)), func_1(Struct_1(-2147483647i, var_2.b), vec2<f32>(-368f, -244f)).x > _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 55986u, 11930u), vec4<u32>(0u, var_0.x, u_input.a, var_0.x)), true | any(vec3<bool>(false, false, true))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, true)))), vec3<bool>(select(false, select(true, 1u >= u_input.a, any(vec2<bool>(false, false))), true), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false))), all(vec3<bool>(true, all(vec4<bool>(true, true, true, false)), true))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, false), false))), select(vec3<bool>(any(vec2<bool>(true, true)), true, all(vec3<bool>(false, true, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), -20935i > var_2.a), any(vec3<bool>(true, true, true))), false));
    var_2 = Struct_1(-var_3.a.x, -vec2<i32>(1i, var_2.a));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-772f + 326f) * _wgslsmith_div_f32(303f, 406f)))) - -471f), 2620f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(655f, 1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, func_2(var_5, var_0.zw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1886f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_5.x)) + _wgslsmith_f_op_f32(-var_5.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.x + 1000f), -201f))));
}

