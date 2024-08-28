struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    let var_0 = arg_1.x;
    var var_1 = Struct_4(arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(588f, 653f)))) * vec2<f32>(-580f, -227f)), _wgslsmith_mult_vec3_u32(~min(vec3<u32>(arg_0, arg_0, u_input.a), vec3<u32>(4294967295u, arg_0, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, arg_0, 54171u), vec3<u32>(624u, 1u, arg_0) & vec3<u32>(0u, 1u, arg_0), vec3<u32>(27992u, 0u, 18092u))), u_input.a, vec3<i32>(select(1i, 20330i, all(vec3<bool>(true, true, false))), firstTrailingBit(_wgslsmith_div_i32(5282i, -26782i)), 70397i)));
    var_1 = Struct_4(~1u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-198f, 473f)) * 1000f), 564f), var_1.b.b, 4294967295u << (_wgslsmith_clamp_u32(56574u, min(0u, 4294967295u), ~var_1.a) % 32u), var_1.b.d));
    let var_2 = Struct_2(_wgslsmith_sub_vec3_u32(~(~var_1.b.b), firstLeadingBit(~vec3<u32>(var_1.a, u_input.a, arg_0))), var_1.b);
    var var_3 = var_2.a.x;
    return _wgslsmith_f_op_f32(select(var_1.b.a.x, _wgslsmith_f_op_f32(var_2.b.a.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_1.b.a.x))))), var_0));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> vec2<u32> {
    let var_0 = vec4<u32>(min(~4294967295u, _wgslsmith_dot_vec3_u32(~(arg_0.b.b << (arg_0.b.b % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.c, arg_0.b.b.x, 4294967295u), arg_0.b.b), ~u_input.a, 4294967295u))), 0u, u_input.a, _wgslsmith_div_u32(arg_0.b.b.x, u_input.a));
    let var_1 = any(vec4<bool>(true, true, true, true));
    var var_2 = 27661i;
    return min(arg_0.b.b.yz, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.b.b.zz, vec2<u32>(0u, var_0.x)), var_0.ww, var_0.yw), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.c, 52573u), vec2<u32>(67127u, 1u)) | ~vec2<u32>(arg_0.b.b.x, 1u)), vec2<u32>(~max(60740u, u_input.a), 1u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_3 {
    var var_0 = vec2<u32>(1u, u_input.a) & func_4(Struct_4(u_input.a, Struct_1(arg_1, arg_0.b.b << (vec3<u32>(95034u, u_input.a, u_input.a) % vec3<u32>(32u)), u_input.a >> (arg_0.a % 32u), arg_2)), _wgslsmith_f_op_f32(func_3(31177u, vec4<bool>(!arg_3, arg_0.b.a.x >= -1976f, true, arg_3))));
    let var_1 = Struct_3(Struct_2(~(~(arg_0.b.b | vec3<u32>(var_0.x, u_input.a, var_0.x))), Struct_1(arg_1, countOneBits(~arg_0.b.b), 1u, vec3<i32>(arg_2.x, 1i, countOneBits(1i)))));
    var_0 = arg_0.b.b.xy;
    var var_2 = vec3<u32>(4294967295u, ~(~4294967295u), 39723u);
    var var_3 = -1150f;
    return Struct_3(var_1.a);
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    var var_0 = !(!vec2<bool>(!(arg_0.a.b.d.x > 2147483647i), true & (919f != arg_0.a.b.a.x)));
    let var_1 = vec3<i32>(-countOneBits(select(abs(arg_0.a.b.d.x), ~(-1026i), false)), firstTrailingBit(select(28085i, select(10530i, arg_0.a.b.d.x, any(vec3<bool>(true, var_0.x, false))), var_0.x)), _wgslsmith_add_i32(23441i, arg_0.a.b.d.x));
    var var_2 = Struct_2(~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(arg_0.a.a.x, arg_0.a.b.b.x, arg_0.a.a.x)), countOneBits(arg_0.a.a)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.a.x, 0u, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(37387u, arg_0.a.a.x, u_input.a), func_2(Struct_4(arg_0.a.b.b.x, arg_0.a.b), vec2<f32>(1317f, -3172f), arg_0.a.b.d, true).a.b.b)), arg_0.a.b);
    var var_3 = -19344i;
    var var_4 = arg_0.a.b;
    return Struct_4(9875u, var_2.b);
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0.b.a;
    var var_1 = arg_0.b.d.x << (min(21872u, ~14158u) % 32u);
    let var_2 = vec3<bool>(select(func_5(Struct_3(Struct_2(arg_2, arg_0.b))).b.a.x > arg_0.b.a.x, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), all(vec4<bool>(true, true, false, true))) & false, true, true);
    var_1 = firstTrailingBit(3171i);
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.b.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.b.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-165f, var_0.x), vec2<f32>(arg_0.b.a.x, -275f), vec2<bool>(true, var_2.x))), vec2<f32>(-1895f, -1715f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 1023f))), -928f)), (~(~arg_2) ^ abs(arg_0.b.b)) << (arg_2 % vec3<u32>(32u)), 4294967295u, arg_0.b.d);
}

