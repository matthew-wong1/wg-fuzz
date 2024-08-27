struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(max(~select(~vec4<u32>(1u, 13978u, 61534u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 32014u, 8145u), vec4<u32>(19660u, 63830u, 4294967295u, 84857u)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false)), ~vec4<u32>(1u, 1u, 1u, 1u) >> (~firstTrailingBit(vec4<u32>(4294967295u, 24916u, 10930u, 0u)) % vec4<u32>(32u))), !vec3<bool>(all(vec4<bool>(true, true, false, false)) & false, true, true));
    let var_1 = vec3<i32>(abs(u_input.a.x) & u_input.a.x, ~u_input.c, u_input.b.x);
    let var_2 = var_1.zy;
    let var_3 = 124f;
    var var_4 = vec3<f32>(_wgslsmith_div_f32(var_3, 788f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1194f)))), var_3);
    return var_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_5(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-6449i, 19724i, u_input.a.x, u_input.c), vec4<i32>(u_input.b.x, u_input.b.x, 6513i, u_input.c)), u_input.c, _wgslsmith_dot_vec3_i32(u_input.b, countOneBits(vec3<i32>(u_input.a.x, -1i, 25465i))), -u_input.c), !func_2().b.x);
    var_0 = Struct_5(_wgslsmith_div_vec4_i32(abs(vec4<i32>(i32(-1i) * -26771i, var_0.a.x, 1i, 22339i)), vec4<i32>(-var_0.a.x, -u_input.a.x, 2147483647i, -1i)), arg_3.b.x & false);
    var_0 = Struct_5(-(~vec4<i32>(-1i, -70613i, var_0.a.x, 0i) ^ min(vec4<i32>(u_input.a.x, 11547i, var_0.a.x, var_0.a.x) & vec4<i32>(49802i, -2147483647i, 1i, var_0.a.x), reverseBits(var_0.a))), !var_0.b);
    var_0 = Struct_5(-var_0.a, !all(arg_3.b.zx));
    var_0 = Struct_5(var_0.a, false);
    return reverseBits(_wgslsmith_mult_u32(~(~arg_2), arg_3.a.x) << (~26386u % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_5) -> Struct_1 {
    var var_0 = vec4<i32>(1i, countOneBits(arg_3.a.x) >> (abs(~(~6590u)) % 32u), (~(~1i) >> (min(1u, max(arg_0.a.x, 20019u)) % 32u)) << (_wgslsmith_mult_u32(~0u << (~arg_0.a.x % 32u), ~(arg_0.a.x << (arg_0.a.x % 32u))) % 32u), -(~2147483647i));
    var var_1 = Struct_4(max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, _wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x), func_2().a.x, 21321u), max(arg_0.a, arg_0.a)), abs(~arg_0.a)), !select(arg_0.b.yx, select(func_2().b.yz, arg_1.yx, !arg_1.zz), select(select(arg_0.b.zx, arg_0.b.zx, vec2<bool>(arg_1.x, arg_1.x)), arg_1.yx, false)), arg_3.a.x);
    var var_2 = ~firstLeadingBit(arg_0.a.x & 5025u);
    var_2 = func_2().a.x;
    var_2 = 53373u;
    return arg_0;
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(func_2(), select(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false))), vec3<bool>(func_3(false, Struct_1(vec4<u32>(4294967295u, 0u, 49266u, 11959u), vec3<bool>(false, false, false)), 56210u, Struct_1(vec4<u32>(41601u, 27748u, 0u, 1u), vec3<bool>(true, true, true))) == 56002u, all(vec2<bool>(false, true)), true), u_input.a.x <= (u_input.b.x >> (4294967295u % 32u))), 8049i, Struct_5(select(firstTrailingBit(vec4<i32>(0i, -2147483647i, -2147483647i, u_input.a.x)), min(countOneBits(vec4<i32>(17264i, u_input.b.x, 0i, u_input.c)), ~vec4<i32>(u_input.b.x, -13129i, 44847i, 20784i)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), min(_wgslsmith_div_i32(0i, u_input.a.x), u_input.c) == ~(-2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(292f, -220f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1617f + -1000f), -967f))) * -1641f)));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -369f);
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(max(-112f, _wgslsmith_f_op_f32(f32(-1f) * -1445f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1462f))))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-947f))))), func_4(func_2(), vec3<bool>(any(vec2<bool>(true, false)), true, false), ~(-_wgslsmith_div_i32(u_input.a.x, u_input.c)), Struct_5(vec4<i32>(u_input.c | -1973i, -1i << (1u % 32u), reverseBits(1i), firstTrailingBit(u_input.c)), true)), func_4(func_2(), select(vec3<bool>(any(vec4<bool>(var_0.b.x, true, true, true)), true, false), var_0.b, vec3<bool>(false, u_input.b.x < -1i, all(var_0.b))), u_input.b.x ^ ~(~(-13467i)), Struct_5(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.c)), vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, 2147483647i) & vec4<i32>(u_input.b.x, 0i, u_input.c, u_input.b.x)), var_0.a.x < ~var_0.a.x)), vec3<f32>(1630f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f - 1505f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-178f))))));
    return select(vec2<bool>(var_2.d.b.x, !(false && var_0.b.x)), var_2.c.b.xx, vec2<bool>(true, true));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_u32(arg_2.c.a.wy, _wgslsmith_mult_vec2_u32(~vec2<u32>(86324u, _wgslsmith_clamp_u32(0u, 73399u, arg_1.a.x)), arg_2.d.a.xx));
    let var_1 = arg_1;
    var var_2 = abs(arg_0.a);
    var var_3 = select(vec4<bool>(!func_1().x, arg_2.c.b.x, arg_0.b, true), !select(select(select(vec4<bool>(var_1.b.x, var_1.b.x, arg_2.c.b.x, true), vec4<bool>(var_1.b.x, false, true, true), vec4<bool>(true, true, arg_0.b, true)), vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_0.b, true, arg_2.d.b.x)), vec4<bool>(var_1.b.x, func_2().b.x, arg_2.c.b.x, arg_2.d.b.x), !vec4<bool>(arg_1.b.x, arg_2.d.b.x, true, var_1.b.x)), !vec4<bool>(firstLeadingBit(4294967295u) > _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 60401u, var_1.a.x), vec3<u32>(arg_1.a.x, 0u, var_1.a.x)), true, !arg_0.b | false, var_1.b.x));
    var var_4 = abs(max(~reverseBits(~27510u), _wgslsmith_add_u32(27048u, countOneBits(~54949u))));
    return Struct_2(_wgslsmith_f_op_f32(-1922f - -522f), -457f, func_4(Struct_1(func_2().a, !select(vec3<bool>(false, arg_2.d.b.x, true), var_3.zyz, arg_2.d.b)), func_2().b, arg_1.c, arg_0), func_2(), _wgslsmith_f_op_vec3_f32(exp2(arg_2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_5(~(-(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 30146i))), !(true && any(vec3<bool>(false, true, true)))), Struct_4(vec4<u32>(1u, 1u, 1u, 1u) & firstTrailingBit(vec4<u32>(22219u, 1u, 62212u, 14295u)), select(vec2<bool>(true, true), func_1(), true), (10726i << (1u % 32u)) << (_wgslsmith_mult_u32(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 83321u), vec3<u32>(4294967295u, 4294967295u, 0u))) % 32u)), Struct_2(_wgslsmith_div_f32(1219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(788f)) * _wgslsmith_f_op_f32(-1000f + -495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)), Struct_1(func_4(Struct_1(vec4<u32>(1u, 37671u, 113116u, 0u), vec3<bool>(false, false, false)), vec3<bool>(false, true, false), ~2147483647i, Struct_5(vec4<i32>(-68075i, u_input.a.x, u_input.b.x, -19300i), true)).a, vec3<bool>(true, true, true)), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 73348u, 88091u), vec4<u32>(1u, 1u, 1u, 1u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(522f, 657f, 1960f) + vec3<f32>(-1245f, 853f, -1282f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1070f, -1694f, 820f), vec3<f32>(665f, 1107f, -244f)))))), min(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(36201i, -10905i) << (~4294967295u % 32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-69065i ^ u_input.b.x, _wgslsmith_add_i32(u_input.a.x, u_input.b.x)), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, 0i), abs(-2147483647i)))));
    let var_1 = func_4(Struct_1(min(var_0.c.a, _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 2471u, var_0.c.a.x, var_0.d.a.x), var_0.d.a)), !var_0.c.b), vec3<bool>(func_5(Struct_5(-vec4<i32>(32950i, 2147483647i, 0i, u_input.b.x), any(var_0.d.b)), Struct_4(vec4<u32>(38077u, var_0.d.a.x, var_0.d.a.x, var_0.d.a.x), !var_0.c.b.xz, _wgslsmith_add_i32(-13283i, -12198i)), func_5(Struct_5(vec4<i32>(u_input.c, u_input.b.x, 0i, 2147483647i), false), Struct_4(vec4<u32>(var_0.d.a.x, var_0.c.a.x, var_0.c.a.x, 21321u), vec2<bool>(false, var_0.c.b.x), 18774i), Struct_2(var_0.e.x, -130f, var_0.d, Struct_1(var_0.d.a, var_0.d.b), vec3<f32>(-1065f, var_0.b, 1439f)), u_input.a), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-29864i, -21456i), u_input.b.xx, vec2<i32>(u_input.b.x, 2147483647i)))).d.b.x, false, true), u_input.b.x & u_input.a.x, Struct_5(-_wgslsmith_div_vec4_i32(min(vec4<i32>(-1i, u_input.b.x, u_input.a.x, u_input.b.x), vec4<i32>(1i, u_input.a.x, 0i, u_input.b.x)), -vec4<i32>(0i, 0i, u_input.b.x, 38978i)), var_0.d.b.x)).a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-741f, var_0.a, var_0.b, 2532f) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, var_0.e.x, 590f, var_0.a), vec4<f32>(var_0.b, 2379f, var_0.b, var_0.b))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(576f, _wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(375f + var_0.a), _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(sign(1000f))))));
    var var_3 = ~var_0.c.a.x;
    let var_4 = -17287i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c, ~(-21630i), 1i), vec3<i32>(_wgslsmith_mod_i32(u_input.c, var_4), -u_input.c, ~23330i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_4, var_4, 80029i, -7585i)) << (~vec4<u32>(var_1, 1u, 65811u, var_1) % vec4<u32>(32u)), firstLeadingBit(-vec4<i32>(u_input.a.x, -2147483647i, 40469i, u_input.b.x)))), -min(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_4), vec2<i32>(var_4, -2147483647i)), u_input.a), var_0.d.a.x);
}

