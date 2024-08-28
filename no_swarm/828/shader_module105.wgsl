struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<bool, 12>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<f32>(-424f, -847f), vec2<i32>(1i, -11157i)), Struct_1(vec2<f32>(948f, 1000f), vec2<i32>(841i, -1i)), Struct_1(vec2<f32>(1000f, -2025f), vec2<i32>(-1i, 0i)), Struct_1(vec2<f32>(1600f, -107f), vec2<i32>(17341i, -1i)), Struct_1(vec2<f32>(-150f, -579f), vec2<i32>(2147483647i, 34455i)), Struct_1(vec2<f32>(1715f, 1000f), vec2<i32>(46358i, -1i)), Struct_1(vec2<f32>(732f, 155f), vec2<i32>(14638i, 12862i)), Struct_1(vec2<f32>(-2603f, 103f), vec2<i32>(1i, -37898i)), Struct_1(vec2<f32>(1000f, 659f), vec2<i32>(28501i, 2147483647i)), Struct_1(vec2<f32>(890f, -1289f), vec2<i32>(0i, 27782i)), Struct_1(vec2<f32>(2184f, -1000f), vec2<i32>(i32(-2147483648), 35567i)), Struct_1(vec2<f32>(684f, 1072f), vec2<i32>(6601i, 74453i)), Struct_1(vec2<f32>(1148f, 265f), vec2<i32>(20989i, 50695i)), Struct_1(vec2<f32>(-480f, 295f), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<f32>(-106f, -965f), vec2<i32>(-31786i, i32(-2147483648))), Struct_1(vec2<f32>(384f, 516f), vec2<i32>(i32(-2147483648), 1i)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>) -> u32 {
    global2 = array<Struct_1, 16>();
    global1 = array<bool, 12>();
    var var_0 = Struct_2(_wgslsmith_div_u32(max(54824u, _wgslsmith_mod_u32(9458u, 4294967295u)), firstTrailingBit(84980u)) << (_wgslsmith_mult_u32(arg_0.d.x, _wgslsmith_add_u32(0u, ~0u)) % 32u), 2223f, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c.a * _wgslsmith_f_op_vec2_f32(arg_0.c.a + vec2<f32>(1071f, arg_0.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 2177f) - vec2<f32>(arg_0.b, 1000f)))), vec2<i32>(_wgslsmith_add_i32(arg_2.x, select(0i, arg_2.x, false)), -1i)), ~vec2<u32>(~0u, 33991u));
    global2 = array<Struct_1, 16>();
    var var_1 = Struct_1(var_0.c.a, vec2<i32>(u_input.c.x, arg_0.c.b.x));
    return max(_wgslsmith_sub_u32(arg_1.x, ~(~(~0u))), min(~_wgslsmith_mult_u32(0u, arg_0.d.x) >> (_wgslsmith_mod_u32(firstTrailingBit(0u), _wgslsmith_mod_u32(24719u, var_0.d.x)) % 32u), arg_0.d.x >> (~(~4294967295u) % 32u)));
}

