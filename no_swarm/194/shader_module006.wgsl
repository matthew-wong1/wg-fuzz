struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 31>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 11> = array<i32, 11>(-53416i, 42313i, -1i, 60734i, -16602i, -5369i, i32(-2147483648), -13757i, i32(-2147483648), -51448i, 0i);

var<private> global4: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-533f, -2572f, 1388f), vec3<f32>(-436f, -598f, -516f), vec3<f32>(1327f, 1101f, 1966f), vec3<f32>(-413f, -145f, 965f), vec3<f32>(-456f, 1819f, 581f), vec3<f32>(-572f, 1471f, 700f), vec3<f32>(-966f, -749f, -789f), vec3<f32>(970f, -533f, -405f), vec3<f32>(-502f, 866f, 646f), vec3<f32>(-1000f, 1397f, -431f), vec3<f32>(-603f, -175f, -315f), vec3<f32>(1000f, -717f, -1237f), vec3<f32>(-2306f, -884f, 274f), vec3<f32>(-463f, 789f, 1468f), vec3<f32>(-129f, -1474f, 770f), vec3<f32>(1480f, -1274f, -1142f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(abs(abs(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -9395i, 0i), vec3<i32>(14873i, global2.b, -2147483647i)))) | (vec3<i32>(0i, _wgslsmith_div_i32(23475i, -2147483647i), -global2.b) | _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -601i, arg_0) | vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 11u)], global2.b), ~vec3<i32>(0i, -2147483647i, 16175i))), ~vec3<i32>(abs(_wgslsmith_mod_i32(arg_0, global2.b)), i32(-1i) * -global3[_wgslsmith_index_u32(u_input.a.x, 11u)], select(_wgslsmith_sub_i32(arg_0, global2.b), -2147483647i, 3425i < global2.b)));
    global2 = Struct_1(any(vec4<bool>(false, !(!arg_1.x), !(arg_1.x & global2.a), false)), ~arg_0, ~(vec2<u32>(min(1u, 54739u), global2.c.x) >> (_wgslsmith_div_vec2_u32(~global2.d.yz, ~global2.c) % vec2<u32>(32u))), vec3<u32>(0u, u_input.a.x, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(global2.d, ~vec3<u32>(u_input.a.x, 0u, u_input.a.x)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2028f - _wgslsmith_f_op_f32(trunc(-235f)))))));
    global1 = array<bool, 31>();
    global0 = 38383u;
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~_wgslsmith_mod_u32(u_input.a.x, 96381u)), ~min(u_input.a, vec2<u32>(4294967295u, 4294967295u)) & _wgslsmith_clamp_vec2_u32(global2.c, _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u), u_input.a), vec2<u32>(1u, 0u))), ~global2.d.x);
}

