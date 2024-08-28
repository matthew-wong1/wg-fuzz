struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-18737i, i32(-2147483648), -1i, i32(-2147483648));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(arg_0, vec2<i32>(31819i, ~(-1i)), Struct_1(abs(arg_0.a), arg_0.b), ~(~vec4<u32>(1u, ~1u, u_input.a.x, u_input.a.x)));
    var_0 = Struct_2(var_0.c, vec2<i32>(abs(_wgslsmith_div_i32(global0.x, global0.x | global0.x)), ~(-select(global0.x, var_0.b.x, true))), Struct_1(_wgslsmith_div_vec4_u32(select(~var_0.c.a, var_0.d, vec4<bool>(true, true, true, true)), select(arg_0.a, abs(vec4<u32>(1u, 45289u, u_input.a.x, var_0.d.x)), vec4<bool>(true, true, true, true))), arg_0.b), _wgslsmith_mult_vec4_u32(var_0.d, arg_0.a));
    var var_1 = Struct_3(var_0.a, var_0.a, ~countOneBits(_wgslsmith_mod_vec3_i32(global0.wzz, global0.xxx)));
    var var_2 = _wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(~75514u, _wgslsmith_mod_u32(1u, 1u), 91414u, _wgslsmith_mod_u32(arg_0.a.x, var_0.a.a.x)))), vec4<u32>(_wgslsmith_mult_u32(arg_0.a.x, ~min(51144u, u_input.a.x)), ~u_input.a.x, max(select(arg_0.a.x, max(u_input.a.x, arg_0.a.x), any(vec2<bool>(false, true))), var_1.a.a.x), abs(~(~var_1.b.a.x))));
    var_2 = 17966u;
    return u_input.a.x;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = ~arg_0;
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), u_input.a.x, u_input.a.x, ~u_input.a.x), vec4<u32>(1u << (0u % 32u), select(u_input.a.x, 1u, false), 0u, func_3(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 41056u), -1000f)))), _wgslsmith_f_op_f32(-1377f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-364f, 1000f, false)), -1633f, true)))), var_0.yx, Struct_1(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, 1u), vec4<u32>(53517u, 0u, u_input.a.x, 89702u)), vec4<u32>(u_input.a.x, u_input.a.x, 27154u, 6306u) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 31325u) % vec4<u32>(32u))) ^ abs(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 31794u, 0u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(381f)), _wgslsmith_f_op_f32(-842f - _wgslsmith_f_op_f32(1974f + -377f))))), vec4<u32>(1929u, 10808u, _wgslsmith_mod_u32(~(~u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(1u))), ~43942u));
    var var_2 = var_0;
    var_2 = -arg_0;
    let var_3 = Struct_3(var_1.a, Struct_1(~(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(9802u, 4294967295u, 4294967295u, u_input.a.x)) >> ((vec4<u32>(2140u, var_1.d.x, u_input.a.x, 1u) ^ var_1.a.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(221f, -471f, true)))), -(~var_2.www));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(369f)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1414f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1724f - 1369f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-vec4<i32>(global0.x, -16658i, global0.x, -3313i))))));
    var var_1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, 2865u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 75614u, u_input.a.x), vec3<u32>(u_input.a.x, 4780u, u_input.a.x)), ~vec3<u32>(u_input.a.x, 30276u, 1u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 9346u) & ~vec3<u32>(4294967295u, 12590u, u_input.a.x)), vec3<u32>(u_input.a.x, min(79216u, _wgslsmith_mod_u32(73029u, u_input.a.x)), func_3(Struct_1(vec4<u32>(u_input.a.x, 61755u, u_input.a.x, 84882u), -455f))));
    return _wgslsmith_f_op_f32(trunc(-1718f));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> Struct_3 {
    var var_0 = firstTrailingBit(u_input.a.x);
    global0 = firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global0.x, 0i, global0.x) ^ vec4<i32>(-2147483647i, global0.x, global0.x, global0.x), -vec4<i32>(global0.x, 0i, -4792i, 1i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(10926u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(18330u, 54100u, 14941u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<i32>(global0.x, global0.x | global0.x, global0.x, 0i)));
    var_0 = _wgslsmith_sub_u32(1u, u_input.a.x);
    var_0 = select(33492u ^ (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(arg_0.x, 41189u)), u_input.a.x, ~arg_0.x) | _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0.x, 19674u, 0u, arg_0.x)), ~vec4<u32>(arg_0.x, u_input.a.x, 30375u, 15495u))), ~(~(~_wgslsmith_clamp_u32(6639u, 1u, 4294967295u))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(false, false, false) == true)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_1, -1078f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1410f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) + -1737f) + arg_1), _wgslsmith_f_op_f32(-arg_1))), arg_1, arg_1);
    return Struct_3(Struct_1(vec4<u32>(~(~u_input.a.x), ~_wgslsmith_mult_u32(74790u, arg_0.x), reverseBits(abs(0u)), arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -198f)), Struct_1(~min(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)), ~vec4<u32>(53610u, 16727u, 38667u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, arg_1, false))))), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -24203i, global0.x), _wgslsmith_mod_vec3_i32(global0.xyz, vec3<i32>(global0.x, global0.x, 1i) & vec3<i32>(global0.x, global0.x, global0.x))), countOneBits(0i), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(vec4<i32>(1849i, -_wgslsmith_add_i32(-23398i, global0.x), 0i, 2147483647i) | vec4<i32>(global0.x, global0.x, -1i, 1i));
    let var_0 = func_4(~min(_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a.x, 83635u), u_input.a, vec2<bool>(false, false)), ~vec2<u32>(u_input.a.x, 37561u)), reverseBits(firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(func_1()), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, _wgslsmith_div_f32(1000f, var_0.b.b)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.b, 481f) - vec2<f32>(623f, var_0.a.b))))))));
    global0 = -vec4<i32>(var_0.c.x, ~global0.x, _wgslsmith_dot_vec3_i32(-(vec3<i32>(-36693i, global0.x, var_0.c.x) & global0.wzy), ~vec3<i32>(global0.x, global0.x, -14722i)), -41419i);
    let var_2 = firstLeadingBit(select(_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, 2147483647i, var_0.c.x, global0.x), vec4<i32>(global0.x, -35159i, -1i, -2561i)), vec4<i32>(global0.x, -2147483647i, i32(-1i) * -9780i, var_0.c.x), any(vec3<bool>(true, false, true)) & false) & -(vec4<i32>(-1i) * -vec4<i32>(0i, -1i, var_0.c.x, -4883i)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -188f))))) + var_1.x), _wgslsmith_f_op_f32(func_1()));
    let var_4 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.b.a, ~(~vec4<u32>(0u, var_0.a.a.x, 13893u, var_0.a.a.x))), ~27767u & ~_wgslsmith_div_u32(var_0.a.a.x, u_input.a.x), firstTrailingBit(_wgslsmith_clamp_u32(reverseBits(68682u), u_input.a.x, ~4294967295u)), max(~min(u_input.a.x, 0u), u_input.a.x)), -149f);
    var var_5 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, var_1.x, var_3)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1384f, 1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.a.a.x));
}

