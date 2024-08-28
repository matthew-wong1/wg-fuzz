struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2), -374f, _wgslsmith_f_op_f32(trunc(arg_2)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(-1127f)), arg_2, _wgslsmith_f_op_f32(-arg_2), 1000f)))))));
    let var_1 = u_input.e.x;
    let var_2 = Struct_3(0u, Struct_2(arg_1, all(!select(arg_1.a, arg_1.a, arg_1.a.x)), u_input.a, arg_1.a.x), 1u, Struct_2(Struct_1(arg_1.a, _wgslsmith_add_vec4_i32(abs(u_input.d), ~vec4<i32>(arg_0, 0i, arg_3, 16857i)), ~vec4<i32>(-5021i, 36392i, -77721i, -12277i)), arg_1.a.x, abs(~_wgslsmith_add_u32(u_input.c.x, 1u)), arg_1.a.x));
    var var_3 = Struct_2(arg_1, false, ~abs(4294967295u), true);
    var var_4 = !vec3<bool>(any(var_3.a.a.yyy), any(vec2<bool>(arg_1.a.x, var_2.d.b)), all(!vec4<bool>(arg_1.a.x, false, true, arg_1.a.x)));
    return 37744i;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> vec4<u32> {
    let var_0 = vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-12861i, func_3(-1i, Struct_1(vec4<bool>(arg_2, arg_1, true, arg_1), vec4<i32>(11490i, u_input.d.x, 37283i, 0i), vec4<i32>(-1i, u_input.e.x, u_input.e.x, arg_0)), 1000f, 0i), -arg_0)) << (~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(53987u, 30u)], 10875u, u_input.c.x), vec3<u32>(global0[_wgslsmith_index_u32(0u, 30u)], u_input.a, 1u)), ~u_input.c.x), 30u)] % 32u), -7441i, u_input.d.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) * _wgslsmith_f_op_f32(f32(-1f) * -323f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f) + _wgslsmith_f_op_f32(ceil(-336f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(430f * -311f))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1571f), 1300f, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(155f, -915f, true))))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -456f);
    var_1 = 132f;
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f * _wgslsmith_f_op_f32(-657f * _wgslsmith_f_op_f32(ceil(246f)))) + -1216f), -1068f));
    return countOneBits(vec4<u32>(123239u, u_input.c.x, u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(14833u, u_input.a, 14035u), ~vec3<u32>(4294967295u, 25507u, 4294967295u)), 1u)));
}

fn func_1() -> Struct_1 {
    var var_0 = -1573i;
    var_0 = countOneBits(~(-(~2147483647i)) >> (~(~u_input.a) % 32u));
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 0u, _wgslsmith_mult_u32(11763u, u_input.c.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)]) >> (min(~vec4<u32>(4294967295u, 43878u, 41810u, u_input.a), vec4<u32>(0u, u_input.c.x, global0[_wgslsmith_index_u32(40960u, 30u)], u_input.c.x) ^ vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 11550u, 24148u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(func_2(39023i, false, true) << ((vec4<u32>(53642u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 51079u) << (vec4<u32>(8370u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 30u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18197u, 30u)], 30u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(vec4<u32>(4294967295u, 16075u, 1u, 1u)) & firstLeadingBit(vec4<u32>(0u, 66609u, u_input.c.x, u_input.c.x))));
    let var_2 = Struct_1(vec4<bool>(u_input.d.x != _wgslsmith_clamp_i32(_wgslsmith_div_i32(-7402i, -34129i), reverseBits(38290i), 0i), true, !all(vec3<bool>(false, true, false)), select(false, all(vec4<bool>(true, true, true, true)), false)), -select(-vec4<i32>(0i, 19479i, -1i, 2147483647i), vec4<i32>(_wgslsmith_add_i32(u_input.b, 25462i), min(u_input.e.x, -2467i), u_input.e.x, u_input.e.x), all(vec4<bool>(true, true, true, true))), -firstLeadingBit(~abs(vec4<i32>(20791i, u_input.d.x, 24308i, u_input.b))));
    var_0 = 26887i << (~(~global0[_wgslsmith_index_u32(abs(u_input.c.x), 30u)]) % 32u);
    return Struct_1(!var_2.a, u_input.d, select(vec4<i32>(u_input.e.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, var_2.c.x), i32(-1i) * -21804i), -reverseBits(27726i), -_wgslsmith_add_i32(-30698i, 0i)), _wgslsmith_clamp_vec4_i32(u_input.d, var_2.b, vec4<i32>(var_2.b.x, -17254i, ~(-2147483647i), u_input.e.x)), var_2.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    global0 = array<u32, 30>();
    let var_0 = u_input.d.xw;
    var var_1 = abs(36731u);
    var var_2 = ~min(_wgslsmith_mod_i32(u_input.d.x, u_input.e.x), _wgslsmith_mult_i32(34152i, -8209i));
    var var_3 = -arg_2.c.x;
    return Struct_3(arg_1.a, arg_0, arg_1.d.c >> (arg_1.b.c % 32u), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -736f) - _wgslsmith_div_f32(-137f, -364f))) - _wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(-325f + _wgslsmith_f_op_f32(sign(1206f))))), 561f));
    let var_1 = u_input.d.x;
    let var_2 = func_4(Struct_2(func_1(), false, _wgslsmith_dot_vec2_u32(abs(u_input.c), u_input.c), any(vec3<bool>(true, true, true)) && (func_1().a.x || true)), Struct_3(u_input.a, Struct_2(Struct_1(func_1().a, vec4<i32>(24263i, var_1, var_1, 1i), -u_input.d), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), ~0u, any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 30u)], 99u) | vec4<u32>(94848u, 0u, 4294967295u, 1u), firstLeadingBit(vec4<u32>(75878u, global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)]))), abs(~vec4<u32>(u_input.c.x, 0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)]))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), u_input.d, vec4<i32>(115i, 1i, var_1, u_input.b)), all(vec4<bool>(true, true, true, true)), ~(~u_input.c.x), any(vec3<bool>(true, true, true)))), Struct_1(vec4<bool>(true, true, true, true), reverseBits(func_1().b ^ reverseBits(u_input.d)), _wgslsmith_sub_vec4_i32(-vec4<i32>(4827i, -2147483647i, u_input.b, var_1), vec4<i32>(19563i, _wgslsmith_sub_i32(u_input.d.x, var_1), u_input.e.x, -1i))));
    var var_3 = vec3<f32>(1f, 1f, 1f);
    let var_4 = Struct_1(vec4<bool>(true, var_2.d.b, all(var_2.d.a.a.wx) == any(vec3<bool>(var_2.d.d, var_2.d.b, var_2.d.b)), !(!(var_2.d.b | false))), ~abs(var_2.d.a.b), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(~vec2<i32>(85564i, -24684i), func_4(var_2.d, var_2, Struct_1(vec4<bool>(var_2.b.b, false, false, var_2.d.b), vec4<i32>(-48074i, -2147483647i, var_4.b.x, var_1), vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, -1i))).b.a.c.wx)), abs(vec2<i32>(i32(-1i) * -37947i, var_2.b.a.b.x)), var_2.b.a.c.yx);
}