fn func_2() -> Struct_1 {
    global3 = array<i32, 11>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1412f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -394f) + 874f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(597f, -1036f)) + _wgslsmith_f_op_f32(f32(-1f) * -1161f))))));
    global4 = array<vec3<f32>, 16>();
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(func_3(global2.b, vec2<bool>(global2.a, global2.a)), global2.d.x, u_input.a.x), countOneBits(87129u >> (0u % 32u))) >> (1u % 32u), ~global2.c.x);
    global3 = array<i32, 11>();
    return Struct_1(global2.a, abs(global3[_wgslsmith_index_u32(~select(6385u, u_input.a.x >> (u_input.a.x % 32u), any(vec4<bool>(false, global1[_wgslsmith_index_u32(26292u, 31u)], true, true))), 11u)]), global2.c, max(~vec3<u32>(24424u, u_input.a.x, 1u), global2.d) << (~firstTrailingBit(global2.d) % vec3<u32>(32u)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = all(vec4<bool>(!global1[_wgslsmith_index_u32(min(global2.d.x, ~global2.c.x), 31u)], true, !arg_3.b, !any(arg_3.a.xw)));
    var var_1 = -vec2<i32>(global2.b, firstTrailingBit(-23644i));
    global0 = select(firstLeadingBit(~(~global2.c.x)), max(0u, (37357u & (4294967295u >> (u_input.a.x % 32u))) << ((1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 40641u, 1u, 1u), vec4<u32>(u_input.a.x, arg_1.c.x, arg_1.c.x, u_input.a.x)) % 32u)) % 32u)), !(!any(arg_3.a)));
    var var_2 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(17276u, 11u)], -29851i), -13231i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, global2.b, -8895i) << (arg_1.d % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1.x, global2.b), vec3<i32>(arg_1.b, global2.b, 39424i)))), vec3<i32>(-5786i, firstTrailingBit(~(-13692i)), global3[_wgslsmith_index_u32(~0u, 11u)]), vec3<i32>(~var_1.x, (global2.b & 43935i) | -2147483647i, min(-1336i & global3[_wgslsmith_index_u32(arg_1.d.x, 11u)], 1i)));
    var var_3 = 42935u;
    return Struct_3(_wgslsmith_div_vec4_i32(-(~vec4<i32>(var_2.x, global3[_wgslsmith_index_u32(32520u, 11u)], 5991i, global2.b) << (vec4<u32>(10068u, 1u, 0u, 41803u) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.b, -44465i, 0i), vec4<i32>(var_2.x, var_1.x, 2147483647i, global3[_wgslsmith_index_u32(1u, 11u)])), 9228i & arg_1.b, _wgslsmith_add_i32(2147483647i, var_2.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = countOneBits(reverseBits(2147483647i));
    var var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1047f, _wgslsmith_div_f32(735f, _wgslsmith_f_op_f32(sign(318f))), global1[_wgslsmith_index_u32(2406u, 31u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-123f)) * -2102f), _wgslsmith_f_op_f32(select(-486f, _wgslsmith_f_op_f32(-249f - -1856f), global1[_wgslsmith_index_u32(global2.c.x, 31u)]))))), func_2(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -754f) * -173f))), Struct_2(vec4<bool>(false, (u_input.a.x | 0u) < (0u >> (u_input.a.x % 32u)), global1[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 31u)], global2.a), func_2().a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(322f - 1188f), -1879f, _wgslsmith_f_op_f32(sign(-1965f)), _wgslsmith_f_op_f32(f32(-1f) * -1638f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1370f)), _wgslsmith_f_op_f32(f32(-1f) * -1578f), -1000f, _wgslsmith_div_f32(219f, 1037f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-236f, 1655f, -829f, 277f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(300f, 1000f, 996f, -1114f), vec4<f32>(1812f, -688f, 550f, -303f))), true)))));
    var_0 = -1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(630f, 505f))), _wgslsmith_div_f32(-189f, 513f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-734f)) - _wgslsmith_f_op_f32(floor(-372f))))));
    var_0 = -24757i;
    return Struct_1(!global2.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.a.yz, _wgslsmith_sub_vec2_i32(select(vec2<i32>(1i, global3[_wgslsmith_index_u32(0u, 11u)]), var_1.a.xz, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], true)), vec2<i32>(-9339i, 11480i))), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -60199i), var_1.a.xyw)), ~vec2<u32>(~_wgslsmith_dot_vec3_u32(global2.d, vec3<u32>(39428u, u_input.a.x, u_input.a.x)), reverseBits(4294967295u) ^ _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a);
    global2 = func_1();
    var var_1 = ~5429u;
    global4 = array<vec3<f32>, 16>();
    let var_2 = ~func_1().d.zz >> (min(global2.c << (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_0, var_0), global2.c) % vec2<u32>(32u)), firstTrailingBit(firstLeadingBit(firstTrailingBit(vec2<u32>(var_0.x, u_input.a.x))))) % vec2<u32>(32u));
    let var_3 = Struct_1(false, func_2().b, var_0, abs(_wgslsmith_add_vec3_u32(global2.d, vec3<u32>(4294967295u, _wgslsmith_clamp_u32(29597u, u_input.a.x, var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 24419u, 1u), vec3<u32>(0u, var_0.x, u_input.a.x))))));
    global0 = 39378u;
    let var_4 = !var_3.a;
    let var_5 = 7806u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f - 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1602f) * 791f))), ~vec4<u32>(4294967295u, 76501u, var_0.x, ~var_3.d.x));
}

