struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(1u, 62042u), Struct_2(-27896i, Struct_1(vec2<i32>(1i, -30i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec2<bool>(true, true)), vec2<u32>(1u, 4294967295u), -21057i));

var<private> global2: i32 = -1i;

var<private> global3: Struct_2;

var<private> global4: array<i32, 28>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1930f), _wgslsmith_f_op_f32(-1916f - -1312f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1053f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(995f, 721f, -780f), vec3<f32>(3052f, -1024f, 1069f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, 1432f, 115f) + vec3<f32>(-462f, 330f, 427f)))))));
    global1 = arg_0;
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1754f)) - _wgslsmith_f_op_f32(abs(var_1.x))))), var_1.x, _wgslsmith_f_op_f32(-var_1.x));
    let var_2 = -arg_0.b.a;
    return reverseBits(global3.c.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = vec4<u32>(global3.c.x, 22136u, func_3(Struct_3(~min(vec2<u32>(27999u, global1.b.c.x), vec2<u32>(global1.b.c.x, 10001u)), Struct_2(abs(22105i), Struct_1(vec2<i32>(global4[_wgslsmith_index_u32(39639u, 28u)], global4[_wgslsmith_index_u32(25978u, 28u)]), vec3<i32>(-47601i, global1.b.d, u_input.a), global1.b.b.c), _wgslsmith_sub_vec2_u32(vec2<u32>(41163u, 23117u), global3.c), global3.b.b.x & global1.b.d)), arg_3.xx), _wgslsmith_mod_u32(global1.b.c.x << (_wgslsmith_mod_u32(~0u, 1u) % 32u), ~global3.c.x));
    global0 = array<i32, 24>();
    var var_1 = Struct_4(Struct_1(global3.b.b.zy | (max(vec2<i32>(15457i, -2147483647i), global1.b.b.b.xy) << (_wgslsmith_div_vec2_u32(vec2<u32>(100370u, var_0.x), vec2<u32>(13440u, global1.a.x)) % vec2<u32>(32u))), _wgslsmith_clamp_vec3_i32(countOneBits(~vec3<i32>(global3.b.a.x, global1.b.a, global3.d)), firstLeadingBit(vec3<i32>(-1i, 35695i, global3.b.b.x)), abs(global3.b.b << (vec3<u32>(global1.b.c.x, global3.c.x, var_0.x) % vec3<u32>(32u)))), global1.b.b.c));
    return var_1.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(457f, arg_0.x))), u_input.a, !(!select(select(vec3<bool>(arg_2.a.c.x, global3.b.c.x, global3.b.c.x), vec3<bool>(arg_1, false, true), false), !vec3<bool>(true, arg_1, false), arg_1)));
    global1 = Struct_3(_wgslsmith_mod_vec2_u32(~(~_wgslsmith_div_vec2_u32(global1.a, vec2<u32>(global3.c.x, global1.a.x))), vec2<u32>(global3.c.x, 4294967295u)), Struct_2(u_input.a, Struct_1((vec2<i32>(1i, global4[_wgslsmith_index_u32(68836u, 28u)]) >> (global3.c % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(global3.b.a, var_0.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 30624i, u_input.a), vec3<i32>(global3.d, -8249i, u_input.a), vec3<i32>(0i, -1i, -32239i)), !(!global3.b.c)), vec2<u32>(_wgslsmith_mult_u32(func_3(Struct_3(vec2<u32>(1u, global1.a.x), Struct_2(21423i, Struct_1(vec2<i32>(13384i, global1.b.b.b.x), vec3<i32>(-24616i, u_input.a, -2147483647i), global1.b.b.c), global3.c, 1i)), global1.b.b.c), 7167u), ~global1.b.c.x), ~2147483647i));
    global2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -6485i, 0i, -25543i), vec4<i32>(arg_2.a.b.x, -2147483647i, global4[_wgslsmith_index_u32(global1.b.c.x, 28u)], arg_2.a.b.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -10563i, 1i, global4[_wgslsmith_index_u32(19219u, 28u)]), vec4<i32>(-1i, 2147483647i, -1i, u_input.a)), global3.d >> (global3.c.x % 32u), u_input.a, select(65126i, 48512i, false))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 2147483647i, -30541i), -vec4<i32>(-1i, -12974i, 0i, var_0.a.x), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -2147483647i, arg_2.a.a.x)))), firstTrailingBit(u_input.a));
    let var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + -775f), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_f_op_f32(select(-164f, arg_0.x, arg_1)))), -191f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.xz, vec2<f32>(arg_0.x, 1750f), true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.xx, arg_0.zy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(496f, -1960f)))), arg_0.zx)), select(func_2(arg_0, _wgslsmith_div_vec2_f32(arg_0.zx, arg_0.yz), select(~arg_2.a.b.x, firstTrailingBit(global1.b.d), all(var_0.c)), vec3<bool>(true, false, true)).b.x, firstTrailingBit(~var_0.a.x), arg_1), !vec3<bool>(true, ~global3.c.x >= global3.c.x, global3.c.x <= func_3(Struct_3(vec2<u32>(1u, 21773u), Struct_2(var_0.b.x, Struct_1(vec2<i32>(u_input.a, -1i), global3.b.b, arg_2.a.c), global1.a, global3.a)), global1.b.b.c)));
    var var_2 = -36292i;
    return Struct_1(arg_2.a.a, vec3<i32>(u_input.a, 1i, countOneBits(_wgslsmith_add_i32(~var_0.b.x, _wgslsmith_sub_i32(23531i, -15782i)))), !(!arg_2.a.c));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(func_4(vec3<f32>(1f, 1f, 1f), true, Struct_4(global3.b)));
    var var_1 = global3.b;
    let var_2 = global1.b;
    var var_3 = vec4<i32>(global3.a, 1i, ~countOneBits(2147483647i), global1.b.b.a.x);
    let var_4 = var_0.a.b;
    return Struct_2(var_4.x, func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-453f, _wgslsmith_f_op_f32(658f * -916f), _wgslsmith_f_op_f32(min(-424f, 747f))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, -521f) - vec2<f32>(587f, -857f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1505f, -578f) - vec2<f32>(436f, 781f)) * vec2<f32>(1000f, 778f)), func_4(vec3<f32>(-1000f, -1030f, 442f), false, Struct_4(global3.b)).c.x)), global1.b.a, vec3<bool>(true, true, true)), global1.a, global1.b.b.b.x);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = -1i;
    global3 = func_5(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(740f, -611f, -314f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(815f, 392f, -157f) - vec3<f32>(-1000f, 192f, 969f)))), true, Struct_4(func_2(vec3<f32>(-201f, -887f, -371f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-788f, 146f), vec2<f32>(-408f, -337f))), _wgslsmith_clamp_i32(2147483647i, u_input.a, 1i), arg_0.yyz))));
    var_0 = ~(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.c.x, ~(global3.c.x >> (global1.b.c.x % 32u))), 24u)] ^ global3.a);
    var var_1 = max(firstLeadingBit(vec3<i32>(0i, 1i, global0[_wgslsmith_index_u32(global1.b.c.x, 24u)]) >> (select(vec3<u32>(4294967295u, 1u, global1.b.c.x), vec3<u32>(global3.c.x, global3.c.x, global1.b.c.x) & vec3<u32>(global3.c.x, global3.c.x, global3.c.x), vec3<bool>(true, global3.b.c.x, true)) % vec3<u32>(32u))), global1.b.b.b);
    let var_2 = _wgslsmith_mod_i32(reverseBits(~(-1i)), _wgslsmith_mult_i32(i32(-1i) * -12686i, 56050i));
    return global3.b;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1147f, -301f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - arg_3) - 1177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_3))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -408f, arg_3))))));
    let var_1 = Struct_4(func_5(global1.b.b).b);
    let var_2 = select(vec4<bool>(global1.b.b.c.x, any(!select(vec4<bool>(true, false, true, var_1.a.c.x), vec4<bool>(var_1.a.c.x, global3.b.c.x, true, false), vec4<bool>(arg_0.c.x, global3.b.c.x, true, var_1.a.c.x))), false, all(vec3<bool>(true, 15045u <= global1.b.c.x, -4415i <= arg_1.x))), select(!(!vec4<bool>(arg_0.c.x, arg_2.b.c.x, true, var_1.a.c.x)), select(!(!vec4<bool>(true, false, var_1.a.c.x, false)), !select(vec4<bool>(true, true, var_1.a.c.x, arg_2.b.c.x), vec4<bool>(true, var_1.a.c.x, arg_2.b.c.x, true), global1.b.b.c.x), vec4<bool>(global1.b.b.c.x | false, global3.b.c.x | global3.b.c.x, true, arg_0.c.x && global3.b.c.x)), global3.b.c.x), vec4<bool>(~(var_1.a.b.x << (72591u % 32u)) >= 0i, !(!(arg_2.b.c.x & arg_2.b.c.x)), true, false));
    let var_3 = max(func_1(select(!select(vec4<bool>(false, false, arg_0.c.x, true), vec4<bool>(true, global1.b.b.c.x, false, false), var_2), !(!var_2), false)).b.x, func_4(vec3<f32>(var_0.x, 817f, _wgslsmith_f_op_f32(-var_0.x)), true, var_1).b.x);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(872f, -1048f))) * arg_3))));
    return abs(arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global3.b.b;
    let var_1 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-606f, -1340f)) + -1000f), -745f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1820f)) - _wgslsmith_f_op_f32(select(-2028f, -1763f, true)))), true);
    global2 = -11068i;
    var var_2 = vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global4[_wgslsmith_index_u32(global1.a.x, 28u)], -30016i, 22534i) >> (vec4<u32>(0u, 71587u, global1.b.c.x, global1.a.x) % vec4<u32>(32u)), ~(~vec4<i32>(2565i, var_0.x, -22823i, var_0.x))) ^ global4[_wgslsmith_index_u32(~firstLeadingBit(global1.a.x >> (global3.c.x % 32u)), 28u)], -_wgslsmith_sub_i32(func_6(func_1(vec4<bool>(true, var_1.x, false, true)), global3.b.b, global1.b, _wgslsmith_f_op_f32(457f + -722f)), 2147483647i));
    let var_3 = global1.b;
    var var_4 = select(~(~_wgslsmith_add_vec4_i32(select(vec4<i32>(1i, -22399i, 0i, global4[_wgslsmith_index_u32(var_3.c.x, 28u)]), vec4<i32>(global4[_wgslsmith_index_u32(0u, 28u)], 2147483647i, global0[_wgslsmith_index_u32(var_3.c.x, 24u)], -2147483647i), vec4<bool>(false, var_3.b.c.x, false, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global0[_wgslsmith_index_u32(global1.b.c.x, 24u)], global4[_wgslsmith_index_u32(global3.c.x, 28u)]), vec4<i32>(50929i, 30012i, var_2.x, u_input.a), vec4<i32>(u_input.a, global1.b.a, u_input.a, var_2.x)))), vec4<i32>(~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.b.c.x, 44166u, 36985u), vec4<u32>(var_3.c.x, global3.c.x, 0u, 0u)), 24u)]), -2147483647i, ~(-2147483647i), 1i), var_3.b.c.x);
    var var_5 = func_5(Struct_1(func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1221f), _wgslsmith_f_op_f32(select(1266f, 1066f, true)), _wgslsmith_f_op_f32(-572f + 296f)), false, Struct_4(Struct_1(global3.b.a, vec3<i32>(-18239i, var_3.d, -1i), global3.b.c))).a, vec3<i32>(var_4.x, _wgslsmith_sub_i32(var_0.x, -var_3.a), reverseBits(~var_2.x)), vec2<bool>(false, (global1.b.c.x << (38596u % 32u)) != _wgslsmith_add_u32(10345u, 67837u)))).c.x;
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(2218f, _wgslsmith_f_op_f32(trunc(919f)), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-195f, -162f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(115f)))), vec4<u32>(global3.c.x, ~global1.a.x | 21091u, _wgslsmith_div_u32(1u, ~max(4294967295u, global3.c.x)), _wgslsmith_sub_u32(~var_3.c.x, var_3.c.x)), global3.c.x >> (firstLeadingBit(1u) % 32u), reverseBits(~global1.a.x) | global3.c.x);
}

