struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: u32 = 55090u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.d, arg_0.d.d))), ~(-arg_0.a.e), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.d, 305f, arg_0.a.d, 1000f), vec4<f32>(arg_0.a.d, arg_0.a.d, arg_0.d.d, arg_0.a.d))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-847f, arg_0.a.d, arg_0.a.d, 1724f), vec4<f32>(arg_0.a.d, arg_0.a.d, arg_0.d.d, 1548f), true)))))));
    var var_1 = select(vec2<i32>(~(-(var_0.d >> (0u % 32u))), _wgslsmith_sub_i32(select(var_0.d, -2147483647i >> (1u % 32u), false | var_0.a.b), (i32(-1i) * -2147483647i) >> (_wgslsmith_mod_u32(0u, arg_0.d.c.x) % 32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -5293i, u_input.a), vec2<i32>(arg_0.d.e << ((var_0.a.c.x ^ 6179u) % 32u), -_wgslsmith_mod_i32(var_0.d, arg_0.a.e))), vec2<bool>(any(select(select(arg_0.c, arg_0.c, vec3<bool>(var_0.a.b, var_0.a.b, true)), select(vec3<bool>(arg_0.a.b, true, arg_0.c.x), vec3<bool>(true, false, var_0.a.b), true), false)), false));
    let var_2 = Struct_3(Struct_1(~arg_0.d.c.x, any(vec3<bool>(false, true, true)), ~(var_0.a.c & firstLeadingBit(arg_0.d.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1342f + arg_0.a.d))))), -(~1i)), !((i32(-1i) * -u_input.a) < 0i), !select(select(select(vec3<bool>(true, true, var_0.a.b), arg_0.c, arg_0.c.x), vec3<bool>(false, false, arg_0.d.b), !var_0.a.b), !arg_0.c, any(select(arg_0.c, vec3<bool>(false, false, true), vec3<bool>(true, arg_0.a.b, true)))), arg_0.a);
    global0 = array<Struct_3, 21>();
    let var_3 = ~var_0.a.a & 14728u;
    return vec4<u32>(var_2.d.a, _wgslsmith_dot_vec3_u32(vec3<u32>(39522u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a, 36626u, 19787u, var_3), vec4<u32>(var_2.a.a, 54050u, var_2.a.c.x, 0u)), ~_wgslsmith_mult_u32(var_2.d.a, var_3)), ~select(vec3<u32>(1u, 9946u, 1u) | vec3<u32>(49959u, var_2.d.a, var_2.d.a), ~vec3<u32>(1u, 4294967295u, 4294967295u), vec3<bool>(arg_0.b, false, var_2.d.b))), ~abs(var_0.a.a) | 4294967295u, 1u);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    global0 = array<Struct_3, 21>();
    let var_0 = vec3<bool>(arg_0.b, true, false);
    var var_1 = _wgslsmith_mod_vec4_u32(func_3(Struct_3(arg_0, true, var_0, arg_0)) & _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.c.x, 4294967295u, arg_0.a, arg_0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c.x, 4294967295u, arg_0.a, 19660u), vec4<u32>(arg_0.c.x, 35566u, arg_0.a, arg_0.a), vec4<u32>(arg_0.c.x, arg_0.a, arg_0.a, arg_0.c.x))), min(~firstLeadingBit(vec4<u32>(39169u, 0u, arg_0.c.x, arg_0.a)), countOneBits(vec4<u32>(71582u, arg_0.c.x, 1u, arg_0.a) & vec4<u32>(4294967295u, arg_0.c.x, 1u, 20112u)))) | max(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 22407u, arg_0.c.x, 1525u), vec4<u32>(49925u, arg_0.c.x, arg_0.c.x, arg_0.c.x)), reverseBits(vec4<u32>(4294967295u, 4294967295u, arg_0.c.x, 0u))), vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(arg_0.c.x, 0u)), _wgslsmith_clamp_u32(24044u | arg_0.c.x, 1u, 1u), ~(~arg_0.a), _wgslsmith_dot_vec2_u32(~arg_0.c, abs(arg_0.c))));
    let var_2 = ~54292u;
    var_1 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(32785u, var_1.x, 49082u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(76247u, 67814u, 0u, var_1.x), vec4<u32>(1u, arg_0.a, var_2, arg_0.a), vec4<u32>(0u, 44798u, 6637u, var_1.x))), reverseBits(vec4<u32>(var_1.x, var_1.x, 17663u, 0u))), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(62072u, 0u, 0u, 0u), vec4<u32>(var_2, 1u, arg_0.c.x, var_1.x)), ~(~vec4<u32>(arg_0.a, var_1.x, var_1.x, 42310u))));
    return 1u;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = ~(~max(51510u, _wgslsmith_div_u32(arg_0, 4294967295u))) >> ((arg_0 << (countOneBits(func_2(Struct_1(arg_0, false, vec2<u32>(arg_0, 1u), arg_2.x, arg_1.x), 1i, _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(u_input.a, -2147483647i, 50220i)), _wgslsmith_f_op_vec2_f32(-arg_2))) % 32u)) % 32u);
    global1 = arg_0 | min(_wgslsmith_mult_u32(arg_0, 4294967295u), 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(floor(1442f)));
    let var_2 = Struct_2(Struct_1(arg_0, false, ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(arg_0, 3463u)), vec2<u32>(arg_0, 59711u) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-746f * -815f)), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2 * vec2<f32>(580f, -696f)), arg_2, vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(1000f, arg_2.x)) * arg_2))), arg_1.x, abs(1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)), var_1, _wgslsmith_f_op_f32(var_1 * -2118f), _wgslsmith_f_op_f32(arg_2.x + arg_2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1005f, -210f, arg_2.x, 1088f))), vec4<f32>(-1268f, _wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(f32(-1f) * -1753f), var_1)));
    var var_3 = var_2.a;
    return Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1248f, -491f) * _wgslsmith_f_op_vec2_f32(-var_2.b)), arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1487f, _wgslsmith_f_op_f32(-1434f + var_1))), any(vec3<bool>(all(vec3<bool>(false, false, false)), true, select(false, var_2.a.b, true))))), select(1i, var_2.a.e, var_2.a.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d, 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1, vec3<i32>(var_3.e, -1i, -2147483647i)), arg_1)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.e, _wgslsmith_sub_i32(5119i, -1i), _wgslsmith_div_i32(arg_1.x, var_2.c)), ~(-vec3<i32>(2147483647i, arg_1.x, -21657i)))), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_add_u32(firstLeadingBit((4265u >> (1u % 32u)) >> (1u % 32u)), firstTrailingBit(~29404u >> (0u % 32u))), vec3<i32>(_wgslsmith_mod_i32(2147483647i, min(-17985i, u_input.a)), ~(~u_input.a), ~1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -570f), _wgslsmith_f_op_f32(ceil(275f)))))));
    global0 = array<Struct_3, 21>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1050f, var_0.e.x, var_0.a.d)) + var_0.e.xxy) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(641f, 1869f, 148f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 1386f) + var_0.e.xxx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x)))) - var_0.e.wyz);
    let var_2 = Struct_3(Struct_1(func_1(53632u, vec3<i32>(u_input.a, u_input.a, abs(-14794i)), var_1.zy).a.c.x, all(vec4<bool>(true, var_0.a.b, all(vec3<bool>(true, var_0.a.b, var_0.a.b)), true)), vec2<u32>(279u, var_0.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e.x))) * 942f), _wgslsmith_clamp_i32(var_0.d, -firstLeadingBit(693i), u_input.a)), false, select(vec3<bool>(true, var_0.a.b, all(select(vec4<bool>(true, var_0.a.b, false, var_0.a.b), vec4<bool>(var_0.a.b, false, var_0.a.b, var_0.a.b), vec4<bool>(false, false, true, true)))), select(!(!vec3<bool>(var_0.a.b, false, false)), !select(vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), vec3<bool>(var_0.a.b, var_0.a.b, false), vec3<bool>(true, false, var_0.a.b)), vec3<bool>(var_0.a.b || false, true, true)), vec3<bool>(var_0.a.b, any(select(vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), vec3<bool>(var_0.a.b, true, false), vec3<bool>(false, false, true))), select(true, any(vec3<bool>(true, var_0.a.b, var_0.a.b)), true))), Struct_1(var_0.a.c.x, true, var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-360f, var_0.a.d)))), 3079i << (_wgslsmith_sub_u32(63038u, ~var_0.a.a) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-1415f + 352f), 879f, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(var_1.x + var_0.e.x)), var_2.a.d), min(var_2.d.e, firstLeadingBit(-2147483647i)), abs(-(~vec4<i32>(-1i, 1i, -312i, -39639i)) >> (~(vec4<u32>(var_2.a.c.x, 2574u, 4294967295u, 1u) << (vec4<u32>(var_0.a.a, 21097u, var_0.a.a, var_2.a.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

