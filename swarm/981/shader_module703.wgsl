struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(4294967295u, 1u, 1u, 56176u), vec4<u32>(36986u, 13865u, 29431u, 68542u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(97297u, 0u, 21285u, 4294967295u), vec4<u32>(36471u, 0u, 77617u, 0u), vec4<u32>(4294967295u, 1u, 41212u, 1u), vec4<u32>(4150u, 79178u, 25353u, 52528u), vec4<u32>(0u, 1u, 53517u, 38708u), vec4<u32>(2768u, 66272u, 11303u, 4294967295u), vec4<u32>(1u, 4294967295u, 93948u, 4294967295u), vec4<u32>(1u, 4294967295u, 31164u, 4294967295u), vec4<u32>(31813u, 4294967295u, 1u, 39140u), vec4<u32>(21609u, 79891u, 0u, 4294967295u), vec4<u32>(46793u, 34173u, 38037u, 46803u), vec4<u32>(13689u, 0u, 7893u, 91309u), vec4<u32>(13008u, 0u, 11815u, 8764u), vec4<u32>(0u, 25873u, 4294967295u, 0u), vec4<u32>(67178u, 4294967295u, 37220u, 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> bool {
    var var_0 = -1040f;
    global1 = array<vec4<u32>, 18>();
    global0 = false;
    var var_1 = arg_0 & ~u_input.b.x;
    global1 = array<vec4<u32>, 18>();
    return all(select(!vec4<bool>(arg_1.x && arg_1.x, !arg_1.x, false, true), select(select(!vec4<bool>(arg_1.x, false, false, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), vec4<bool>(true, true, false, false)), vec4<bool>(!arg_1.x, true, arg_1.x, false), vec4<bool>(true, false, any(arg_1), all(vec4<bool>(arg_1.x, true, true, arg_1.x)))), arg_1.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = false;
    global1 = array<vec4<u32>, 18>();
    let var_0 = vec2<bool>(func_3(~(arg_2.c | firstLeadingBit(u_input.c)), vec2<bool>(true, true)), true);
    var var_1 = 0i;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.b)), arg_1, _wgslsmith_f_op_f32(min(-619f, 144f)), _wgslsmith_f_op_f32(arg_2.b * -398f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, 485f, arg_1, arg_1) - vec4<f32>(arg_1, arg_1, arg_1, arg_2.b)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b, arg_2.b, 160f, arg_1)))))), _wgslsmith_add_vec4_i32(firstLeadingBit(~(vec4<i32>(arg_2.c, u_input.b.x, arg_2.c, u_input.c) << (vec4<u32>(arg_0.x, 67435u, u_input.a, u_input.a) % vec4<u32>(32u)))), vec4<i32>(2591i, _wgslsmith_div_i32(~28078i, ~(-6902i)), u_input.b.x, ~(~(-45039i)))), arg_2, arg_2);
    return arg_2;
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0.d;
    let var_1 = func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(23973u), firstTrailingBit(0u)), vec2<u32>(~u_input.d.x, u_input.d.x)), arg_0.d.b, Struct_1(arg_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_f32(arg_0.c.b + var_0.b)), var_0.b), -(~u_input.c)), !(~u_input.d.x < u_input.d.x) | !any(select(vec3<bool>(true, true, var_0.a), vec3<bool>(false, arg_0.c.a, var_0.a), vec3<bool>(var_0.a, var_0.a, arg_0.d.a))));
    var var_2 = 1070f;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a), _wgslsmith_f_op_vec4_f32(ceil(arg_0.a)))), vec4<i32>(var_1.c, min(~(27617i >> (u_input.a % 32u)), -2147483647i), 33623i, ~(-_wgslsmith_add_i32(var_1.c, var_1.c))), arg_0.c, var_1);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-706f + var_0.b), _wgslsmith_f_op_f32(abs(-1009f))), -489f, _wgslsmith_f_op_f32(min(var_3.d.b, _wgslsmith_div_f32(-1128f, 139f))), 2253f) + arg_0.a), ~(vec4<i32>(var_3.c.c, var_3.b.x, 1i, arg_0.b.x) | min(vec4<i32>(-1i, -2147483647i, u_input.c, var_1.c), vec4<i32>(-9313i, 0i, arg_0.b.x, -1i))) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x & var_0.c, _wgslsmith_sub_i32(-25417i, var_1.c), i32(-1i) * -53190i, _wgslsmith_mod_i32(36355i, var_0.c)), var_3.b >> (global1[_wgslsmith_index_u32(~u_input.d.x, 18u)] % vec4<u32>(32u))), Struct_1(any(select(!vec3<bool>(true, var_0.a, var_3.d.a), vec3<bool>(var_1.a, true, var_3.c.a), var_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1098f)))), 16739i), func_2(vec2<u32>(~u_input.d.x, u_input.d.x) >> (~(~vec2<u32>(4520u, 1u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(528f * var_0.b) * _wgslsmith_f_op_f32(-arg_0.d.b))), Struct_1(true, arg_0.c.b, select(var_3.b.x, select(-1i, var_0.c, var_0.a), false)), _wgslsmith_sub_u32(u_input.a & u_input.a, u_input.a) > 20640u));
    return !vec2<bool>(true, var_0.a);
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: u32) -> vec2<i32> {
    global0 = true;
    global0 = true;
    global0 = _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, ~0i)) <= u_input.c;
    global1 = array<vec4<u32>, 18>();
    global0 = !all(vec4<bool>(false, true, true, any(!vec2<bool>(arg_2.x, arg_0))));
    return select(u_input.b, u_input.b, !arg_2);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    let var_0 = abs(-(~_wgslsmith_mult_i32(_wgslsmith_add_i32(55541i, arg_1), -arg_2.x)));
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.b, func_5(!arg_0.d.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2054f, -357f, arg_0.d.b))))), func_4(Struct_2(vec4<f32>(arg_0.c.b, arg_0.d.b, arg_0.c.b, 1000f), arg_0.b, Struct_1(true, 1000f, -2147483647i), func_2(vec2<u32>(u_input.a, 39493u), 653f, arg_0.d, arg_0.d.a))), u_input.d.x));
    var var_2 = u_input.d.yx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f - _wgslsmith_f_op_f32(ceil(1397f)))) * _wgslsmith_f_op_f32(823f * _wgslsmith_f_op_f32(-arg_0.d.b)));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(vec4<f32>(-224f, _wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x, arg_0.x), -reverseBits(vec4<i32>(1725i, ~(-14034i), 1i, u_input.c ^ -26983i)), func_2(~u_input.d.xz, 1000f, Struct_1(true, arg_1.x, min(-18752i, -18821i)), true), func_2(u_input.d.yx ^ vec2<u32>(u_input.a >> (u_input.d.x % 32u), _wgslsmith_add_u32(u_input.d.x, u_input.a)), _wgslsmith_f_op_f32(exp2(arg_0.x)), Struct_1(~u_input.b.x > abs(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), 0i), func_3(abs(_wgslsmith_add_i32(26720i, u_input.b.x)), vec2<bool>(true, true))));
    global1 = array<vec4<u32>, 18>();
    var var_1 = -2147483647i;
    let var_2 = ~vec3<u32>(firstTrailingBit(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 18u)], vec4<u32>(42990u, 121189u, u_input.a, 9718u))), ~select(u_input.d.x, u_input.d.x, true) >> (u_input.d.x % 32u), 113680u);
    var var_3 = _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(32982u, 0u)), select(vec2<u32>(44647u, 16389u), vec2<u32>(var_2.x, u_input.a), vec2<bool>(true, false)))), var_2.zy, _wgslsmith_add_vec2_u32(var_2.xy, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), min(vec2<u32>(u_input.a, 2525u), vec2<u32>(72344u, var_2.x))))) >> (vec2<u32>(_wgslsmith_div_u32(~1u & abs(var_2.x), ~_wgslsmith_mult_u32(var_2.x, var_2.x)), _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(var_2, var_2, vec3<u32>(u_input.d.x, var_2.x, 0u))), _wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 57579u, 0u)))) % vec2<u32>(32u));
    return func_2(vec2<u32>(~0u, _wgslsmith_clamp_u32(firstTrailingBit(var_2.x), var_2.x, max(1u, var_2.x))) >> (vec2<u32>(firstTrailingBit(~0u), 16075u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(func_1(var_0, 16619i, min(vec4<i32>(_wgslsmith_div_i32(-10890i, -2147483647i), 2147483647i, 1i, u_input.b.x << (var_3.x % 32u)), -firstLeadingBit(var_0.b)))), var_0.c, var_0.b.x == u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1794f, 1573f, 1688f, -1714f), vec4<f32>(1133f, 1000f, -867f, -373f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(422f, -228f, 1060f, 722f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-279f, -2817f, 1857f, -753f) * vec4<f32>(157f, 619f, -2412f, -1909f))))), ~vec4<i32>(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(-1i, u_input.c)), ~(-37481i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b.x, u_input.c, u_input.c, -1i), reverseBits(vec4<i32>(u_input.c, 18070i, -11930i, 59912i))), u_input.b.x), func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(703f, 1000f), vec2<f32>(-153f, 1184f), true)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-208f, 1734f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(563f, 1342f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-992f, 1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(251f, -1231f, -465f, 2017f), vec4<i32>(u_input.b.x, -2147483647i, -1i, u_input.b.x), Struct_1(false, -811f, u_input.b.x), Struct_1(false, 1900f, 1i)), u_input.b.x, vec4<i32>(1i, u_input.b.x, u_input.c, 1i))), 877f, 363f))), func_2(u_input.d.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f + _wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(-1000f, -497f, -1000f, -953f), vec4<i32>(19486i, u_input.c, u_input.c, u_input.b.x), Struct_1(false, -778f, 8496i), Struct_1(true, 997f, 2147483647i)), -15843i, vec4<i32>(2147483647i, 19730i, -2147483647i, u_input.c))))), Struct_1(false, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 39819i), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false))));
    let var_1 = u_input.b;
    let var_2 = ~var_0.d.c >= var_1.x;
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, abs(firstLeadingBit(u_input.b.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.d.x, u_input.d.x, u_input.a)) % 32u))), ~var_0.c.c, 61696u, ~_wgslsmith_mod_vec4_i32(vec4<i32>(19470i, abs(-1i), 28778i, var_0.c.c), reverseBits(vec4<i32>(-12920i, var_1.x, u_input.b.x, 1i))));
}

