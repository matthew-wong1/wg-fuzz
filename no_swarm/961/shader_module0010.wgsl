struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<u32>(5849u, 4294967295u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec3<u32>(1u, 1u, 6706u)), Struct_1(vec3<u32>(16894u, 7501u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 0u)), Struct_1(vec3<u32>(82846u, 48462u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec3<u32>(83862u, 4294967295u, 51876u)), Struct_1(vec3<u32>(49855u, 1u, 1u)), Struct_1(vec3<u32>(21603u, 52563u, 1u)), Struct_1(vec3<u32>(20994u, 38592u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 42447u, 75391u)), Struct_1(vec3<u32>(20147u, 1u, 37380u)), Struct_1(vec3<u32>(52139u, 7657u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 107064u)), Struct_1(vec3<u32>(0u, 0u, 18493u)));

var<private> global1: array<vec2<i32>, 19>;

var<private> global2: u32 = 15253u;

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(201f, -1666f, 618f), vec3<f32>(-141f, 1394f, -1082f), vec3<f32>(-1885f, 354f, -2082f), vec3<f32>(-168f, 127f, -271f), vec3<f32>(-447f, -641f, 2170f), vec3<f32>(714f, -1000f, -1000f), vec3<f32>(-1000f, 1000f, -1899f), vec3<f32>(330f, 1664f, -1000f), vec3<f32>(-656f, -1546f, -1008f), vec3<f32>(-709f, 321f, 716f), vec3<f32>(-1577f, 988f, 381f), vec3<f32>(-417f, 1454f, -1404f), vec3<f32>(-156f, -1000f, 289f), vec3<f32>(-888f, -751f, 1341f), vec3<f32>(554f, -479f, -1196f), vec3<f32>(-2304f, -1320f, -1000f), vec3<f32>(440f, -1469f, -258f), vec3<f32>(-373f, -1000f, 525f), vec3<f32>(635f, 1412f, -1631f), vec3<f32>(1000f, 782f, 490f), vec3<f32>(1000f, -443f, 1324f), vec3<f32>(-391f, -690f, 1000f), vec3<f32>(571f, 676f, -1083f), vec3<f32>(-217f, 477f, -727f), vec3<f32>(-814f, -1037f, -334f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~_wgslsmith_mult_vec3_u32(firstTrailingBit(select(~vec3<u32>(26133u, 46162u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 94395u, u_input.a)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), ~vec3<u32>(1u, ~4294967295u, _wgslsmith_sub_u32(75977u, 0u)));
    global2 = reverseBits(~2214u);
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 18u)];
    let var_2 = (-select(abs(u_input.b.x), u_input.b.x, true) >= u_input.c) && true;
    let var_3 = firstTrailingBit(~u_input.b.xy);
    return !select(!(!select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(false, var_2, true, true), vec4<bool>(true, true, false, var_2))), select(vec4<bool>(any(vec4<bool>(true, var_2, var_2, false)), var_2, false, var_2 || false), vec4<bool>(true, false, true, all(vec2<bool>(true, false))), select(!vec4<bool>(false, var_2, var_2, true), !vec4<bool>(true, false, var_2, true), !vec4<bool>(var_2, var_2, var_2, var_2))), var_2);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    let var_0 = vec4<bool>(!(!arg_2), arg_2, !select(0i != _wgslsmith_clamp_i32(-33295i, u_input.c, u_input.b.x), all(vec4<bool>(arg_2, arg_2, arg_2, arg_2)) && true, all(func_3())), any(func_3().zxy));
    global1 = array<vec2<i32>, 19>();
    var var_1 = var_0.x;
    global0 = array<Struct_1, 18>();
    var_1 = var_0.x;
    return vec4<i32>(-2147483647i, u_input.b.x, _wgslsmith_mod_i32(0i, u_input.c) << (57638u % 32u), u_input.c);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(min(vec4<i32>(-(~u_input.b.x), ~reverseBits(0i), ~(-2147483647i), ~u_input.c), vec4<i32>(-12668i, (u_input.b.x & 1i) >> (~arg_1.x % 32u), abs(u_input.c) & ~u_input.b.x, _wgslsmith_div_i32(i32(-1i) * -1i, 15706i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 20486i), vec4<i32>(u_input.c, u_input.c, u_input.b.x, 7809i)), func_2(vec3<f32>(-1568f, -766f, 618f), Struct_1(arg_1), true), vec4<i32>(_wgslsmith_add_i32(u_input.b.x, -1i), _wgslsmith_add_i32(-34959i, -75127i), -18579i, reverseBits(29848i))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(79839u, 206u, arg_1.x, _wgslsmith_mult_u32(13890u, arg_2.a.x)), countOneBits(vec4<u32>(u_input.a, arg_1.x, u_input.a, u_input.a)) ^ max(vec4<u32>(1u, 12073u, 22846u, arg_2.a.x), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 76499u))) % vec4<u32>(32u)));
    var var_1 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, arg_2.a.x >= 2453u, false), true), select(func_3(), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, -1900f <= arg_0.x, 0i == u_input.c), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, true, true)), true), !all(vec4<bool>(false, false, true, false)))));
    let var_2 = Struct_1(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(6542u, arg_2.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(73949u, arg_2.a.x, 0u), vec3<u32>(0u, 10825u, arg_2.a.x)), ~27694u), arg_1, ~(~arg_1)), ~vec3<u32>(arg_2.a.x, 1u, reverseBits(u_input.a))));
    let var_3 = -1271f;
    let var_4 = Struct_1(vec3<u32>(~(~_wgslsmith_div_u32(4294967295u, arg_1.x)), 65568u, 13334u));
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(u_input.a, u_input.a, 36263u);
    global3 = array<vec3<f32>, 25>();
    var var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~(vec3<u32>(18672u, u_input.a, u_input.a) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(var_0.x, 36623u, u_input.a))), vec3<u32>(func_1(_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(u_input.a, 25u)], vec3<f32>(-147f, -328f, -755f)), vec3<u32>(var_0.x, 38744u, var_0.x), Struct_1(vec3<u32>(4294967295u, 1u, 0u))), select(18459u, var_0.x, true), 0u)));
    var_1 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(func_1(global3[_wgslsmith_index_u32(var_1.a.x, 25u)], vec3<u32>(30745u, 7525u, 12388u), Struct_1(var_1.a)), var_1.a.x, ~var_1.a.x) << (vec3<u32>(u_input.a, firstLeadingBit(var_1.a.x), var_1.a.x) % vec3<u32>(32u)), (vec3<u32>(1u, 82620u, var_1.a.x) & var_1.a) | ~vec3<u32>(13581u, var_1.a.x, u_input.a)));
    global0 = array<Struct_1, 18>();
    var var_2 = vec4<u32>(var_0.x, ~var_0.x, reverseBits(20741u) | _wgslsmith_sub_u32(1u, ~_wgslsmith_sub_u32(var_1.a.x, 19172u)), var_0.x);
    let var_3 = vec4<i32>(-(u_input.c >> (~min(0u, var_1.a.x) % 32u)), u_input.c >> (var_1.a.x % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_mod_i32(abs(1i), reverseBits(u_input.c | u_input.b.x))), 49857i);
    global1 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-441f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1562f), _wgslsmith_f_op_f32(f32(-1f) * -637f))))), var_2.wxx, vec3<u32>(1u, _wgslsmith_div_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_2.x, u_input.a), vec4<u32>(1u, u_input.a, var_2.x, 40246u)), firstTrailingBit(4838u)), min(min(107596u, 4294967295u), ~var_1.a.x)), abs(_wgslsmith_div_u32(var_2.x, var_2.x))));
}

