struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 62478u, 21735u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, ~1i, u_input.e.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(35368i, u_input.e.x), abs(0i))), vec4<i32>(u_input.e.x, _wgslsmith_div_i32(~(~2147483647i), 45285i), -2147483647i, u_input.e.x));
    var var_1 = true;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(arg_0.d.b + _wgslsmith_f_op_f32(floor(arg_0.c)));
    var_1 = false;
    return vec2<bool>(_wgslsmith_mult_i32(0i, 12510i) > ~countOneBits(firstLeadingBit(u_input.e.x)), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    global0 = ~((~_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(global0.x, arg_1.c.x, arg_1.a.x)) << (~_wgslsmith_div_vec3_u32(arg_1.c.ywy, vec3<u32>(u_input.d.x, 31459u, arg_0.a)) % vec3<u32>(32u))) & vec3<u32>(9677u, ~_wgslsmith_dot_vec3_u32(arg_1.c.xwx, vec3<u32>(u_input.d.x, 1u, global0.x)), _wgslsmith_mod_u32(~1u, countOneBits(arg_1.a.x))));
    global0 = ~_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), ~vec3<u32>(9447u, 17687u, arg_0.a)), countOneBits(vec3<u32>(23558u | global0.x, firstLeadingBit(4294967295u), 24941u)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))))));
    var var_1 = arg_3.yw;
    global0 = ~_wgslsmith_add_vec3_u32(~u_input.c, ~firstLeadingBit(u_input.c));
    return ~(~35909u << (arg_1.c.x % 32u));
}

