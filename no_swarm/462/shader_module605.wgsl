struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global0 = select(vec3<u32>(1u, min(_wgslsmith_sub_u32(firstTrailingBit(global0.x), u_input.e.x), ~0u << (global0.x % 32u)), u_input.d), ~vec3<u32>(select(countOneBits(1u), ~global0.x, false), _wgslsmith_mod_u32(u_input.e.x, 49753u), ~1u), select(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<bool>(!all(vec4<bool>(true, false, false, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.e.x), vec2<u32>(0u, global0.x)) <= global0.x, true), vec3<bool>(false, false, !(4294967295u < u_input.d))));
    var var_0 = Struct_1(select(vec2<bool>(true || any(vec4<bool>(false, false, false, false)), !(global0.x >= 1510u)), !vec2<bool>(any(vec2<bool>(false, true)), true), true));
    var var_1 = firstTrailingBit(global0.x) != global0.x;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(337f - 168f) * -2433f))), Struct_1(select(select(var_0.a, vec2<bool>(var_0.a.x, true), vec2<bool>(true, true)), vec2<bool>(var_0.a.x, true), var_0.a)), Struct_1(!var_0.a), Struct_1(!var_0.a)), vec3<i32>(_wgslsmith_mult_i32(2147483647i, 1i | u_input.a.x) | max(_wgslsmith_clamp_i32(1i, u_input.a.x, u_input.a.x), u_input.b.x & u_input.c.x), ~_wgslsmith_mod_i32(reverseBits(u_input.b.x), _wgslsmith_mod_i32(8258i, 32611i)), _wgslsmith_add_i32(u_input.b.x, ~u_input.a.x)), u_input.a, -7243i & -(u_input.c.x << (global0.x % 32u)), Struct_1(var_0.a));
    let var_3 = vec2<bool>(false, (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, 9378u), vec3<u32>(u_input.d, 4946u, global0.x)) != _wgslsmith_mod_u32(u_input.d, 19701u)) | !(!var_2.e.a.x || var_0.a.x));
    return false;
}

fn func_2() -> u32 {
    var var_0 = ~u_input.e.x;
    var var_1 = u_input.b.x;
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-114f, _wgslsmith_f_op_f32(282f + 1000f)))), Struct_1(vec2<bool>(true, true)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), Struct_1(vec2<bool>(true, true))), ~u_input.c, _wgslsmith_div_vec3_i32(-u_input.b.zxx, -reverseBits(abs(u_input.b.zzz))), u_input.a.x, Struct_1(vec2<bool>(func_3(), any(vec3<bool>(true, true, true)))));
    var_1 = _wgslsmith_dot_vec2_i32(var_2.b.xx, abs(max(vec2<i32>(u_input.c.x, 0i), vec2<i32>(var_2.b.x, var_2.c.x))) & vec2<i32>(-var_2.d >> ((u_input.e.x | 4294967295u) % 32u), -1664i));
    var_0 = ~4294967295u;
    return abs(u_input.e.x);
}

fn func_1() -> Struct_1 {
    global0 = ~vec3<u32>(u_input.e.x, abs(u_input.d), ~func_2() >> (1u % 32u));
    global0 = ~(~(~min(~vec3<u32>(37801u, 52944u, 1u), vec3<u32>(u_input.e.x, 0u, 0u) ^ vec3<u32>(0u, 8751u, 0u))));
    var var_0 = _wgslsmith_f_op_f32(sign(265f));
    global0 = ~select(select(~(vec3<u32>(1u, global0.x, u_input.d) ^ vec3<u32>(0u, 22839u, global0.x)), vec3<u32>(u_input.e.x, global0.x, _wgslsmith_clamp_u32(27684u, 18406u, u_input.d)), firstTrailingBit(9057i) < ~(-64522i)), countOneBits(~vec3<u32>(0u, 34502u, u_input.d) >> (~vec3<u32>(1u, 26325u, 62982u) % vec3<u32>(32u))), _wgslsmith_mult_u32(global0.x, reverseBits(u_input.e.x)) <= abs(_wgslsmith_add_u32(global0.x, 41473u)));
    var var_1 = firstTrailingBit(u_input.a.x & ~(-1i));
    return Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> vec3<u32> {
    let var_0 = Struct_3(arg_1, u_input.a, -(vec3<i32>(u_input.c.x >> (1u % 32u), firstLeadingBit(2147483647i), max(u_input.b.x, u_input.b.x)) << (firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x))) % vec3<u32>(32u))), 0i, Struct_1(!vec2<bool>(4729i <= u_input.a.x, true)));
    let var_1 = var_0.e.a;
    let var_2 = func_1();
    var var_3 = _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 * 365f), _wgslsmith_f_op_f32(2448f - 286f))))));
    global0 = select(vec3<u32>(65017u, abs(min(4294967295u, u_input.e.x)), ~4294967295u), max(abs(~(vec3<u32>(u_input.d, global0.x, global0.x) & vec3<u32>(u_input.e.x, 4602u, global0.x))), ~firstLeadingBit(~vec3<u32>(global0.x, 4294967295u, 11200u))), true);
    return abs(abs(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 46098u, global0.x), vec3<u32>(43722u, u_input.d, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), Struct_2(-473f, Struct_1(!func_1().a), func_1(), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), _wgslsmith_f_op_f32(-1428f * 910f));
    global0 = vec3<u32>(global0.x, max(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~4294967295u, global0.x), ~u_input.d ^ ~u_input.d), 17783u), 3947u >> (0u % 32u));
    let var_0 = ~u_input.b.xz;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-212f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1260f))) + 493f)), Struct_1(!func_1().a), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), true))), func_1());
    global0 = firstTrailingBit(min(((vec3<u32>(72154u, 82583u, global0.x) ^ vec3<u32>(u_input.d, 96175u, 33869u)) >> ((vec3<u32>(1u, u_input.e.x, 0u) >> (vec3<u32>(4085u, global0.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) & ~(~vec3<u32>(u_input.e.x, global0.x, u_input.e.x)), ~(~(vec3<u32>(u_input.d, global0.x, 0u) ^ vec3<u32>(47525u, u_input.e.x, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(max(-2108f, var_1.a)))) - -368f));
}

