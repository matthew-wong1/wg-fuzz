struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(1u, 64335u, 1u, 20941u), 1i, -1350f, vec4<bool>(false, true, true, false), 5176i), Struct_1(vec4<u32>(0u, 31895u, 4294967295u, 0u), 16615i, -450f, vec4<bool>(true, true, false, false), 2147483647i), Struct_1(vec4<u32>(1818u, 20992u, 4338u, 30657u), -61744i, -1000f, vec4<bool>(false, false, false, false), 0i), Struct_1(vec4<u32>(5048u, 73634u, 12405u, 0u), 0i, 2502f, vec4<bool>(true, true, true, false), i32(-2147483648)), Struct_1(vec4<u32>(7925u, 4294967295u, 0u, 26674u), 0i, 179f, vec4<bool>(false, false, true, false), 0i), Struct_1(vec4<u32>(45298u, 4294967295u, 24947u, 75831u), 1i, -1089f, vec4<bool>(false, false, false, true), -36677i), Struct_1(vec4<u32>(12523u, 38532u, 1u, 25139u), -1917i, 1000f, vec4<bool>(false, false, true, false), -482i), Struct_1(vec4<u32>(56358u, 644u, 58286u, 4294967295u), 505i, -1075f, vec4<bool>(false, true, false, true), -1i), Struct_1(vec4<u32>(0u, 1u, 0u, 4294967295u), -17074i, -1309f, vec4<bool>(true, true, true, true), -43035i), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), 1i, 1613f, vec4<bool>(false, false, true, true), 54086i), Struct_1(vec4<u32>(1u, 0u, 1u, 0u), -1i, -589f, vec4<bool>(true, false, false, false), i32(-2147483648)), Struct_1(vec4<u32>(2057u, 4294967295u, 1u, 1u), -1i, -555f, vec4<bool>(false, false, false, false), 68250i), Struct_1(vec4<u32>(0u, 33254u, 35702u, 4294967295u), 0i, -868f, vec4<bool>(false, true, false, true), 1i), Struct_1(vec4<u32>(97430u, 75009u, 1u, 38406u), 38794i, -284f, vec4<bool>(false, true, true, true), -5702i), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), 1i, -759f, vec4<bool>(false, false, true, false), 0i), Struct_1(vec4<u32>(19612u, 0u, 1u, 4294967295u), 2147483647i, -450f, vec4<bool>(true, false, true, false), i32(-2147483648)), Struct_1(vec4<u32>(0u, 1u, 20247u, 0u), 16235i, 1021f, vec4<bool>(true, false, false, true), 1i), Struct_1(vec4<u32>(4294967295u, 0u, 26877u, 1u), 8142i, 1213f, vec4<bool>(true, true, false, true), 33030i), Struct_1(vec4<u32>(33065u, 0u, 21437u, 71992u), 38691i, 428f, vec4<bool>(false, true, true, false), 70980i), Struct_1(vec4<u32>(1u, 4294967295u, 67703u, 1u), 36766i, -1547f, vec4<bool>(false, true, true, false), 0i), Struct_1(vec4<u32>(1u, 23208u, 0u, 46018u), 2147483647i, -200f, vec4<bool>(true, false, false, false), 13315i), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), -5i, -270f, vec4<bool>(false, true, false, true), 1i), Struct_1(vec4<u32>(0u, 79652u, 4294967295u, 1u), -1i, -787f, vec4<bool>(false, true, true, false), 1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(~select(u_input.c, u_input.c, false), u_input.b, -803f, select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), u_input.a != u_input.c.x), abs(_wgslsmith_sub_i32(u_input.b, 2147483647i))), min(firstTrailingBit(u_input.b), _wgslsmith_mod_i32(~(-73070i), u_input.b >> (4294967295u % 32u))), vec4<bool>(_wgslsmith_f_op_f32(arg_0.x - -638f) < _wgslsmith_f_op_f32(f32(-1f) * -719f), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false)), false), ~vec3<u32>(u_input.a ^ u_input.a, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.a), u_input.a), ~(~abs(u_input.a))), Struct_1(vec4<u32>(~u_input.a, u_input.a, abs(min(u_input.c.x, 30361u)), u_input.c.x), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1191f)), vec4<bool>(!all(vec4<bool>(false, false, false, true)), true, false, !any(vec4<bool>(true, true, false, false))), -35716i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-324f, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, 646f, 779f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, arg_0.x, -577f))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(598f, arg_0.x, arg_0.x) * vec3<f32>(arg_0.x, arg_0.x, 423f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1963f, 1000f)))))), u_input.a, ~0u);
    var_0 = Struct_3(var_0.a, var_0.a.a, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(1f * var_0.c.x)), _wgslsmith_div_u32(86785u, firstLeadingBit(~var_0.b.a.x & _wgslsmith_clamp_u32(var_0.e, 14444u, 10324u))), ~u_input.a);
    var var_1 = var_0.a;
    let var_2 = select(!vec4<bool>(any(select(var_0.b.d.wzy, vec3<bool>(var_1.c.x, false, var_0.b.d.x), var_0.a.a.d.x)), var_0.a.c.x || !var_1.c.x, true, select(select(var_0.a.a.d.x, false, true), true, any(var_0.a.c))), select(vec4<bool>(var_1.c.x, false, false, true), !var_0.b.d, true), vec4<bool>(((var_1.a.b == 1i) != true) && select(true, any(vec3<bool>(var_0.a.c.x, var_1.c.x, true)), any(vec4<bool>(false, false, var_1.a.d.x, var_1.a.d.x))), var_0.a.c.x, all(vec3<bool>(var_1.c.x, select(false, var_0.b.d.x, false), var_0.b.d.x)), var_0.b.a.x <= ~1u));
    let var_3 = var_2.x;
    return var_1.e;
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global0 = u_input.c.x;
    var var_0 = ~(-firstTrailingBit(-30630i));
    var var_1 = Struct_5((104420u == func_3(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(2431f, 435f)))) == true, -u_input.b);
    var_1 = Struct_5(1u >= u_input.c.x, max(-1i, max(u_input.b, -1i)));
    var var_2 = u_input.b;
    return -2147483647i;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = -_wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(30528i, u_input.b, u_input.b, u_input.b), ~vec4<i32>(-1i, u_input.b, -7084i, 1i)), min(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, -30731i), vec4<i32>(-66662i, u_input.b, u_input.b, u_input.b)), u_input.b, -7229i, 2147483647i), vec4<i32>(func_2(vec3<f32>(arg_1.x, arg_1.x, -982f)), u_input.b | 4408i, u_input.b >> (19734u % 32u), u_input.b)));
    global1 = array<Struct_1, 23>();
    var var_1 = -(~((select(var_0.x, var_0.x, arg_0.x) >> (max(u_input.c.x, u_input.c.x) % 32u)) & ~u_input.b));
    var var_2 = Struct_4(_wgslsmith_dot_vec4_i32(countOneBits(var_0), vec4<i32>(firstLeadingBit(var_0.x), abs(1566i), u_input.b, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, u_input.b), u_input.b))), Struct_3(Struct_2(Struct_1(select(u_input.c, vec4<u32>(35702u, u_input.c.x, u_input.c.x, u_input.c.x), arg_0), 15481i, -1008f, !arg_0, _wgslsmith_div_i32(var_0.x, 4996i)), -2147483647i, select(vec4<bool>(false, false, arg_0.x, arg_0.x), arg_0, arg_0), u_input.c.zwz, ~(~4294967295u)), Struct_1(vec4<u32>(u_input.c.x, 41125u | u_input.a, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 10710u), u_input.c.zz)), u_input.b, arg_1.x, arg_0, func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), -3259f)), 42088u, u_input.a), -1534f, arg_0.x);
    var var_3 = var_2.b;
    return Struct_1(select(var_2.b.b.a, (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 60528u, 56086u, 4294967295u), var_2.b.a.a.a) & _wgslsmith_add_vec4_u32(u_input.c, var_2.b.a.a.a)) >> (var_3.a.a.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(1f)) < 532f), 9623i, _wgslsmith_f_op_f32(f32(-1f) * -1011f), select(select(select(vec4<bool>(true, true, true, var_2.d), select(var_3.a.a.d, vec4<bool>(false, var_3.a.a.d.x, arg_0.x, arg_0.x), var_3.a.a.d.x), var_3.b.a.x != 37367u), select(var_2.b.b.d, select(var_2.b.a.c, vec4<bool>(false, var_3.a.c.x, false, arg_0.x), vec4<bool>(false, var_2.d, var_3.b.d.x, false)), true), !select(vec4<bool>(var_3.b.d.x, var_3.b.d.x, var_2.d, false), vec4<bool>(arg_0.x, var_2.d, var_2.d, var_2.d), var_2.b.b.d)), vec4<bool>(!(true || arg_0.x), var_3.a.c.x, false, any(select(var_2.b.a.c.wzy, arg_0.yyz, vec3<bool>(true, false, arg_0.x)))), var_2.b.b.d), _wgslsmith_mod_i32(i32(-1i) * -603i, min(_wgslsmith_add_i32(13618i, var_3.a.b) ^ -34012i, var_3.b.b)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_5 {
    let var_0 = func_1(arg_1.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c, arg_1.c), vec2<f32>(-2265f, -1579f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, 1394f) - vec2<f32>(-1000f, arg_1.c))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(493f, arg_1.c) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_1.c), vec2<f32>(-818f, arg_1.c), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1928f, -2025f))))));
    let var_1 = Struct_2(func_1(!select(var_0.d, vec4<bool>(false, true, arg_2, arg_2), arg_1.d), vec2<f32>(-1065f, _wgslsmith_f_op_f32(-166f - -1236f))), reverseBits(arg_0.b), vec4<bool>(true, false, arg_0.a, arg_1.d.x), _wgslsmith_add_vec3_u32(vec3<u32>(func_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-323f, -304f)))), 34939u, _wgslsmith_dot_vec4_u32(u_input.c | vec4<u32>(56312u, 44328u, arg_1.a.x, arg_1.a.x), vec4<u32>(6218u, 1u, 1u, 32863u))), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, u_input.c.x, arg_3.x), ~u_input.c.xxx) >> ((~arg_1.a.ywz >> (vec3<u32>(arg_3.x, 1u, var_0.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~17303u) >> ((var_0.a.x >> (~5515u % 32u)) % 32u));
    var var_2 = _wgslsmith_dot_vec3_i32(-reverseBits(-(~vec3<i32>(arg_1.b, -13421i, u_input.b))), -(vec3<i32>(-18157i, -1i, u_input.b & var_1.b) ^ vec3<i32>(_wgslsmith_mult_i32(var_1.b, var_0.b), i32(-1i) * -2147483647i, var_1.a.b)));
    global0 = arg_1.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1797f, -241f))), vec2<f32>(_wgslsmith_f_op_f32(floor(384f)), _wgslsmith_f_op_f32(-671f * -1036f))))))));
    return arg_0;
}

