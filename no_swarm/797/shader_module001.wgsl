struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(select(~global0.yx, select(vec2<u32>(33697u, global0.x), vec2<u32>(9081u, global0.x), false), false), global0.xx, reverseBits(u_input.a.wx)), select(vec2<u32>(firstTrailingBit(1u), u_input.a.x), ~(~vec2<u32>(u_input.a.x, arg_0)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true)))) ^ vec2<u32>(abs(select(global0.x, max(u_input.a.x, 97019u), true)), abs(~31039u));
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), ~vec4<u32>(1u, 0u, u_input.a.x, 4294967295u)), countOneBits(u_input.a)), min(var_0.x & u_input.a.x, global0.x & 76088u), _wgslsmith_sub_u32(~var_0.x, var_0.x)), ~select(abs(vec3<u32>(1u, 1u, 43444u)), ~(~vec3<u32>(var_0.x, arg_0, 31914u)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)));
    global0 = u_input.a.xyy;
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(arg_0, arg_0 | 0u, 4294967295u)), _wgslsmith_mult_u32(~firstTrailingBit(50812u), ~firstTrailingBit(u_input.a.x)), select(global0.x, ~1u, true)), select(u_input.a.wxx, ~(~vec3<u32>(arg_0, 89505u, 4294967295u)), vec3<bool>(true, true, true)));
    global0 = ~u_input.a.zyw;
    return select(vec3<bool>(true, (~arg_1.x >> (~0u % 32u)) > (i32(-1i) * -12258i), true), select(!vec3<bool>(false, arg_1.x >= 19821i, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), false);
}

fn func_2() -> i32 {
    global0 = vec3<u32>(global0.x, ~(1u << (_wgslsmith_div_u32(0u, 1u) % 32u)), _wgslsmith_add_u32(global0.x, u_input.a.x)) ^ countOneBits(vec3<u32>(_wgslsmith_mod_u32(11796u, global0.x) << (4294967295u % 32u), ~(~4294967295u), u_input.a.x));
    let var_0 = Struct_3(Struct_2(~(~u_input.a.x | u_input.a.x), Struct_1(-1151f, vec2<i32>(0i, 8833i), -u_input.b, select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !func_3(u_input.a.x, vec4<i32>(-24828i, -48797i, -1i, u_input.b)))), -(~vec3<i32>(abs(u_input.b), -39240i, u_input.b & u_input.b)));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 77060u, countOneBits(reverseBits(select(42058u, 3186u, var_0.a.b.e.x))), 0u), countOneBits(reverseBits(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(global0.x, global0.x, global0.x, 1475u), vec4<u32>(var_0.a.a, global0.x, global0.x, 1u)))) | u_input.a);
    var var_2 = select(~_wgslsmith_clamp_vec2_i32(select(_wgslsmith_add_vec2_i32(var_0.a.b.b, var_0.b.yy), var_0.a.b.b, 1919f > var_0.a.b.a), -vec2<i32>(var_0.a.b.b.x, u_input.b), ~vec2<i32>(-2977i, var_0.a.b.b.x) | var_0.a.b.b), vec2<i32>(var_0.a.b.c, _wgslsmith_dot_vec3_i32(var_0.b, var_0.b)), select(vec2<bool>(true, true), !func_3(1u, vec4<i32>(-16590i, -31594i, 2147483647i, u_input.b) | vec4<i32>(var_0.a.b.b.x, 0i, 1i, var_0.b.x)).zz, !(!var_0.a.b.d.x)));
    var var_3 = -44784i;
    return 1i;
}

