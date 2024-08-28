struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(959f)) - _wgslsmith_f_op_f32(f32(-1f) * -1239f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1227f))))))), select(~(~vec2<u32>(18216u, 4294967295u)), ~vec2<u32>(arg_0 >> (arg_0 % 32u), arg_0 | arg_0), (all(vec4<bool>(false, true, false, true)) | any(vec4<bool>(false, false, false, false))) | true), 33313u, countOneBits(abs(select(countOneBits(u_input.a), min(u_input.a, vec2<i32>(2147483647i, u_input.a.x)), vec2<bool>(true, true)))));
    var_0 = Struct_1(var_0.a, ~(vec2<u32>(44240u, arg_0) << (_wgslsmith_sub_vec2_u32(var_0.b, reverseBits(var_0.b)) % vec2<u32>(32u))), _wgslsmith_div_u32(max(~var_0.b.x, ~(~var_0.c)), 38563u), select(abs(firstTrailingBit(firstLeadingBit(u_input.a))), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, var_0.d.x), var_0.d, vec2<i32>(var_0.d.x, -2813i)), _wgslsmith_mod_vec2_i32(var_0.d, vec2<i32>(37778i, var_0.d.x)), true) << (var_0.b % vec2<u32>(32u)), vec2<bool>(true, true)));
    let var_1 = var_0.a;
    var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(337f)), var_0.b, 1u, _wgslsmith_sub_vec2_i32(select(select(u_input.a, vec2<i32>(-6824i, u_input.a.x), true), var_0.d, true), vec2<i32>(var_0.d.x, u_input.a.x)));
    var_0 = Struct_1(var_0.a, var_0.b, ~(~abs(var_0.b.x) & 0u), firstLeadingBit(vec2<i32>(select(var_0.d.x, i32(-1i) * -1i, true), firstTrailingBit(firstLeadingBit(var_0.d.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1715f + _wgslsmith_f_op_f32(floor(-410f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-721f)))), var_0.a))));
}

fn func_2() -> Struct_1 {
    let var_0 = -1i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-228f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(16691u)), -633f)))), vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 4294967295u) >> (~4294967295u % 32u), countOneBits(1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(48024u, 1u, 68276u, 41866u), vec4<u32>(0u, 4897u, 4294967295u, 4294967295u)))), firstTrailingBit(1u), vec2<i32>(_wgslsmith_add_i32(var_0, 0i), abs(71835i)));
    let var_2 = min(1u, var_1.c);
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.a)))), vec2<u32>(~29009u, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(var_1.b, vec2<u32>(var_2, 1u)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.b, var_1.b, var_1.b), vec2<u32>(27629u, var_1.c)))), countOneBits(_wgslsmith_clamp_u32(var_1.c, firstTrailingBit(var_2), 27590u)), u_input.a);
}

fn func_1() -> Struct_1 {
    let var_0 = -727f;
    var var_1 = Struct_2(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))), var_0, func_2());
    var_1 = Struct_2(true | (1i >= _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.c.d.x, -2147483647i), _wgslsmith_clamp_i32(2147483647i, 2147483647i, 2147483647i))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-202f, var_1.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1965f, var_1.c.a)))))), func_2());
    let var_2 = Struct_2(!var_1.a, -1220f, func_2());
    var_1 = Struct_2(true, var_0, Struct_1(func_2().a, var_2.c.b, 1u, vec2<i32>(max(-53567i, abs(var_2.c.d.x)), -_wgslsmith_div_i32(var_2.c.d.x, u_input.a.x))));
    return Struct_1(-1392f, firstTrailingBit(_wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(var_2.c.b, vec2<u32>(var_1.c.c, 7579u)), var_1.c.b)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(~var_2.c.c, 0u, _wgslsmith_sub_u32(var_1.c.b.x, 4294967295u), ~51643u)), (select(vec4<u32>(4357u, var_1.c.c, 97378u, var_1.c.b.x), vec4<u32>(1u, 1u, 63163u, var_2.c.b.x), true) ^ (vec4<u32>(1u, var_2.c.b.x, var_1.c.c, var_1.c.c) << (vec4<u32>(var_1.c.b.x, 4294967295u, var_2.c.c, 1u) % vec4<u32>(32u)))) >> ((~vec4<u32>(var_1.c.c, var_1.c.c, var_1.c.b.x, var_2.c.c) | firstLeadingBit(vec4<u32>(var_1.c.c, var_2.c.b.x, var_1.c.b.x, var_2.c.b.x))) % vec4<u32>(32u))), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(77070i, var_2.c.d.x, 1i), -vec3<i32>(0i, -87022i, -2147483647i)), abs(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = reverseBits(vec4<i32>(u_input.a.x, -((i32(-1i) * -728i) >> (func_2().c % 32u)), 1096i, var_0.d.x));
    var var_2 = _wgslsmith_mod_u32(33498u, select(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.b.x, var_0.b.x), vec3<u32>(var_0.c, 0u, var_0.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, 12319u, 4294967295u), vec3<u32>(var_0.c, var_0.b.x, 120164u)) ^ vec3<u32>(0u, var_0.c, var_0.b.x)), var_0.b.x, !any(vec4<bool>(true, false, true, false))));
    var_2 = ~var_0.c << (_wgslsmith_mult_u32(44090u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, _wgslsmith_add_u32(var_0.c, 64487u)), _wgslsmith_mod_vec2_u32(~var_0.b, vec2<u32>(var_0.c, var_0.b.x)))) % 32u);
    let var_3 = func_2();
    var_2 = firstLeadingBit(~_wgslsmith_sub_u32(3037u, ~var_3.b.x));
    var_2 = ~func_1().b.x;
    var_2 = ~19382u;
    let x = u_input.a;
    s_output = StorageBuffer(-24779i, -func_2().d, select(~(-47505i << (var_0.c % 32u)) & min(u_input.a.x, 1i), 15464i, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))))));
}