fn func_1() -> Struct_1 {
    var var_0 = func_6(func_5(func_2(Struct_4(9020u, Struct_1(vec2<f32>(-109f, -546f), vec3<u32>(50122u, u_input.a, 6722u), 23661u, vec3<i32>(-24272i, -37957i, -1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1308f, -1591f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(587f, 585f))), -(~vec3<i32>(-2147483647i, -25812i, -15198i)), true)), -14951i, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 62672u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), func_4(func_5(Struct_3(Struct_2(vec3<u32>(19252u, u_input.a, u_input.a), Struct_1(vec2<f32>(2422f, 510f), vec3<u32>(4294967295u, u_input.a, u_input.a), u_input.a, vec3<i32>(7093i, 32984i, -1i))))), _wgslsmith_f_op_f32(1000f - -291f)).x), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 0u, 41546u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(1u, 0u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(u_input.a, 40908u, 24555u)), vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a, 0u), ~u_input.a))));
    let var_1 = vec3<bool>(!(!(true != select(true, true, true))), false, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var_0 = func_5(Struct_3(Struct_2(reverseBits(select(vec3<u32>(29066u, 61045u, u_input.a), var_0.b, vec3<bool>(true, var_1.x, var_1.x))), Struct_1(var_0.a, ~vec3<u32>(0u, 3644u, var_0.b.x), countOneBits(17722u), vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x))))).b;
    let var_2 = func_2(func_5(func_2(Struct_4(~4294967295u, func_6(Struct_4(var_0.b.x, Struct_1(var_0.a, vec3<u32>(var_0.c, u_input.a, 36094u), 22231u, vec3<i32>(-12725i, 0i, var_0.d.x))), var_0.d.x, vec3<u32>(u_input.a, var_0.c, 44679u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.a))), firstLeadingBit(~vec3<i32>(1i, var_0.d.x, var_0.d.x)), all(vec3<bool>(var_1.x, var_1.x, true)))), var_0.a, var_0.d, var_1.x);
    return var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_4(~0u << ((~u_input.a >> (54816u % 32u)) % 32u), func_1());
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.a) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.b.a)))))), vec3<u32>(var_1.a, _wgslsmith_div_u32(48200u, u_input.a), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 1u, 65099u, var_1.a)), ~vec4<u32>(u_input.a, 35016u, 38915u, var_1.b.b.x))), _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(4294967295u, var_1.a)), ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(1u, var_1.b.c))), -var_1.b.d ^ ~var_1.b.d);
    let var_3 = ~(-max(vec2<i32>(20312i, ~0i), _wgslsmith_sub_vec2_i32(vec2<i32>(-27664i, var_2.d.x), _wgslsmith_div_vec2_i32(var_2.d.zx, var_2.d.xx))));
    var_2 = Struct_1(_wgslsmith_div_vec2_f32(var_1.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a.x, var_2.a.x)))), ~var_1.b.b, ~_wgslsmith_mod_u32(u_input.a, (u_input.a ^ 0u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(27264u, var_1.b.b.x)) % 32u)), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b.xx, ~2147483647i, 51872u, -1537f, _wgslsmith_div_u32(1u, 35894u));
}

