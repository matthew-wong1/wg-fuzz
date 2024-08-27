struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = Struct_3(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), 34692i, true, Struct_1(vec4<u32>(3153u, firstLeadingBit(u_input.a), _wgslsmith_clamp_u32(0u, ~4294967295u, u_input.a), min(u_input.a, 3713u) ^ (50998u | u_input.b)), _wgslsmith_sub_vec2_u32(~(vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(u_input.a, 18416u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.a, 36206u), vec4<u32>(3097u, u_input.a, u_input.b, 1u)), ~6278u)), !select(!vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1172f, arg_0, -329f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, -525f, arg_0), vec4<f32>(-367f, -1000f, -1264f, 455f))), true)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-185f, arg_0, arg_0, -1755f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1210f, 1879f, 347f))))));
    global0 = true;
    global0 = var_0.d.b.x < u_input.b;
    let var_1 = Struct_3(~((var_0.a | countOneBits(var_0.a)) >> (4294967295u % 32u)), 1i, false, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.d.a.x << (u_input.a % 32u), var_0.d.b.x, _wgslsmith_add_u32(u_input.a, 35240u), u_input.a & 15138u), var_0.d.a), _wgslsmith_mod_vec2_u32(select(reverseBits(var_0.d.a.zy), var_0.d.b, false || arg_1), (var_0.d.a.zy ^ vec2<u32>(var_0.d.a.x, 4294967295u)) << (~var_0.d.a.yy % vec2<u32>(32u))), select(vec3<bool>(!arg_1, true, !var_0.c), vec3<bool>(true, !var_0.d.c.x, true), 27498i <= _wgslsmith_div_i32(-2147483647i, var_0.b)), vec4<f32>(2084f, _wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f * 625f) * _wgslsmith_div_f32(-1409f, 322f)), -1100f)));
    global0 = false;
    return firstTrailingBit(u_input.b);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_3 {
    return Struct_3(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), ~vec2<u32>(1u, 1u)), firstLeadingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-53266i, 2147483647i, -19703i), max(vec3<i32>(0i, -1i, 0i), vec3<i32>(-15200i, 40746i, 2147483647i)))) << (~_wgslsmith_sub_u32(u_input.a & 1u, u_input.b) % 32u), !arg_0, Struct_1(vec4<u32>(1u & func_3(1110f, arg_0), select(u_input.a, 2550u, !arg_0), 0u, 4294967295u), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 29408u), vec2<u32>(73078u, 38449u)), vec2<u32>(u_input.a, u_input.b)), !select(!vec3<bool>(arg_0, true, true), !vec3<bool>(false, true, arg_0), true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, 1018f, -1000f, arg_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1087f, arg_1.x, -1000f, arg_1.x)))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    global0 = all(vec3<bool>(arg_0.a.d.c.x, !all(select(vec3<bool>(arg_0.a.d.c.x, true, true), vec3<bool>(arg_0.a.c, arg_0.a.d.c.x, true), true)), true));
    let var_0 = Struct_4(Struct_3(1u, 2147483647i, all(vec4<bool>(any(arg_0.a.d.c), any(vec2<bool>(true, arg_0.a.c)), true, true)), arg_0.a.d));
    let var_1 = arg_0.a.d.c;
    let var_2 = Struct_5(arg_0, vec2<bool>(any(vec3<bool>(var_0.a.c, true, arg_0.a.c)), arg_0.a.d.c.x), ~min(func_2(!var_0.a.c, _wgslsmith_f_op_vec4_f32(arg_0.a.d.d + vec4<f32>(1019f, -1122f, var_0.a.d.d.x, 1241f))).d.a, min(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.d.b.x, 33741u, 1u, 68198u), arg_0.a.d.a), arg_0.a.d.a)));
    let var_3 = select(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.b, arg_2, arg_0.a.b, 1i), vec4<i32>(arg_0.a.b, -1i, 2147483647i, 10328i)), ~(vec4<i32>(-2147483647i, var_0.a.b, 0i, var_2.a.a.b) ^ vec4<i32>(5424i, 2147483647i, 0i, -26503i)), true) << (select(~vec4<u32>(firstLeadingBit(var_0.a.a), u_input.a, 26672u, countOneBits(arg_1.x)), ~var_2.a.a.d.a, arg_0.a.d.c.x) % vec4<u32>(32u));
    return arg_0.a.d;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    global0 = arg_0.c.c.x;
    var var_0 = func_4(Struct_4(func_2(arg_2.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.d.x, -503f, -1849f, -131f))) - vec4<f32>(-1456f, -1424f, -835f, arg_0.c.d.x)))), ~arg_2.b, abs(~(arg_3.x >> (arg_0.b % 32u))));
    var var_1 = arg_2.d.x;
    let var_2 = arg_3.x;
    global0 = !func_2(false, _wgslsmith_f_op_vec4_f32(abs(arg_2.d))).c;
    return -1282f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -536f), _wgslsmith_f_op_f32(f32(-1f) * -936f)) + vec3<f32>(-144f, _wgslsmith_f_op_f32(152f + -605f), _wgslsmith_f_op_f32(func_1(Struct_2(vec4<i32>(0i, 730i, -1i, 1i), 0u, Struct_1(vec4<u32>(19771u, 4294967295u, 1u, u_input.a), vec2<u32>(1u, u_input.b), vec3<bool>(false, true, false), vec4<f32>(1000f, 744f, 395f, 934f)), vec4<i32>(1i, -2147483647i, -2147483647i, -1i)), vec3<f32>(-266f, -804f, 1065f), Struct_1(vec4<u32>(u_input.a, 11170u, u_input.b, 20035u), vec2<u32>(u_input.a, u_input.a), vec3<bool>(true, false, true), vec4<f32>(-1116f, 1000f, -2381f, 280f)), vec3<i32>(-2147483647i, 2147483647i, 1i))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-891f, 613f, -341f) - vec3<f32>(-851f, 1211f, -698f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1259f, 1006f, -1283f), vec3<f32>(-1570f, 2223f, 385f)), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, 619f, -1000f)) - vec3<f32>(-772f, 1433f, 497f)))));
    var var_1 = Struct_5(Struct_4(func_2(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2028f, 347f, var_0.x, var_0.x) + vec4<f32>(1558f, 697f, -846f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-675f, var_0.x, var_0.x, var_0.x))))), !(!func_2(func_2(false, vec4<f32>(var_0.x, 1616f, var_0.x, 1609f)).d.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-933f, var_0.x, 259f, var_0.x))).d.c.zy), vec4<u32>(func_2(false, vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<i32>(1i, 24692i, -11215i, -70320i), u_input.b, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a), vec2<u32>(1u, u_input.a), vec3<bool>(true, false, true), vec4<f32>(-982f, -1136f, var_0.x, 1000f)), vec4<i32>(34524i, -2147483647i, 2453i, -100286i)), vec3<f32>(var_0.x, var_0.x, 928f), Struct_1(vec4<u32>(u_input.b, 0u, 1u, u_input.b), vec2<u32>(u_input.b, u_input.a), vec3<bool>(false, false, false), vec4<f32>(-120f, 1024f, var_0.x, 612f)), vec3<i32>(2147483647i, 2147483647i, 35516i))), _wgslsmith_f_op_f32(var_0.x * 828f), 609f, -198f)).d.b.x, u_input.a, firstTrailingBit(u_input.a), u_input.b));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<i32>(var_1.a.a.b, var_1.a.a.b, 6566i, var_1.a.a.b), var_1.c.x, var_1.a.a.d, vec4<i32>(var_1.a.a.b, 0i, -86327i, -74857i)), vec3<f32>(var_1.a.a.d.d.x, var_1.a.a.d.d.x, var_0.x), func_4(Struct_4(Struct_3(u_input.a, var_1.a.a.b, false, Struct_1(var_1.c, vec2<u32>(var_1.a.a.a, 84590u), vec3<bool>(false, false, var_1.a.a.c), var_1.a.a.d.d))), var_1.c.yx, -1i), max(vec3<i32>(-80288i, -2147483647i, -1i), vec3<i32>(var_1.a.a.b, -1i, -37679i)))), 234f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_2(vec4<i32>(0i, var_1.a.a.b, var_1.a.a.b, var_1.a.a.b), var_1.c.x, var_1.a.a.d, vec4<i32>(-2147483647i, var_1.a.a.b, -2147483647i, var_1.a.a.b)), _wgslsmith_f_op_vec3_f32(ceil(var_1.a.a.d.d.wyz)), var_1.a.a.d, countOneBits(vec3<i32>(var_1.a.a.b, 2147483647i, 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_1.a.a.d.d.x) * var_1.a.a.d.d.x))))));
    let var_3 = -168f;
    global0 = var_1.a.a.d.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(24876i, -2147483647i), -var_1.a.a.b, -var_1.a.a.b)), min(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, -47382i, 8632i)), vec3<i32>(var_1.a.a.b, 0i, var_1.a.a.b)), ~(~(-2160i)))), -431f, _wgslsmith_f_op_vec2_f32(var_0.yz * func_4(var_1.a, var_1.a.a.d.b, ~(-35580i)).d.xx));
}

