struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<i32> {
    let var_0 = max(~vec4<u32>(abs(14588u | u_input.a), 37048u, _wgslsmith_mod_u32(75285u, ~u_input.b), _wgslsmith_mult_u32(u_input.b, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, _wgslsmith_sub_u32(0u, max(u_input.d, 74091u)), ~min(u_input.b, u_input.c.x)), ~vec4<u32>(abs(4309u), 0u, u_input.c.x, ~66423u)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-230f)) - _wgslsmith_f_op_f32(f32(-1f) * -124f)))), ~(~(~(var_0.x << (1u % 32u)))), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(false, false, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, true, true))), Struct_1(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), -1i);
    var var_2 = ~_wgslsmith_mod_u32(26423u, _wgslsmith_mult_u32(select(~22830u, 63u, any(vec3<bool>(false, var_1.d.a.x, false))), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 139629u))));
    var_2 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 0u, 5652u), vec3<u32>(u_input.c.x, var_0.x, var_1.b)), var_0.yww), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_0.x), var_0.x, var_0.x, var_0.x), ~vec4<u32>(90122u, 4294967295u, 60403u, 0u) << (~vec4<u32>(u_input.d, u_input.d, 56630u, 5844u) % vec4<u32>(32u))));
    var_2 = ~(~(~_wgslsmith_div_u32(var_0.x, var_1.b)));
    return vec4<i32>(1i, 32098i, var_1.e, var_1.e);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    let var_0 = arg_1;
    let var_1 = Struct_4(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.a, 4294967295u)), ~u_input.c), u_input.c), u_input.c, u_input.c));
    var var_2 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(func_3(), select(vec4<i32>(arg_0, arg_0, 47596i, arg_0), vec4<i32>(arg_0, arg_0, 47338i, arg_0), var_0.a.x)), abs(-2147483647i), countOneBits(countOneBits(arg_0))), ~(-vec3<i32>(arg_0, arg_0, arg_0)) << (select(abs(vec3<u32>(u_input.b, var_1.a.x, 24460u)), ~vec3<u32>(u_input.a, u_input.a, 32479u), true) % vec3<u32>(32u)));
    let var_3 = (4294967295u >> (firstTrailingBit(var_1.a.x) % 32u)) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, u_input.d, var_1.a.x)), vec3<u32>(46689u, var_1.a.x, u_input.b) | _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, 10905u, 7227u), vec3<u32>(u_input.a, 1u, u_input.d))), firstTrailingBit((23622u | u_input.b) << (abs(20756u) % 32u))) % 32u);
    let var_4 = ~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(min(var_1.a.x, 0u), _wgslsmith_sub_u32(u_input.b, var_3)), ~vec2<u32>(u_input.d, 59008u)));
    return ~max(vec3<u32>(var_3, ~var_4.x, firstTrailingBit(~u_input.b)), ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, var_1.a.x, 689u)), select(vec3<u32>(0u, u_input.a, 17178u), vec3<u32>(var_3, var_4.x, u_input.a), vec3<bool>(true, true, var_0.a.x)), vec3<u32>(0u, 3323u, 0u) | vec3<u32>(var_3, 85388u, var_4.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> f32 {
    let var_0 = arg_0.a.yxw;
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-49817i, 7928i) << (vec2<u32>(arg_3, u_input.d) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(-15778i, 0i)) << ((arg_2 << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(-firstTrailingBit(vec2<i32>(74174i, -27686i)), vec2<i32>(-1i >> (arg_3 % 32u), -29596i)), reverseBits(~vec2<i32>(1i, 1i))));
    var var_2 = _wgslsmith_sub_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 8250u, u_input.c.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(24464u, arg_2.x, u_input.b), vec3<u32>(u_input.b, u_input.b, arg_3)) % vec3<u32>(32u)), ~max(vec3<u32>(u_input.a, 71926u, arg_3), vec3<u32>(u_input.a, u_input.d, u_input.b))), vec3<u32>(arg_2.x ^ ~arg_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3, u_input.d, u_input.c.x, arg_3), vec4<u32>(1u, 4294967295u, u_input.b, 0u)), _wgslsmith_dot_vec3_u32(func_2(var_1.x, Struct_1(vec4<bool>(false, arg_1, arg_0.a.x, false)), arg_0, -514f), _wgslsmith_mod_vec3_u32(vec3<u32>(38434u, 0u, 44166u), vec3<u32>(4824u, u_input.b, 14792u)))), true), firstLeadingBit(~select(vec3<u32>(10148u, u_input.a, arg_3), vec3<u32>(arg_3, 45219u, 2607u), vec3<bool>(arg_1, arg_1, true))) & ~vec3<u32>(_wgslsmith_mult_u32(2963u, arg_2.x), 94761u, ~arg_2.x));
    var_2 = vec3<u32>(18012u, countOneBits(u_input.d), var_2.x);
    var_2 = vec3<u32>(arg_2.x, 4294967295u, 0u) ^ _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_3, 44946u, arg_2.x) ^ vec3<u32>(0u, arg_2.x, 1u)), vec3<u32>(var_2.x, max(0u, u_input.a), 1u)), abs(~(vec3<u32>(u_input.d, u_input.d, 83256u) >> (vec3<u32>(1u, arg_3, arg_3) % vec3<u32>(32u)))));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(225f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1682f)))), -1036f, _wgslsmith_f_op_f32(func_1(Struct_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false))), any(vec2<bool>(true, false)), abs(vec2<u32>(u_input.c.x, u_input.a)), 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(select(1f, -1643f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1718f, 538f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(2260f, 980f))))), _wgslsmith_f_op_f32(select(-966f, -104f, all(vec3<bool>(true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1605f, -130f, false)), -357f)), select(!vec4<bool>(true, true, true, any(vec2<bool>(false, true))), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(false, true, false, true), any(vec2<bool>(false, true))), vec4<bool>(any(vec2<bool>(false, false)), select(false, false, false), any(vec3<bool>(false, false, true)), false), vec4<bool>(true, false, select(true, true, true), false)), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_2(-1367f, _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.c.x, u_input.c.x), u_input.d), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true))), -(i32(-1i) * -13524i));
    let var_2 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(min(1u, 1u), 15691u, var_1.b, var_1.b), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b, u_input.d, var_1.b, 11653u), vec4<u32>(4294967295u, var_1.b, 15681u, u_input.c.x), vec4<u32>(0u, u_input.a, 0u, 38691u)), var_1.d.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -25813i, 2147483647i), ~37111i, _wgslsmith_div_i32(-1i, 2147483647i), -2147483647i), -((vec4<i32>(var_1.e, var_1.e, var_1.e, 0i) ^ vec4<i32>(var_1.e, 1i, var_1.e, var_1.e)) ^ reverseBits(vec4<i32>(16457i, -13122i, var_1.e, -46919i)))));
}