fn func_5(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    global1 = array<Struct_1, 23>();
    let var_0 = Struct_3(Struct_2(func_1(vec4<bool>(arg_0.a, arg_0.a, arg_0.a && arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, 285f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1678f, 176f)))))), 11109i >> ((~arg_1.x ^ _wgslsmith_mult_u32(75366u, arg_1.x)) % 32u), func_1(vec4<bool>(arg_0.a & true, !arg_0.a, true, true && arg_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(834f, -312f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(610f, -2460f) + vec2<f32>(-2668f, -2170f)))).d, _wgslsmith_div_vec3_u32(select(~vec3<u32>(arg_1.x, 0u, 1u), max(u_input.c.zwz, vec3<u32>(arg_1.x, arg_1.x, u_input.c.x)), func_1(vec4<bool>(false, false, arg_0.a, true), vec2<f32>(-162f, -1356f)).d.zzx), func_1(vec4<bool>(false, arg_0.a, false, arg_0.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-390f, -1307f)))).a.xwx), _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, arg_1.x), u_input.c), u_input.c ^ u_input.c))), Struct_1(countOneBits(firstTrailingBit(u_input.c)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-23081i, arg_2, 16147i) >> (u_input.c.xyx % vec3<u32>(32u)), arg_3), _wgslsmith_f_op_f32(floor(1015f)), !(!(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), func_4(arg_0, func_1(vec4<bool>(arg_0.a, true, false, true), vec2<f32>(1252f, 298f)), true, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, arg_1.x, 16254u), vec4<u32>(u_input.c.x, 45263u, arg_1.x, arg_1.x)) >> (u_input.c % vec4<u32>(32u))).b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-173f, 450f, 494f)))) + vec3<f32>(1f, 1f, 1f))), 102569u, 8443u);
    let var_1 = select(vec4<i32>(firstLeadingBit(1i), _wgslsmith_mod_i32(2147483647i, var_0.b.b) | arg_3.x, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, 1i), countOneBits(var_0.b.b)), ~(~(-2147483647i))) ^ vec4<i32>(~(var_0.b.e ^ u_input.b), arg_2, arg_2, func_1(vec4<bool>(var_0.b.d.x, arg_0.a, var_0.a.c.x, true), _wgslsmith_div_vec2_f32(var_0.c.yz, vec2<f32>(1474f, -1609f))).b), _wgslsmith_sub_vec4_i32(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, var_0.b.e, -1i), vec4<i32>(-1254i, 22203i, 2147483647i, -2147483647i))), -vec4<i32>(_wgslsmith_div_i32(u_input.b, -5601i), var_0.b.e, 2147483647i, _wgslsmith_mod_i32(14150i, 1i))), !(any(func_1(var_0.a.c, var_0.c.xx).d.wy) | (!var_0.a.c.x || true)));
    var var_2 = _wgslsmith_mod_vec3_u32(func_1(func_1(vec4<bool>(arg_0.a && var_0.b.d.x, false, all(var_0.a.a.d), true), var_0.c.xz).d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.c, _wgslsmith_f_op_f32(ceil(-1518f))))).a.wxw, vec3<u32>(var_0.a.a.a.x, firstTrailingBit(u_input.a), 4294967295u));
    global0 = var_0.a.d.x;
    return Struct_2(global1[_wgslsmith_index_u32(43372u, 23u)], min(i32(-1i) * -2147483647i, 1i), var_0.a.c, var_0.a.a.a.yzx, firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x | var_0.a.d.x, _wgslsmith_mod_u32(~38426u, u_input.c.x ^ 22700u))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(func_5(func_4(Struct_5(false, func_5(Struct_5(false, u_input.b), vec2<u32>(3413u, 4294967295u), arg_1.b, vec3<i32>(u_input.b, u_input.b, u_input.b)).a.e), arg_2, !(!arg_2.d.x), select(arg_1.a.a, arg_2.a, arg_1.c) | u_input.c), u_input.c.yz, ~(-max(arg_1.a.e, u_input.b)), -vec3<i32>(max(u_input.b, -30533i), _wgslsmith_mult_i32(-5848i, u_input.b), ~u_input.b)), Struct_1(~((u_input.c | arg_1.a.a) ^ ~vec4<u32>(4294967295u, arg_1.a.a.x, 4294967295u, 65565u)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-35470i | arg_1.a.e, arg_2.b), arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c)), select(!arg_2.d, !arg_1.c, arg_2.d), arg_2.b), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zzz)), vec3<f32>(_wgslsmith_div_f32(-616f, _wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c))))), u_input.a, min(u_input.a, arg_2.a.x));
    let var_1 = !func_1(arg_1.a.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.c)) * _wgslsmith_f_op_f32(-arg_2.c)), func_1(!vec4<bool>(var_0.a.c.x, false, var_0.b.d.x, true), _wgslsmith_div_vec2_f32(arg_0.zw, var_0.c.xy)).c)).d.wx;
    let var_2 = Struct_1(select(arg_2.a, countOneBits(vec4<u32>(29318u, 1u, u_input.c.x, 15469u)), _wgslsmith_f_op_f32(arg_1.a.c - -1000f) != var_0.c.x) << (var_0.b.a % vec4<u32>(32u)), countOneBits(19777i), 1560f, !func_1(arg_2.d, arg_0.yw).d, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(600i, 1i, arg_1.b)) & firstLeadingBit(vec3<i32>(51208i, arg_1.b, arg_1.a.b)), vec3<i32>(func_5(Struct_5(true, 2147483647i), vec2<u32>(arg_2.a.x, arg_1.e), 16499i, vec3<i32>(1i, var_0.a.b, 2147483647i)).a.e, firstTrailingBit(-26052i), 1i)) << (0u % 32u));
    let var_3 = Struct_4(select(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -32230i), vec3<i32>(1i, var_2.b, arg_1.a.b))), arg_1.b, true), Struct_3(arg_1, var_0.b, vec3<f32>(_wgslsmith_f_op_f32(-arg_2.c), -176f, func_1(func_1(vec4<bool>(var_2.d.x, false, arg_1.a.d.x, false), arg_0.yz).d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, -351f))).c), var_2.a.x, _wgslsmith_dot_vec2_u32(~countOneBits(arg_2.a.wy), firstTrailingBit(vec2<u32>(arg_2.a.x, var_2.a.x)))), -536f, var_0.b.d.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-988f))), 1072f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2224f * 733f))))), func_5(func_4(Struct_5(true, -2147483647i), func_1(vec4<bool>(false, true, false, true), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1149f, 1535f), vec2<f32>(-1025f, -113f)))), all(vec4<bool>(true, true, true, false)), vec4<u32>(4943u, 1u, ~u_input.c.x, ~u_input.a)), countOneBits(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.a, 0u), u_input.c.wx), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(0u, u_input.a))), -38094i, select(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, -1i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(1i, u_input.b, u_input.b)), any(vec2<bool>(true, true)))), func_1(vec4<bool>(false, u_input.b <= -u_input.b, select(true, true, false), !all(vec3<bool>(false, true, true))), vec2<f32>(_wgslsmith_f_op_f32(233f * _wgslsmith_div_f32(1381f, -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(min(1205f, -1000f))))));
    var var_1 = Struct_4(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.b, -2147483647i, 1173i) | vec4<i32>(var_0.b, 2147483647i, u_input.b, var_0.b), -vec4<i32>(-1i, u_input.b, -1i, var_0.a.b))), Struct_3(var_0, global1[_wgslsmith_index_u32(~(~31745u), 23u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1333f, 712f, var_0.a.c))))), var_0.e, var_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c + var_0.a.c) * 607f))) * var_0.a.c), _wgslsmith_div_u32(func_1(var_0.a.d, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(239f, var_0.a.c), vec2<f32>(var_0.a.c, 148f)))).a.x, 4294967295u) == func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1765f, -467f) - vec2<f32>(-1452f, var_0.a.c)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.c, -2472f), vec2<f32>(var_0.a.c, 337f))))));
    var var_2 = true;
    let var_3 = -469f;
    var_1 = Struct_4(-u_input.b, var_1.b, var_3, func_1(var_0.c, vec2<f32>(var_3, 635f)).d.x);
    var var_4 = select(true, var_1.b.a.a.d.x, func_5(func_4(Struct_5(false, -2147483647i), var_1.b.a.a, var_1.b.b.d.x && var_1.d, ~var_1.b.a.a.a), firstTrailingBit(~u_input.c.yy), -1i | var_0.a.b, select(firstTrailingBit(vec3<i32>(-27116i, var_0.b, u_input.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.b, 1i, 0i), vec3<i32>(0i, -1i, u_input.b)), func_5(Struct_5(false, var_0.b), u_input.c.xw, -1i, vec3<i32>(-1i, -2147483647i, u_input.b)).a.d.wwy)).a.d.x) & (_wgslsmith_dot_vec3_i32(vec3<i32>(-67015i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 24521i), vec2<i32>(var_1.b.b.b, -3901i)), func_4(Struct_5(var_0.a.d.x, 1i), global1[_wgslsmith_index_u32(2838u, 23u)], var_0.a.d.x, var_1.b.b.a).b), vec3<i32>(u_input.b, _wgslsmith_mult_i32(17785i, var_1.b.a.a.b), var_0.b | -18400i)) < -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<i32>(var_0.b, 0i, var_0.b, 0i)), _wgslsmith_add_i32(var_0.a.e, 2147483647i)));
    let var_5 = Struct_4(~(1i >> (u_input.c.x % 32u)) << (~(~(~var_0.e)) % 32u), var_1.b, 527f, select(false, false, false));
    var var_6 = any(vec3<bool>(true, select(true, false, u_input.b >= ~var_5.a), true));
    let var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_5.c, _wgslsmith_f_op_f32(980f + var_0.a.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.a.c, var_5.c)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.c)), -1021f, 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_clamp_u32(u_input.c.x, ~52154u << (var_5.b.d % 32u), 27353u)), vec4<i32>(u_input.b, _wgslsmith_div_i32(2147483647i, -51366i), ~firstLeadingBit(_wgslsmith_clamp_i32(var_5.a, 0i, 2147483647i)), ~(-1i)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(var_1.b.a.d, u_input.c.wyw), _wgslsmith_mod_vec3_u32(u_input.c.zzy, reverseBits(vec3<u32>(var_5.b.a.a.a.x, var_0.d.x, 0u)))), vec3<u32>(select(42889u | var_1.b.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, 31480u, var_1.b.b.a.x), vec3<u32>(1u, 48590u, var_1.b.a.d.x)), var_0.a.d.x), ~func_3(vec2<f32>(-1000f, var_7.x)), min(0u ^ var_1.b.e, 0u))));
}