fn func_4(arg_0: Struct_5, arg_1: f32) -> Struct_4 {
    global0 = ~(~(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.www, u_input.a.wzx), ~u_input.a.yzx) | u_input.a.wzz));
    global0 = ~((_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.ywx, u_input.a.www, u_input.a.wzz), vec3<u32>(4294967295u, 61637u, 16359u) >> (u_input.a.wwz % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a.wwx, vec3<u32>(4294967295u, global0.x, global0.x)), vec3<u32>(u_input.a.x, u_input.a.x, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 0u, 8359u), vec3<u32>(global0.x, u_input.a.x, 4294967295u)))) ^ u_input.a.zyy);
    global0 = reverseBits(~reverseBits(vec3<u32>(firstTrailingBit(38108u), select(0u, 68078u, true), ~u_input.a.x)));
    var var_0 = select(select(func_3(global0.x, reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i))).xx, vec2<bool>(all(vec2<bool>(true, true)), func_3(select(global0.x, 88018u, false), vec4<i32>(u_input.b, 80772i, -65877i, -2147483647i) & vec4<i32>(-15212i, arg_0.a, -2147483647i, arg_0.a)).x), vec2<bool>(true, true)), !(!vec2<bool>(select(false, false, false), true)), !all(vec2<bool>(true, true)));
    let var_1 = (0i >= _wgslsmith_clamp_i32(-3963i, ~reverseBits(arg_0.a), 2147483647i)) || any(select(vec4<bool>(var_0.x & var_0.x, var_0.x, true, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, false)), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(true, true, false, true), false)), vec4<bool>(true, true, true, true)));
    return Struct_4(Struct_2(~min(4294967295u, u_input.a.x), Struct_1(-625f, select(-vec2<i32>(arg_0.a, -1i), vec2<i32>(u_input.b, u_input.b), var_0.x), i32(-1i) * -16515i, vec3<bool>(true, func_3(u_input.a.x, vec4<i32>(61479i, u_input.b, 0i, 0i)).x, func_3(u_input.a.x, vec4<i32>(4733i, -28068i, -2147483647i, arg_0.a)).x), select(!vec3<bool>(var_1, true, var_1), vec3<bool>(false, var_0.x, var_0.x), false || var_1))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))), ~_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, -65260i), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 38560i), vec2<i32>(-11423i, 31644i))), u_input.b, func_3(u_input.a.x, vec4<i32>(min(-2147483647i, u_input.b), i32(-1i) * -21946i, 0i, ~34654i)), !(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, true, var_0.x), true))), global0.x, Struct_2(global0.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -1550f) + arg_1), abs(vec2<i32>(-28400i, arg_0.a)) << (u_input.a.xy % vec2<u32>(32u)), abs(u_input.b | -19920i), func_3(_wgslsmith_div_u32(0u, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, 5670i, 2147483647i), vec4<i32>(-9363i, arg_0.a, arg_0.a, 1i), vec4<i32>(u_input.b, -1i, arg_0.a, 2147483647i))), vec3<bool>(any(vec4<bool>(var_1, false, false, false)), true, true))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = !select(!arg_0.d.b.d, !(!arg_0.d.b.d), arg_0.b.d.x & all(vec4<bool>(arg_0.b.e.x, true, true, arg_2)));
    global0 = ~(~u_input.a.xzw) << (u_input.a.yyx % vec3<u32>(32u));
    global0 = vec3<u32>(~36639u, abs(4294967295u), 1u);
    let var_1 = !(!select(!(!vec2<bool>(arg_0.a.b.d.x, var_0.x)), vec2<bool>(!arg_0.b.e.x, false), vec2<bool>(arg_2, true)));
    global0 = min(u_input.a.wyw, vec3<u32>(4294967295u, abs(4294967295u), min(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), global0.xy), firstTrailingBit(u_input.a.x))));
    return select(~(~min(u_input.a.x, select(31059u, 35880u, arg_2))), ~(arg_1 ^ (~arg_1 ^ u_input.a.x)), !(-238f == arg_0.a.b.a));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_2(func_5(func_4(Struct_5(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -1656f)), ~countOneBits(u_input.a.x) | 26315u, true), func_4(Struct_5(-6977i), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(f32(-1f) * -227f)), -1188f, true))).a.b);
    global0 = ~u_input.a.zwx;
    let var_1 = vec3<u32>(countOneBits(_wgslsmith_clamp_u32(func_5(Struct_4(Struct_2(var_0.a, var_0.b), var_0.b, global0.x, Struct_2(u_input.a.x, Struct_1(var_0.b.a, vec2<i32>(var_0.b.c, -2147483647i), var_0.b.b.x, var_0.b.e, var_0.b.e))), 1u, var_0.b.e.x), 4294967295u, global0.x)), _wgslsmith_dot_vec2_u32(~select(global0.xz, global0.xx, !vec2<bool>(var_0.b.e.x, var_0.b.d.x)), vec2<u32>(global0.x, firstTrailingBit(_wgslsmith_clamp_u32(1u, global0.x, var_0.a)))), 77070u);
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(-2147483647i), firstTrailingBit(var_0.b.b.x), var_0.b.b.x, ~u_input.b), vec4<i32>(select(abs(2147483647i), _wgslsmith_sub_i32(0i, -2507i), false), firstTrailingBit(22463i), abs(_wgslsmith_mod_i32(-2147483647i, var_0.b.b.x)), func_4(Struct_5(var_0.b.b.x), _wgslsmith_f_op_f32(-1764f + 314f)).d.b.b.x), vec4<i32>(-max(var_0.b.b.x, var_0.b.c), -_wgslsmith_add_i32(-5735i, 29084i), select(func_4(Struct_5(26576i), var_0.b.a).a.b.b.x, ~u_input.b, all(var_0.b.e.xy)), ~(~(-45752i)))), -(~(-vec4<i32>(u_input.b, u_input.b, 50684i, u_input.b))));
    var var_3 = _wgslsmith_dot_vec2_i32(firstTrailingBit(var_2.yw), _wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.b, 1i), reverseBits(vec2<i32>(var_2.x, var_0.b.b.x))) | vec2<i32>(var_2.x, var_0.b.b.x), vec2<i32>(~var_0.b.c, reverseBits(u_input.b)) << (max(vec2<u32>(1u, u_input.a.x), var_1.xx) % vec2<u32>(32u))));
    return select(vec3<bool>(-983f >= _wgslsmith_f_op_f32(step(var_0.b.a, _wgslsmith_f_op_f32(step(var_0.b.a, var_0.b.a)))), any(vec4<bool>(var_0.b.d.x, func_3(65189u, var_2).x, -51582i > var_2.x, 37024u > var_1.x)), any(vec2<bool>(true, var_0.b.d.x))), !vec3<bool>(select(24532u == var_1.x, var_0.b.d.x, true), true & select(false, var_0.b.e.x, true), true & var_0.b.d.x), var_0.b.e);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec3<bool>) -> u32 {
    global0 = _wgslsmith_div_vec3_u32(~(reverseBits(vec3<u32>(1u, arg_2.a.a, arg_2.d.a)) & ~u_input.a.wxx), vec3<u32>(~1u, 36559u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 4294967295u), global0.x & 0u))) & _wgslsmith_add_vec3_u32(u_input.a.xyy, ~(~(~u_input.a.wwx)));
    let var_0 = Struct_4(func_4(arg_1, arg_0.a.b.a).a, Struct_1(280f, reverseBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, 27250i, 1i, 26497i), vec4<i32>(-57212i, 44970i, -17103i, -18998i)), max(15504i, 0i))), -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_2.d.b.c, arg_2.a.b.c, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.b.c, 2147483647i, arg_2.b.b.x, -5287i), vec4<i32>(-34138i, -36429i, 19874i, u_input.b)), arg_0.a.b.c), select(!select(arg_3, arg_2.d.b.e, vec3<bool>(true, true, arg_3.x)), !arg_0.a.b.e, vec3<bool>(true, 8958i >= u_input.b, arg_0.a.b.b.x < 1i)), vec3<bool>(true, true | func_3(18423u, vec4<i32>(arg_0.b.x, u_input.b, u_input.b, -12965i)).x, true)), _wgslsmith_dot_vec2_u32(global0.zz, select(global0.yx, ~(~vec2<u32>(28289u, arg_2.c)), !select(vec2<bool>(arg_2.d.b.e.x, false), arg_3.yy, arg_2.a.b.d.zz))), Struct_2(1u, arg_2.b));
    let var_1 = u_input.a.yww;
    let var_2 = reverseBits(_wgslsmith_clamp_i32(arg_1.a, _wgslsmith_mult_i32(arg_0.b.x, -2147483647i), var_0.b.b.x));
    let var_3 = _wgslsmith_mult_vec2_i32(var_0.d.b.b | arg_2.a.b.b, ~vec2<i32>(-firstTrailingBit(76635i), var_2));
    return firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -3644i;
    let var_1 = vec3<u32>(~firstTrailingBit(~u_input.a.x), reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_div_u32(11u, 1u), u_input.a.x)), vec2<u32>(func_6(Struct_3(Struct_2(10346u, Struct_1(920f, vec2<i32>(u_input.b, u_input.b), 2147483647i, vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<i32>(-1i, 29074i, var_0)), Struct_5(var_0), Struct_4(Struct_2(4294967295u, Struct_1(1000f, vec2<i32>(63631i, -29283i), 2147483647i, vec3<bool>(true, true, true), vec3<bool>(true, true, false))), Struct_1(-1000f, vec2<i32>(u_input.b, u_input.b), -7404i, vec3<bool>(false, true, true), vec3<bool>(true, true, false)), global0.x, Struct_2(0u, Struct_1(716f, vec2<i32>(-2147483647i, var_0), -1i, vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), func_1()), u_input.a.x)));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-14381i, -1i, min(-1i, ~(-1i)), min(1i, var_0) | _wgslsmith_clamp_i32(2147483647i, var_0, var_0)), firstLeadingBit(vec4<i32>(func_2(), -2147483647i, ~var_0, func_2()))) << (var_1.x % 32u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1114f)) - _wgslsmith_div_f32(1902f, -216f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f * 231f))))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, -39178i), 0i)), vec2<i32>(0i | u_input.b, 38375i)), reverseBits(2147483647i), func_3(4294967295u, firstLeadingBit(select(vec4<i32>(-15001i, var_0, var_0, u_input.b), vec4<i32>(u_input.b, var_0, u_input.b, var_0), func_3(u_input.a.x, vec4<i32>(-1i, u_input.b, var_0, 79187i)).x))), select(vec3<bool>(true, true, true), !func_3(~0u, vec4<i32>(2147483647i, -2147483647i, var_0, var_0) ^ vec4<i32>(u_input.b, 2147483647i, 21026i, var_0)), any(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))));
    let var_4 = (vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0, 0i, 1i, u_input.b), -vec4<i32>(var_0, var_0, 27062i, u_input.b)), i32(-1i) * -12781i, -638i) << (select(var_1, u_input.a.zww, vec3<bool>(true, false & var_3.d.x, true)) % vec3<u32>(32u))) | vec3<i32>(-func_4(Struct_5(u_input.b), _wgslsmith_f_op_f32(floor(var_3.a))).a.b.b.x, var_3.b.x, u_input.b);
    var_3 = func_4(Struct_5(~var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * var_3.a) - var_3.a)).b;
    var var_5 = u_input.b & 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~reverseBits(1u), var_1.x), vec4<u32>(u_input.a.x, global0.x, u_input.a.x, ~(0u ^ reverseBits(u_input.a.x))), countOneBits(-vec2<i32>(~var_3.c, i32(-1i) * -35525i)));
}

