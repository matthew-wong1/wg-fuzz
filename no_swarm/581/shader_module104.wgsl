struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = u_input.b;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(arg_0, -1257f)), 1i, Struct_1(arg_0, !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(33834u, 70873u, u_input.b, 4294967295u), vec4<u32>(54006u, var_0, 30993u, u_input.a)) >> (reverseBits(var_0) % 32u)), u_input.c.xx, select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, select(false, false, true), select(true, false, false), true))));
    let var_2 = abs(firstLeadingBit(var_1.b) | -countOneBits(u_input.d));
    let var_3 = _wgslsmith_mod_vec3_i32(u_input.c.xzx, abs(reverseBits(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.d, -20692i, 44731i), u_input.c.wzw, vec3<bool>(true, false, var_1.c.b.x)), u_input.c.wwx & vec3<i32>(var_1.b, 27982i, var_1.c.d.x)))));
    return select(!select(!(!vec3<bool>(var_1.c.e.x, var_1.c.b.x, true)), var_1.c.b, countOneBits(u_input.c.x) >= -49421i), var_1.c.e.www, all(!select(vec4<bool>(true, true, var_1.c.e.x, var_1.c.b.x), select(vec4<bool>(false, var_1.c.b.x, var_1.c.b.x, var_1.c.e.x), var_1.c.e, false), var_1.c.e)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> vec4<u32> {
    let var_0 = Struct_3(func_3(_wgslsmith_f_op_f32(f32(-1f) * -804f)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a) << (u_input.b % 32u), 31903u, 1u) << ((max(_wgslsmith_clamp_vec3_u32(vec3<u32>(55265u, u_input.b, 0u), vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(4294967295u, u_input.b, 26653u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(u_input.a, u_input.b, 47593u))) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.b, 4294967295u, 13354u)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1580f * -841f), _wgslsmith_f_op_f32(floor(430f)), _wgslsmith_f_op_f32(abs(1579f)), -1632f), vec4<f32>(_wgslsmith_f_op_f32(-274f * 1002f), 1f, _wgslsmith_f_op_f32(select(-1584f, 1389f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -366f)), select(vec4<bool>(arg_0.x, true, true, false), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), arg_0.x), arg_0.x)))));
    let var_1 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~u_input.c, u_input.c, _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c.x, 3347i, u_input.c.x, 0i)), vec4<i32>(-21410i, u_input.c.x, u_input.c.x, 4159i), firstLeadingBit(u_input.c))), max(u_input.c, ~(-u_input.c)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -768f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(353f, var_0.c.x))))))), !arg_0, ~(~_wgslsmith_mod_u32(~25173u, var_0.b.x)), u_input.c.ww, select(select(!vec4<bool>(false, arg_0.x, var_0.a.x, var_0.a.x), vec4<bool>(all(vec2<bool>(arg_0.x, arg_0.x)), true == arg_0.x, var_0.a.x, all(vec4<bool>(false, var_0.a.x, arg_0.x, var_0.a.x))), true), vec4<bool>(!all(arg_0.zz), !arg_0.x, false, (var_0.b.x << (4294967295u % 32u)) != _wgslsmith_dot_vec2_u32(var_0.b.yz, var_0.b.zz)), all(vec2<bool>(false, select(var_0.a.x, false, arg_0.x)))));
    var var_3 = _wgslsmith_div_i32(1202i, min(~2147483647i, -6590i));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(274f, -169f)) + 357f)));
    return vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(select(0u, 42356u, false), _wgslsmith_mult_u32(var_0.b.x, var_0.b.x)), ~(var_0.b.x | 0u)), 89887u, ~var_0.b.x, 31638u) | vec4<u32>(~_wgslsmith_add_u32(u_input.a ^ var_0.b.x, 33164u), abs(u_input.a >> (var_2.c % 32u)), 47695u, firstLeadingBit(~1u));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_2.b;
    let var_1 = Struct_2(~_wgslsmith_add_u32(~var_0.x, 36447u), arg_2.b | firstLeadingBit((arg_2.b & vec2<u32>(85243u, var_0.x)) >> (~arg_2.b % vec2<u32>(32u))), select(vec2<bool>(true, abs(u_input.c.x) != 0i), vec2<bool>(arg_2.e && any(arg_2.c), true), arg_2.e), arg_3.c, !arg_2.e);
    var var_2 = arg_2.b;
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(24049u) | ~var_0.x, ~1u), ~(~(~var_2.x)), 14762u & (~69943u | _wgslsmith_div_u32(1u, arg_2.b.x)), var_2.x), func_2(!(!select(arg_3.c.e.xzy, var_1.d.e.wyz, var_1.d.e.xzy)), arg_3.b));
    let var_4 = Struct_2(~(~_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(83197u, 100878u)))), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(arg_2.b.x, 1u)), vec2<bool>(var_1.d.e.x, true), var_1.d, any(arg_3.c.e));
    return arg_2;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = select(select(select(vec4<bool>(arg_1.e, arg_1.d.a < arg_3, arg_1.d.b.x, arg_1.c.x), !func_1(arg_3, arg_1.d.e, Struct_2(u_input.a, vec2<u32>(u_input.b, 45224u), vec2<bool>(true, true), arg_1.d, arg_1.c.x), Struct_4(arg_3, 4865i, Struct_1(-1276f, arg_1.d.e.xxx, arg_1.a, vec2<i32>(16019i, arg_0.x), arg_1.d.e))).d.e, arg_1.d.e), !arg_1.d.e, select(arg_1.d.e, func_1(-1054f, arg_1.d.e, Struct_2(0u, arg_1.b, arg_1.d.e.zx, arg_1.d, false), Struct_4(arg_1.d.a, -18043i, arg_1.d)).d.e, select(!arg_1.d.e, select(arg_1.d.e, vec4<bool>(false, arg_1.c.x, arg_1.d.e.x, arg_1.e), vec4<bool>(true, true, arg_1.d.b.x, arg_1.d.b.x)), true))), !(!select(!arg_1.d.e, func_1(arg_3, arg_1.d.e, arg_1, Struct_4(arg_1.d.a, u_input.c.x, arg_1.d)).d.e, arg_1.d.b.x)), !vec4<bool>(false, arg_1.e, true, any(vec2<bool>(false, arg_1.d.b.x))));
    var var_1 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 0u, arg_1.d.c, 0u), countOneBits(vec4<u32>(99437u, u_input.b, u_input.b, u_input.b))) | ~min(vec4<u32>(13454u, arg_1.d.c, arg_1.a, 6437u), vec4<u32>(arg_1.b.x, arg_1.d.c, 0u, arg_1.b.x)), _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 0u, 72794u)), ~vec4<u32>(0u, u_input.b, arg_1.b.x, u_input.a) & (vec4<u32>(arg_1.d.c, 1u, 4572u, 4294967295u) ^ vec4<u32>(42889u, u_input.a, arg_1.d.c, arg_1.d.c))));
    let var_2 = _wgslsmith_add_vec2_i32(arg_0, ~vec2<i32>((59355i << (0u % 32u)) << (~var_1.x % 32u), 0i));
    let var_3 = Struct_3(var_0.yxy, vec3<u32>(_wgslsmith_div_u32(abs(4294967295u), 4294967295u), 45u, 11503u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2045f, _wgslsmith_f_op_f32(ceil(arg_1.d.a)), _wgslsmith_div_f32(arg_1.d.a, arg_1.d.a), arg_3))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-223f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, arg_3)), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_3)), -690f)))));
    let var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>(~abs(0i), arg_2), vec2<i32>(~(-5922i), 1i)) ^ reverseBits(vec2<i32>(2147483647i, -22964i));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(min(~20195i, 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, -23502i), u_input.c.yx, vec2<i32>(u_input.d, 0i)), vec2<i32>(-2147483647i, -20359i)), func_4(u_input.c.xx, func_1(1534f, vec4<bool>(false, false, true, false), Struct_2(75773u, vec2<u32>(u_input.a, u_input.b), vec2<bool>(false, false), Struct_1(1722f, vec3<bool>(false, false, true), 32337u, u_input.c.xx, vec4<bool>(false, true, true, false)), false), Struct_4(710f, u_input.d, Struct_1(-1881f, vec3<bool>(false, true, true), u_input.a, u_input.c.yw, vec4<bool>(false, false, false, true)))), u_input.c.x >> (64583u % 32u), -1105f), ~(i32(-1i) * -1i)), select(-abs(u_input.c), _wgslsmith_div_vec4_i32(reverseBits(u_input.c), vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x)), all(vec4<bool>(true, true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -612f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) - _wgslsmith_f_op_f32(select(652f, 591f, false))))), 1072f, -1084f));
}