fn func_4(arg_0: u32) -> vec4<i32> {
    var var_0 = select(reverseBits(select(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -4797i, 24437i, u_input.c.x), vec4<i32>(u_input.c.x, -10784i, u_input.c.x, u_input.c.x)), -max(vec4<i32>(73378i, 0i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a.x, u_input.b, u_input.c.x, u_input.a.x)), true)), ~vec4<i32>(-_wgslsmith_mod_i32(4003i, -7123i), -61202i, ~_wgslsmith_div_i32(u_input.b, 0i), ~select(-4970i, u_input.c.x, false)), any(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(15720u, 12u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 11u)], global0[_wgslsmith_index_u32(arg_0, 11u)], global1[_wgslsmith_index_u32(arg_0, 12u)]), select(vec3<bool>(false, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0, 11u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(42223u, 12u)], global0[_wgslsmith_index_u32(arg_0, 11u)]))), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0, 12u)], global0[_wgslsmith_index_u32(29494u, 11u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_0, 12u)]), false), select(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0, 12u)], global0[_wgslsmith_index_u32(46460u, 11u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 12u)], true, false), false)), !(!vec3<bool>(false, global1[_wgslsmith_index_u32(5343u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)])))));
    global0 = array<bool, 11>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(985f + 375f), -138f))) * -646f);
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-977f - -1412f) - -1187f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1041f - -1102f)), -420f, all(vec3<bool>(true, global1[_wgslsmith_index_u32(14706u, 12u)], true)))))));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-891f, 226f, global1[_wgslsmith_index_u32(1u, 12u)])), -138f))))));
    return -vec4<i32>(-(~reverseBits(-3921i)), _wgslsmith_dot_vec3_i32(countOneBits(~u_input.c), abs(-vec3<i32>(-15486i, u_input.b, 2147483647i))), -50796i, var_0.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: f32) -> vec4<i32> {
    let var_0 = Struct_1(arg_2.ww, -(~abs(u_input.c.yz)));
    var var_1 = Struct_4(select(-(~(~vec4<i32>(0i, -1i, -1i, -2147483647i))), func_4(func_3(Struct_2(41576u, 496f, var_0, vec2<u32>(21174u, 6213u)), vec4<u32>(24126u, 1u, 20489u, 0u), u_input.c.xy) << (_wgslsmith_sub_u32(3429u, 0u) % 32u)), true), Struct_2(reverseBits(~(~1u)), arg_2.x, global2[_wgslsmith_index_u32(func_3(Struct_2(~42416u, _wgslsmith_f_op_f32(abs(var_0.a.x)), Struct_1(arg_2.yy, vec2<i32>(2147483647i, -1i)), ~vec2<u32>(44045u, 66630u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 27293u, 0u, 58054u), vec4<u32>(42782u, 28988u, 30329u, 1u)), 1u, ~4294967295u, _wgslsmith_mod_u32(30852u, 134390u)), vec2<i32>(~2147483647i, var_0.b.x)), 16u)], ~vec2<u32>(1u, 1u)), var_0);
    let var_2 = Struct_5(firstTrailingBit(var_1.a), arg_0.www, 1f);
    let var_3 = var_0;
    global1 = array<bool, 12>();
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<u32> {
    let var_0 = Struct_4(abs(_wgslsmith_add_vec4_i32(func_2(vec4<bool>(global0[_wgslsmith_index_u32(25705u, 11u)], true, global0[_wgslsmith_index_u32(arg_0, 11u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0, 11u)]), vec4<f32>(arg_1, arg_1, arg_1, arg_1), 1884f), -vec4<i32>(-2147483647i, -1i, u_input.c.x, u_input.a.x)) >> (max(max(vec4<u32>(arg_0, 8173u, 65386u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, arg_0, 1u)), vec4<u32>(arg_0, arg_0, arg_0, 85197u)) % vec4<u32>(32u))), Struct_2(~(~44263u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1418f))))), global2[_wgslsmith_index_u32(1u, 16u)], vec2<u32>(max(8507u, 1u), select(~46670u, 0u, false))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 - 324f), _wgslsmith_f_op_f32(arg_1 - arg_1))), vec2<i32>(-1i) * -(u_input.a >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))));
    var var_1 = var_0.b.d.x;
    global1 = array<bool, 12>();
    var var_2 = var_0;
    var_1 = 53912u;
    return ~vec2<u32>(_wgslsmith_div_u32(var_2.b.a, ~(~var_2.b.a)), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 12>();
    global1 = array<bool, 12>();
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(5462u, max(17729u << (0u % 32u), max(26692u, 1u))), func_1(~1u, -113f)), 12u)];
    let var_1 = _wgslsmith_f_op_f32(max(-338f, 921f));
    global0 = array<bool, 11>();
    global2 = array<Struct_1, 16>();
    let var_2 = Struct_2(func_1(firstTrailingBit(~(~0u)), 379f).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1134f, 1000f)))), global2[_wgslsmith_index_u32(1u, 16u)], vec2<u32>(1u, 8335u));
    var var_3 = select(select(!vec2<bool>(false && global0[_wgslsmith_index_u32(var_2.d.x, 11u)], global0[_wgslsmith_index_u32(~0u, 11u)]), vec2<bool>(any(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(91291u, 11u)], false)), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a, 45118u), 12u)]), false), vec2<bool>(!(!all(vec3<bool>(true, global0[_wgslsmith_index_u32(68615u, 11u)], true))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(18943u, ~1u, true), var_2.d.x), 12u)]), vec2<bool>(global1[_wgslsmith_index_u32(4001u, 12u)], false));
    let var_4 = firstTrailingBit(~var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_dot_vec2_u32(abs(~var_2.d), var_2.d)).x);
}

