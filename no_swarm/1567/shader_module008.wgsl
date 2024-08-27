struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> bool {
    let var_0 = Struct_3(any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec3<bool>(true, false, true))), vec2<bool>(true, true), vec2<bool>(arg_0.x <= 14655u, all(vec4<bool>(false, true, false, true))))));
    var var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 34588i, u_input.a), vec4<i32>(u_input.a, 15218i, u_input.a, u_input.a) << (arg_0 % vec4<u32>(32u))), firstLeadingBit(~1i)), ~select(_wgslsmith_add_vec3_i32(vec3<i32>(11231i, 0i, 26344i), vec3<i32>(-10820i, u_input.a, -1i)), vec3<i32>(u_input.a, u_input.a, 82317i), vec3<bool>(var_0.a, var_0.a, var_0.a)));
    var_1 = min(min(-vec3<i32>(_wgslsmith_add_i32(-1i, var_1.x), reverseBits(-2147483647i), var_1.x), -reverseBits(vec3<i32>(17193i, 30265i, 2147483647i))), abs(vec3<i32>(2147483647i, u_input.a, var_1.x) ^ ~vec3<i32>(var_1.x, u_input.a, -1i)) | -vec3<i32>(33051i, u_input.a, -u_input.a));
    var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(5369i, u_input.a, -222i), vec3<i32>(-31451i, u_input.a, u_input.a)), vec3<i32>(u_input.a, 18042i, 32890i), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, var_1.x, 2147483647i), vec3<i32>(0i, 1i, var_1.x)))), -(-vec3<i32>(66716i, 1i, 0i) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 18475i, var_1.x), vec3<i32>(1i, -1i, var_1.x)))), vec3<i32>(1i, var_1.x, ~var_1.x));
    let var_2 = Struct_3(var_0.a & var_0.a);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(637f)))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!select(vec4<bool>(true, arg_2.a, arg_2.a, arg_2.a), !vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false), true)), Struct_1(select(vec4<bool>(any(vec2<bool>(arg_2.a, true)), arg_2.a, !arg_2.a, true), !vec4<bool>(false, arg_2.a, false, true), any(!vec3<bool>(arg_2.a, arg_2.a, false)))), Struct_1(!vec4<bool>(func_3(vec4<u32>(18670u, 1u, 0u, 1u), 0u), all(vec3<bool>(arg_2.a, false, false)), true, all(vec3<bool>(true, false, true)))), select(~select(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(5702u, 8269u, 1u, 25893u), vec4<bool>(false, false, true, true)), ~vec4<u32>(1u, 1u, 1u, 1u), false) & vec4<u32>(~abs(31842u), min(1u, max(86961u, 4294967295u)), ~_wgslsmith_mult_u32(49701u, 20023u), ~abs(0u)));
    var var_1 = Struct_5(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(13476i, -36478i)), 1i, u_input.a), Struct_4(var_0, -47986i, _wgslsmith_f_op_f32(f32(-1f) * -863f), reverseBits(abs(vec4<i32>(32514i, 2147483647i, 14505i, u_input.a))), vec4<u32>(43132u, ~countOneBits(0u), 12156u, 36032u)), all(var_0.c.a.zz), vec2<bool>(true, !all(!vec4<bool>(false, var_0.a.a.x, true, arg_2.a))));
    let var_2 = ~var_0.d.x;
    let var_3 = var_0.a.a.wy;
    let var_4 = vec3<bool>(-_wgslsmith_add_i32(min(u_input.a, 0i), var_1.a) > _wgslsmith_dot_vec2_i32(~var_1.b.d.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, 0i), var_1.b.d.yw))), !(u_input.a >= 200i), var_1.b.a.b.a.x);
    return var_1.b.a.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(15269u), 4294967295u, 1u, 1u << ((150u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 1u, 10421u, 1u)) % 32u)) % 32u)), ~(~vec4<u32>(1u, ~45060u, ~43345u, ~149353u)));
    var var_1 = Struct_5(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(19697i, u_input.a), vec2<i32>(0i, -10080i))), vec2<i32>(57100i, u_input.a)), 19810i), Struct_4(Struct_2(func_2(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -296f), Struct_3(arg_0.x)), func_2(-574f, _wgslsmith_f_op_f32(round(arg_1.x)), Struct_3(true)), func_2(451f, arg_1.x, Struct_3(arg_0.x)), max(~vec4<u32>(27124u, var_0.x, var_0.x, 21459u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 42332u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u)))), u_input.a, arg_1.x, vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(39659i, 1i, u_input.a), vec3<i32>(2147483647i, -2147483647i, u_input.a)), -u_input.a, u_input.a), ~(~(~vec4<u32>(64149u, 1u, 109537u, 0u)))), false, !vec2<bool>(true, func_2(_wgslsmith_f_op_f32(max(-1681f, 871f)), _wgslsmith_f_op_f32(-arg_1.x), Struct_3(true)).a.x));
    let var_2 = Struct_3(true);
    let var_3 = ~_wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_mult_i32(var_1.b.b, -1i), countOneBits(select(u_input.a, var_1.a, false)), _wgslsmith_add_i32(u_input.a, 0i) >> (~77742u % 32u), 0i), vec4<i32>(-1i) * -vec4<i32>(0i, -10797i, -1i, 14583i));
    let var_4 = var_1.b.a.a;
    return !var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(func_1(vec4<bool>(true, false, false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -874f, -643f))), func_1(func_1(vec4<bool>(true, true, true, true), vec4<f32>(388f, 1140f, -1000f, -158f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 448f, 147f, -740f))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), vec4<bool>(all(vec3<bool>(false, false, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), any(vec3<bool>(true, true, false)), !(-2147483647i > u_input.a)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-154f, 185f))), -413f, Struct_3(true)).a.x);
    let var_1 = _wgslsmith_clamp_i32(u_input.a, u_input.a, ((_wgslsmith_clamp_i32(1i, u_input.a, -2147483647i) ^ -u_input.a) & -max(14676i, 2147483647i)) ^ 1i);
    var_0 = vec4<bool>(func_1(!func_1(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<f32>(2016f, 289f, -1538f, 121f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-847f, -720f, -687f, -461f), vec4<f32>(-429f, 1439f, 1432f, 367f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2087f, 922f, -849f, -750f)))))).x, var_0.x, true, select(!all(!vec4<bool>(var_0.x, var_0.x, false, false)), true, true));
    var var_2 = Struct_5(1i, Struct_4(Struct_2(Struct_1(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), var_0.x)), Struct_1(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, true, var_0.x, var_0.x), var_0.x)), func_2(-2264f, _wgslsmith_div_f32(-1000f, -385f), Struct_3(false)), ~(~vec4<u32>(55589u, 5980u, 1u, 69625u))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-170f, -316f, var_0.x)) - _wgslsmith_f_op_f32(step(-1000f, -789f)))), select(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -13314i, u_input.a, 1i), vec4<i32>(var_1, 14626i, 1i, 2147483647i)), firstLeadingBit(vec4<i32>(-1272i, var_1, u_input.a, -36961i)), func_1(func_2(-148f, -243f, Struct_3(true)).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1098f, -228f, -396f, 1450f)))), ~(~min(vec4<u32>(27427u, 75542u, 63208u, 12982u), vec4<u32>(13530u, 100299u, 13646u, 0u)))), false, !var_0.wy);
    var var_3 = Struct_5(-1i, Struct_4(Struct_2(func_2(_wgslsmith_f_op_f32(var_2.b.c + -354f), _wgslsmith_f_op_f32(step(322f, var_2.b.c)), Struct_3(var_0.x)), var_2.b.a.b, Struct_1(vec4<bool>(false, var_0.x, true, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.b.e.x, 36356u, 1u), vec4<u32>(var_2.b.e.x, var_2.b.a.d.x, 19519u, var_2.b.e.x)) & vec4<u32>(4294967295u, 23308u, var_2.b.a.d.x, 63420u)), _wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_f_op_f32(trunc(var_2.b.c)), _wgslsmith_mod_vec4_i32(var_2.b.d, var_2.b.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.b.e.x, 6946u, 93152u, 4294967295u) & select(vec4<u32>(1u, var_2.b.a.d.x, var_2.b.a.d.x, var_2.b.a.d.x), var_2.b.a.d, var_2.b.a.b.a), vec4<u32>(var_2.b.a.d.x, max(4294967295u, 20778u), var_2.b.a.d.x, var_2.b.e.x), vec4<u32>(~14508u, _wgslsmith_dot_vec4_u32(var_2.b.a.d, vec4<u32>(var_2.b.a.d.x, 38769u, var_2.b.a.d.x, 67562u)), ~var_2.b.a.d.x, var_2.b.a.d.x))), var_0.x, !vec2<bool>(firstLeadingBit(var_1) == 1322i, all(vec2<bool>(false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(var_3.b.d.xww, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, 12582i), 21030i, u_input.a), abs(var_2.b.d.yzy))), vec4<f32>(_wgslsmith_f_op_f32(var_2.b.c - -1533f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b.c * -349f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b.c)) + -231f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b.c, -526f) - var_3.b.c) + -174f), -1000f), min(_wgslsmith_clamp_i32(var_2.a >> (var_3.b.a.d.x % 32u), var_2.b.b, max(3003i, _wgslsmith_dot_vec3_i32(vec3<i32>(-9362i, -31927i, -12579i), vec3<i32>(var_1, 2147483647i, -6709i)))), abs(96122i) | abs(var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(126f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_3.b.c))))) * var_3.b.c), ~var_2.b.e.zyy);
}

