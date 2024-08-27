struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(1u, vec3<bool>(false, true, false), vec3<f32>(-1383f, 947f, 1000f), 1545f, vec4<i32>(0i, 2147483647i, -37598i, 17602i)), Struct_1(66226u, vec3<bool>(false, true, false), vec3<f32>(847f, -847f, -758f), -1344f, vec4<i32>(-33144i, 56468i, 1i, i32(-2147483648))), Struct_1(35050u, vec3<bool>(false, true, false), vec3<f32>(578f, 168f, -1384f), -1710f, vec4<i32>(4709i, -20483i, -1i, 1827i)), Struct_1(17031u, vec3<bool>(true, false, true), vec3<f32>(-400f, 1478f, 912f), -254f, vec4<i32>(0i, -17493i, -87642i, 4013i)), Struct_1(4294967295u, vec3<bool>(true, false, true), vec3<f32>(833f, -728f, 536f), 1000f, vec4<i32>(2147483647i, 1i, 2147483647i, 25551i)), Struct_1(75341u, vec3<bool>(false, false, false), vec3<f32>(205f, 1946f, -757f), 1433f, vec4<i32>(7986i, -4945i, -17246i, i32(-2147483648))), Struct_1(6949u, vec3<bool>(false, false, true), vec3<f32>(-1125f, -498f, -680f), -560f, vec4<i32>(4072i, -1i, -40073i, 2147483647i)), Struct_1(0u, vec3<bool>(false, false, false), vec3<f32>(1000f, 584f, -1249f), 1510f, vec4<i32>(0i, 18985i, -1i, 1i)), Struct_1(3172u, vec3<bool>(true, false, false), vec3<f32>(-1457f, 957f, 514f), 328f, vec4<i32>(33988i, -51644i, -25585i, -22635i)), Struct_1(19335u, vec3<bool>(true, true, true), vec3<f32>(341f, -399f, 409f), 1000f, vec4<i32>(-19532i, 14981i, 19280i, 65959i)), Struct_1(4294967295u, vec3<bool>(false, true, true), vec3<f32>(1521f, 758f, -376f), -919f, vec4<i32>(-1i, -18887i, -41980i, 50297i)), Struct_1(93131u, vec3<bool>(true, true, false), vec3<f32>(748f, -480f, -1440f), -302f, vec4<i32>(-34163i, 1i, 11281i, 9067i)), Struct_1(4294967295u, vec3<bool>(false, true, false), vec3<f32>(369f, 2385f, -545f), -1416f, vec4<i32>(-11601i, 34290i, 24353i, 57018i)), Struct_1(0u, vec3<bool>(false, false, false), vec3<f32>(-901f, -572f, 270f), -167f, vec4<i32>(0i, -6113i, -1i, -54867i)), Struct_1(4294967295u, vec3<bool>(true, true, true), vec3<f32>(1000f, -2230f, 276f), -1000f, vec4<i32>(19007i, 9069i, i32(-2147483648), -34609i)), Struct_1(33716u, vec3<bool>(false, true, false), vec3<f32>(1707f, 1463f, 749f), -267f, vec4<i32>(7375i, -16187i, -22127i, -19029i)), Struct_1(0u, vec3<bool>(true, true, true), vec3<f32>(-2511f, -529f, 1697f), -1000f, vec4<i32>(-1i, 2147483647i, i32(-2147483648), 0i)), Struct_1(1u, vec3<bool>(false, false, false), vec3<f32>(-1492f, -133f, 1053f), 1186f, vec4<i32>(i32(-2147483648), -19286i, 2147483647i, -8903i)), Struct_1(0u, vec3<bool>(true, true, true), vec3<f32>(758f, 1264f, 552f), -790f, vec4<i32>(0i, -9849i, -1i, 29132i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    var var_0 = -countOneBits(_wgslsmith_div_vec2_i32(arg_0.b.a.e.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.b.a.e.x, 2147483647i), _wgslsmith_add_vec2_i32(arg_0.c.a.e.xz, vec2<i32>(2368i, arg_0.c.a.e.x)), vec2<i32>(u_input.b.x, 1i))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -829f);
    let var_2 = Struct_2(Struct_1(arg_0.c.a.a, !vec3<bool>(arg_0.a && arg_0.c.a.b.x, arg_0.b.a.b.x, all(arg_0.b.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.xyy), _wgslsmith_f_op_vec3_f32(ceil(arg_0.c.a.c))))), _wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(u_input.a.x, -17058i, 31877i, -1i)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, var_0.x, 0i, 2147483647i), reverseBits(arg_0.c.a.e)))));
    return select(select(var_2.a.b, vec3<bool>(var_2.a.b.x, !var_2.a.b.x, max(arg_0.c.a.a, arg_0.c.a.a) < var_2.a.a), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_2.a.e.x, -22044i), _wgslsmith_mod_i32(u_input.a.x, var_0.x)) > ~(6691i | var_0.x)), !var_2.a.b, var_2.a.b.x);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> bool {
    let var_0 = Struct_3(arg_2, Struct_2(Struct_1(firstLeadingBit(1u), select(!vec3<bool>(true, arg_2, arg_2), func_3(Struct_3(arg_2, Struct_2(global1[_wgslsmith_index_u32(0u, 19u)]), Struct_2(Struct_1(1u, vec3<bool>(arg_2, arg_2, arg_2), global0.wxz, global0.x, vec4<i32>(u_input.c.x, u_input.a.x, 33210i, u_input.c.x))))), any(vec4<bool>(arg_2, true, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0.x, 662f)), global0.x, _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, 67i, u_input.a.x, u_input.b.x), vec4<i32>(-2147483647i, -1i, 2147483647i, u_input.a.x) >> (vec4<u32>(0u, 1u, 57239u, 1u) % vec4<u32>(32u))))), Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(42267u, 108086u, 18374u), vec3<u32>(32288u, 4294967295u, 1u)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0.x, arg_1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global0.x, -1740f) + arg_1)), _wgslsmith_f_op_f32(ceil(829f)), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(-1i, u_input.a.x), u_input.a.x, _wgslsmith_mod_i32(2147483647i, 3540i)))));
    let var_1 = Struct_2(var_0.b.a);
    let var_2 = ~min(var_0.b.a.a, ~select(1u, min(0u, 4294967295u), arg_2));
    let var_3 = var_1;
    let var_4 = var_3.a.c.xx;
    return any(!var_1.a.b.xy);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec2<bool>(true, any(vec4<bool>(!arg_2.a, any(!vec4<bool>(arg_2.b.a.b.x, arg_2.b.a.b.x, arg_2.a, arg_2.c.a.b.x)), func_2(_wgslsmith_f_op_f32(-arg_2.b.a.d), _wgslsmith_f_op_vec3_f32(global0.xww - vec3<f32>(-1440f, global0.x, 511f)), all(vec2<bool>(arg_2.c.a.b.x, arg_2.a))), true)));
    var var_1 = arg_2.b;
    let var_2 = arg_2.c;
    var var_3 = Struct_2(var_1.a);
    let var_4 = global0.xyx;
    return Struct_2(Struct_1(0u, !vec3<bool>(true, func_2(626f, vec3<f32>(var_1.a.c.x, arg_0, -244f), var_3.a.b.x), all(var_2.a.b)), var_3.a.c, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - 1000f)))), arg_2.c.a.e));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>) -> vec4<f32> {
    let var_0 = countOneBits(_wgslsmith_clamp_vec4_i32(arg_1.c.a.e, arg_1.c.a.e, vec4<i32>(-2147483647i, arg_1.c.a.e.x, reverseBits(-22383i), 883i)));
    var var_1 = Struct_2(Struct_1(1u << (~(~arg_0.a.a) % 32u), func_3(Struct_3(true, Struct_2(arg_1.b.a), func_1(arg_0.a.d, vec3<i32>(78012i, -2147483647i, 2076i), arg_1))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global0.zxz, global0.wzy, arg_2.x)))), global0.x, ~firstLeadingBit(_wgslsmith_clamp_vec4_i32(arg_1.c.a.e, vec4<i32>(arg_1.c.a.e.x, var_0.x, 22973i, 0i), vec4<i32>(-34636i, -2147483647i, arg_0.a.e.x, -1i)))));
    let var_2 = arg_0.a.e & _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(-2147483647i, u_input.a.x, var_1.a.e.x, -2147483647i), arg_0.a.e, arg_2.x), ~(countOneBits(var_0) ^ -arg_0.a.e));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c.a.c.x, -552f, all(!arg_0.a.b.xy)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.d)) - 1000f), arg_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1000f)) - func_1(-841f, arg_1.c.a.e.yyy, Struct_3(false, Struct_2(arg_0.a), arg_0)).a.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-248f * arg_0.a.d))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-888f * arg_1.c.a.c.x)))));
    var var_3 = arg_0.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(217f)), _wgslsmith_f_op_f32(-arg_1.b.a.d), -570f, -414f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.c.x, -1280f, -1045f, -525f))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.x, arg_0.a.d, -2630f, global0.x), vec4<f32>(var_3.c.x, 339f, -118f, -408f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -685f) - _wgslsmith_div_f32(1289f, 756f)), var_1.a.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + 1279f), -2070f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, _wgslsmith_f_op_f32(step(arg_1.b.a.c.x, global0.x)), _wgslsmith_f_op_f32(arg_1.c.a.c.x - 1577f), _wgslsmith_f_op_f32(f32(-1f) * -337f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1378f, var_3.c.x, arg_0.a.c.x, -236f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1487f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d - global0.x)), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 544f, -931f, global0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(0u, vec3<bool>(true, false, false), global0.wyz, 1000f, vec4<i32>(-19016i, 2147483647i, u_input.b.x, 32414i))), Struct_3(true, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 19u)]), func_1(global0.x, u_input.c, Struct_3(false, Struct_2(global1[_wgslsmith_index_u32(1u, 19u)]), Struct_2(Struct_1(27919u, vec3<bool>(true, true, true), vec3<f32>(global0.x, -206f, global0.x), global0.x, vec4<i32>(u_input.b.x, -8515i, u_input.c.x, -2147483647i)))))), select(vec2<bool>(true, true), vec2<bool>(true, true), true))) * vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)), 241f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1334f)))));
    let var_0 = vec2<bool>(true, !all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(425f, 107f, global0.x, global0.x), vec4<f32>(-1000f, global0.x, 197f, global0.x)) * vec4<f32>(global0.x, global0.x, 560f, -2496f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(665f, 139f, 1167f, global0.x) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-891f, -970f, global0.x, global0.x)))))))));
    let var_1 = 0i;
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-878f, global0.x, u_input.b.x <= 0i)), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(1u, vec3<bool>(false, var_0.x, var_0.x), vec3<f32>(649f, global0.x, global0.x), -1000f, vec4<i32>(u_input.b.x, var_1, u_input.c.x, u_input.a.x))), Struct_3(true, Struct_2(Struct_1(4294967295u, vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<f32>(-1776f, -397f, global0.x), -510f, vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, -8162i))), Struct_2(Struct_1(3221u, vec3<bool>(var_0.x, var_0.x, false), global0.xzy, global0.x, vec4<i32>(1i, -1506i, u_input.c.x, -1i)))), vec2<bool>(var_0.x, false))).x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-668f + global0.x), var_0.x)))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.x, 1000f)), -198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(817f, global0.x))))) * vec4<f32>(568f, global0.x, -450f, -1000f));
    global1 = array<Struct_1, 19>();
    let var_2 = reverseBits(reverseBits(23845i)) | (_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-61943i, var_1, var_1), vec3<i32>(u_input.c.x, -2147483647i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 29309i, var_1), -vec3<i32>(var_1, u_input.c.x, 1i))) ^ func_1(func_1(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(15988u, vec3<bool>(false, var_0.x, true), vec3<f32>(156f, global0.x, -915f), global0.x, vec4<i32>(76862i, -57758i, u_input.b.x, u_input.b.x))), Struct_3(var_0.x, Struct_2(global1[_wgslsmith_index_u32(62622u, 19u)]), Struct_2(Struct_1(4294967295u, vec3<bool>(false, var_0.x, true), vec3<f32>(global0.x, -332f, 2355f), -1626f, vec4<i32>(var_1, -1i, u_input.a.x, u_input.a.x)))), vec2<bool>(false, var_0.x))).x, u_input.c, Struct_3(var_0.x, Struct_2(global1[_wgslsmith_index_u32(0u, 19u)]), Struct_2(global1[_wgslsmith_index_u32(1u, 19u)]))).a.d, vec3<i32>(-2147483647i, -u_input.a.x, -1i), Struct_3(!var_0.x, Struct_2(Struct_1(1u, vec3<bool>(var_0.x, false, false), global0.yyx, global0.x, vec4<i32>(u_input.c.x, -1i, 2147483647i, u_input.b.x))), func_1(global0.x, u_input.c, Struct_3(true, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 19u)]), Struct_2(Struct_1(1u, vec3<bool>(var_0.x, false, false), vec3<f32>(global0.x, 1261f, global0.x), -978f, vec4<i32>(u_input.a.x, -7038i, var_1, 1i))))))).a.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~select(vec4<u32>(0u, 29359u, 66852u, 1u), vec4<u32>(0u, 0u, 71143u, 1u), var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-779f + global0.x), -1837f, 960f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) * _wgslsmith_f_op_f32(global0.x + 1019f)))), ~(-var_2 | (_wgslsmith_clamp_i32(1i, 30106i, u_input.c.x) << (min(31728u, 18843u) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1252f)))), 489f, -986f));
}