fn func_2(arg_0: Struct_4, arg_1: bool) -> bool {
    global0 = select(firstLeadingBit(max(min(_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(arg_0.b.a, 14032u, global0.x)), select(u_input.d, u_input.d, false)), u_input.d)), vec3<u32>(global0.x, func_4(Struct_1(64947u, any(vec4<bool>(true, true, true, false)), func_3(Struct_3(Struct_2(vec4<u32>(u_input.b, 4294967295u, 71185u, 4294967295u), -825f, vec4<u32>(u_input.b, arg_0.c, 4294967295u, 30309u)), Struct_2(vec4<u32>(global0.x, 1u, 21694u, 1u), -492f, vec4<u32>(u_input.a, global0.x, 18147u, 32984u)), -2285f, Struct_2(vec4<u32>(27934u, 15838u, 4523u, 10589u), -564f, vec4<u32>(u_input.d.x, global0.x, 1u, u_input.d.x))), 1i, vec2<f32>(-2131f, -426f))), Struct_2(vec4<u32>(global0.x, arg_0.b.a, 68062u, arg_0.c) | vec4<u32>(38650u, 1u, global0.x, 43245u), 1318f, vec4<u32>(u_input.a, 1u, arg_0.c, global0.x)), ~2147483647i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(459f, 1000f, 825f, 1656f)))), 11441u), !(!(!arg_1)) & any(!arg_0.b.c));
    let var_0 = Struct_2(~vec4<u32>(~_wgslsmith_mod_u32(u_input.c.x, global0.x), ~abs(global0.x), select(~u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, arg_0.b.a, arg_0.b.a)), arg_1), firstLeadingBit(arg_0.b.a) & 5747u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f * _wgslsmith_f_op_f32(max(-409f, _wgslsmith_f_op_f32(-474f + 493f))))), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.d.x ^ global0.x, global0.x), firstLeadingBit(~1u), ~4294967295u, 1u)));
    global0 = vec3<u32>(78046u, u_input.b, (var_0.c.x & ~var_0.c.x) ^ arg_0.b.a);
    global0 = ~vec3<u32>(arg_0.c, 28463u, max(abs(~var_0.a.x), ~global0.x));
    var var_1 = u_input.e;
    return all(vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.b) + -381f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), any(vec4<bool>(arg_0.b.c.x, arg_0.b.c.x, true, true)) == arg_1, true));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = arg_1.xx;
    global0 = ~(~countOneBits(~vec3<u32>(arg_2.a, arg_2.a, 1u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1848f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1453f) - -473f)))) + 848f);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1172f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 328f))))));
    var var_3 = Struct_2(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, 4294967295u, 30551u, global0.x), vec4<u32>(global0.x, 16938u, global0.x, 1u))) ^ vec4<u32>(1u, 52754u, 4294967295u, 34561u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -1157f) - -1084f))), ~countOneBits(max(~vec4<u32>(20458u, 4294967295u, arg_2.a, 31416u), vec4<u32>(u_input.b, 0u, arg_0.a, u_input.d.x))));
    return Struct_2(vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_2.a) ^ countOneBits(arg_0.a), countOneBits(u_input.a), u_input.a, _wgslsmith_sub_u32(global0.x, 1u)) << (vec4<u32>(~global0.x << (arg_0.a % 32u), _wgslsmith_sub_u32(u_input.d.x, 23103u), 0u, _wgslsmith_add_u32(0u, arg_2.a >> (4294967295u % 32u))) % vec4<u32>(32u)), 1000f, max(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(2401u, 0u, arg_2.a, 0u), var_3.a, vec4<u32>(4294967295u, global0.x, 39802u, var_3.a.x))), vec4<u32>(global0.x, arg_0.a >> (global0.x % 32u), ~arg_2.a, 30966u)) << (var_3.c % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    var var_0 = func_5(arg_0, select(vec4<bool>(true, func_2(Struct_4(true, Struct_1(4294967295u, false, vec2<bool>(arg_0.b, arg_0.c.x)), 4294967295u), arg_0.b), arg_0.b, false), select(vec4<bool>(false, false, true, true), vec4<bool>(all(arg_0.c), false, !arg_0.c.x, true), _wgslsmith_f_op_f32(arg_1 * arg_1) < _wgslsmith_f_op_f32(334f - arg_1)), vec4<bool>(all(!vec4<bool>(arg_0.b, true, true, false)), (-76291i | u_input.e.x) <= (u_input.e.x | u_input.e.x), true, arg_0.c.x)), Struct_1(global0.x, !(u_input.e.x > u_input.e.x) && true, arg_0.c), !arg_0.b);
    let var_1 = Struct_3(func_5(Struct_1(15204u, _wgslsmith_add_i32(u_input.e.x, u_input.e.x) <= -3868i, func_3(Struct_3(Struct_2(vec4<u32>(global0.x, global0.x, 0u, var_0.c.x), -457f, vec4<u32>(1u, u_input.b, 49188u, var_0.a.x)), Struct_2(vec4<u32>(global0.x, 13401u, global0.x, 4294967295u), -1736f, var_0.a), 1648f, Struct_2(vec4<u32>(arg_0.a, 45995u, 24154u, 0u), -1519f, vec4<u32>(1u, u_input.a, global0.x, 8735u))), ~5736i, vec2<f32>(1016f, arg_1))), !vec4<bool>(arg_0.c.x, any(arg_0.c), select(arg_0.b, true, false), true), Struct_1(arg_0.a, false, select(vec2<bool>(true, arg_0.c.x), !arg_0.c, any(arg_0.c))), ~var_0.c.x <= 17108u), func_5(Struct_1(1u, !any(vec2<bool>(false, arg_0.c.x)), !(!arg_0.c)), select(select(vec4<bool>(arg_0.b, true, true, arg_0.c.x), !vec4<bool>(true, arg_0.b, false, arg_0.b), arg_0.c.x), select(select(vec4<bool>(arg_0.b, arg_0.b, false, false), vec4<bool>(arg_0.b, arg_0.c.x, arg_0.b, arg_0.c.x), vec4<bool>(arg_0.b, true, arg_0.c.x, arg_0.b)), vec4<bool>(arg_0.b, true, false, arg_0.b), arg_0.b), false), Struct_1(var_0.a.x, false, vec2<bool>(func_3(Struct_3(Struct_2(var_0.c, 703f, vec4<u32>(0u, 91597u, 2188u, 1u)), Struct_2(var_0.c, var_0.b, vec4<u32>(973u, 2838u, arg_0.a, var_0.a.x)), arg_1, Struct_2(var_0.a, var_0.b, var_0.a)), u_input.e.x, vec2<f32>(1739f, arg_1)).x, false)), !all(!vec2<bool>(true, arg_0.b))), var_0.b, Struct_2(~vec4<u32>(u_input.d.x, global0.x, ~4294967295u, _wgslsmith_add_u32(36819u, 28622u)), var_0.b, ~(vec4<u32>(u_input.d.x, global0.x, var_0.a.x, arg_0.a) << (~vec4<u32>(2973u, 8130u, var_0.c.x, arg_0.a) % vec4<u32>(32u)))));
    global0 = countOneBits(vec3<u32>(func_4(arg_0, Struct_2(vec4<u32>(var_0.c.x, 4294967295u, 1u, var_0.a.x), arg_1, var_1.d.c), min(u_input.e.x, i32(-1i) * -6040i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, 1821f, -507f, -398f)))), min(~_wgslsmith_div_u32(u_input.b, global0.x), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(77512u, 23132u, u_input.a)), u_input.d)), global0.x));
    var_0 = Struct_2(vec4<u32>(1u, var_1.a.c.x, 74852u, ~(var_1.d.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.a, u_input.d.x), u_input.d) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * -1294f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.b, -1833f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-393f, arg_1)) * var_0.b))), ~(~func_5(Struct_1(19423u, false, vec2<bool>(arg_0.c.x, arg_0.c.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.c.x)), arg_0, true).c));
    var_0 = func_5(Struct_1(func_4(arg_0, func_5(arg_0, select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(false, true, arg_0.c.x, true)), Struct_1(var_1.d.a.x, arg_0.c.x, arg_0.c), arg_0.c.x), _wgslsmith_mod_i32(2147483647i, min(u_input.e.x, u_input.e.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(437f, var_0.b, 1254f, var_0.b), vec4<f32>(arg_1, 267f, arg_1, -1810f), vec4<bool>(false, true, arg_0.b, true))))), true, arg_0.c), vec4<bool>(!all(vec3<bool>(true, arg_0.c.x, arg_0.b)), any(vec2<bool>(var_0.c.x < var_1.a.c.x, arg_0.b)), arg_0.b, false | arg_0.c.x), arg_0, -1i == ~reverseBits(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x)));
    return select(vec4<bool>(arg_0.c.x, !(1i < _wgslsmith_add_i32(u_input.e.x, -49248i)), (1i >> (reverseBits(global0.x) % 32u)) < 0i, true), select(!select(!vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.b, arg_0.c.x), select(vec4<bool>(arg_0.b, true, true, false), vec4<bool>(true, arg_0.c.x, true, false), false), !vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.b)), vec4<bool>(false, false, !arg_0.b, false), !vec4<bool>(arg_0.b, arg_0.c.x && false, arg_0.b, true)), !(arg_1 >= _wgslsmith_f_op_f32(f32(-1f) * -1462f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(all(select(select(func_1(Struct_1(u_input.b, true, vec2<bool>(false, false)), 316f), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false))), all(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-429f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1612f, 490f))), 1892f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1141f)), -656f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -728f))))));
    let var_2 = Struct_1(1u, _wgslsmith_div_i32(u_input.e.x << (~57620u % 32u), firstTrailingBit(2147483647i)) == u_input.e.x, vec2<bool>(~(~u_input.d.x) > firstTrailingBit(global0.x), true));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(520f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2024f, 299f)), _wgslsmith_f_op_f32(-339f - -754f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(390f, 713f)))))));
    let var_4 = Struct_4(!any(func_3(Struct_3(Struct_2(vec4<u32>(u_input.c.x, 46232u, 4294967295u, 8414u), var_3.x, vec4<u32>(global0.x, 14476u, var_2.a, var_2.a)), Struct_2(vec4<u32>(1u, 23468u, global0.x, global0.x), var_3.x, vec4<u32>(4294967295u, 4294967295u, 0u, 57435u)), 433f, Struct_2(vec4<u32>(var_2.a, u_input.c.x, var_2.a, 14279u), 448f, vec4<u32>(u_input.d.x, 34432u, 12424u, u_input.b))), u_input.e.x & -2147483647i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.x, 724f))))), var_2, abs(var_2.a << (global0.x % 32u)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, 728f), var_3, vec2<bool>(var_4.a, false)))) - _wgslsmith_f_op_vec2_f32(-var_3)))));
    global0 = ~u_input.d;
    global0 = ~_wgslsmith_mult_vec3_u32(u_input.d, firstLeadingBit(u_input.d) << (select(~vec3<u32>(4294967295u, 1u, 104247u), vec3<u32>(u_input.a, 56760u, 4294967295u), false) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_4.c, var_2.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_4.c), max(u_input.c.yz, vec2<u32>(global0.x, var_2.a))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2128f)) + -1286f), var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -699f)), vec4<f32>(310f, var_1.x, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_1.x))))));
}

