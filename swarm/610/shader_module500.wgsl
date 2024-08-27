struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    let var_0 = i32(-1i) * -15633i;
    var var_1 = select((33066u >> ((4294967295u ^ u_input.c) % 32u)) | _wgslsmith_sub_u32(~u_input.c, u_input.c), u_input.c, false) | _wgslsmith_mult_u32(~u_input.c, u_input.c);
    var_1 = reverseBits(u_input.c);
    var_1 = u_input.c | u_input.c;
    var_1 = 29216u;
    return _wgslsmith_mod_vec2_u32(abs(select(firstTrailingBit(vec2<u32>(1u, 42413u)), _wgslsmith_mult_vec2_u32(vec2<u32>(65433u, 4294967295u), vec2<u32>(u_input.c, 57898u)), true) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 19637u)) % vec2<u32>(32u))), ~_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c), true), vec2<u32>(u_input.c, 57146u)) ^ (select(vec2<u32>(7196u, 1u), vec2<u32>(8438u, 60636u) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), true) << (vec2<u32>(abs(u_input.c), 77768u ^ u_input.c) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1801f + 1000f))))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1618f) - _wgslsmith_f_op_f32(select(602f, -233f, true))))), _wgslsmith_f_op_f32(1372f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(378f + -363f) + 1138f))));
    var var_1 = ~func_3();
    var var_2 = firstTrailingBit(arg_0.yz);
    var_1 = ~arg_0.xz;
    var var_3 = arg_0;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = vec4<u32>(u_input.c, 15960u, 68227u, countOneBits(1u) ^ u_input.c);
    var var_2 = select(vec4<bool>(true, any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), all(vec2<bool>(true, false)))), true, true), select(select(vec4<bool>(true, 23846u <= u_input.c, func_2(var_1, false), -1i < u_input.a.x), vec4<bool>(true, true, true, true), func_2(var_1, true)), vec4<bool>(true, true, true, false), vec4<bool>(func_2(var_1, true), select(all(vec4<bool>(false, true, false, false)), u_input.c >= 48805u, true), true, false)), !(!(true && select(false, true, true))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(259f, -2030f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-947f * 295f), _wgslsmith_div_f32(517f, 671f))) - 1948f))), vec3<i32>(50883i, -6954i, _wgslsmith_mod_i32(-1i, u_input.b.x) << (u_input.c % 32u)), -1266f);
    var var_4 = Struct_2(var_3.a, -514f, select(countOneBits(abs(~vec3<i32>(var_3.c.x, -5107i, 11988i))), firstLeadingBit(vec3<i32>(-u_input.b.x, ~19377i, u_input.a.x)), true && all(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -402f))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(701f + var_3.b), _wgslsmith_f_op_f32(abs(var_4.d))))) - vec2<f32>(_wgslsmith_f_op_f32(-var_4.d), var_4.a.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 47520u) & vec4<u32>(u_input.c, u_input.c, 29362u, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)), ~firstLeadingBit(u_input.c), u_input.c), vec3<u32>(max(~4294967295u, 4294967295u << (u_input.c % 32u)), u_input.c, 1u), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c))) ^ ~(~vec3<u32>(20447u, 1u, 14817u))), vec3<u32>(~_wgslsmith_mod_u32(u_input.c, _wgslsmith_mod_u32(u_input.c, 4294967295u)), _wgslsmith_add_u32(8683u, u_input.c) >> (u_input.c % 32u), ~u_input.c));
    var var_1 = arg_2;
    let var_2 = var_0.zx;
    var var_3 = ~(-min(arg_2.c.x, _wgslsmith_sub_i32(abs(0i), -35518i)));
    var_3 = abs(~(~1i));
    return func_1();
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(func_1(), arg_0.a.x, _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(u_input.b.x, -3441i, u_input.a.x) | firstLeadingBit(vec3<i32>(u_input.b.x, 64434i, 1i))), u_input.b.zwx, -(u_input.a | -u_input.a)), _wgslsmith_f_op_f32(floor(func_1().a.x)));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, _wgslsmith_mod_u32(1u, ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(66336u, u_input.c)) ^ 4294967295u, u_input.c >> (firstLeadingBit(18628u) % 32u)), _wgslsmith_div_vec4_u32(~min(vec4<u32>(39623u, 27680u, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)) & vec4<u32>(_wgslsmith_mod_u32(707u, u_input.c), _wgslsmith_sub_u32(u_input.c, 33988u), firstTrailingBit(u_input.c), u_input.c), ~(~vec4<u32>(u_input.c, 42909u, 29865u, u_input.c) | max(vec4<u32>(u_input.c, u_input.c, 81267u, u_input.c), vec4<u32>(1u, u_input.c, 4294967295u, u_input.c)))));
    let var_3 = any(select(vec2<bool>(false, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)))), vec2<bool>(all(vec2<bool>(true, true)), true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), any(vec4<bool>(true, true, false, true))))));
    var var_4 = var_3;
    return firstLeadingBit(~abs(_wgslsmith_mult_u32(4294967295u, u_input.c)));
}

fn func_6(arg_0: u32) -> StorageBuffer {
    let var_0 = all(vec2<bool>(true, true));
    let var_1 = false;
    var var_2 = func_4(func_4(Struct_1(vec2<f32>(-325f, -666f)), func_4(func_1(), func_4(func_4(Struct_1(vec2<f32>(798f, -1826f)), Struct_1(vec2<f32>(-469f, -1880f)), Struct_2(Struct_1(vec2<f32>(-504f, 1589f)), -1898f, u_input.a, 932f)), func_4(Struct_1(vec2<f32>(2017f, -2179f)), Struct_1(vec2<f32>(-1544f, 542f)), Struct_2(Struct_1(vec2<f32>(1370f, -2122f)), -203f, vec3<i32>(-1i, -37267i, -14171i), -682f)), Struct_2(Struct_1(vec2<f32>(-1134f, -1161f)), 2978f, vec3<i32>(16981i, -15053i, -1i), -1192f)), Struct_2(Struct_1(vec2<f32>(-341f, -904f)), -1017f, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.b.xzz), 886f)), Struct_2(func_1(), 1f, _wgslsmith_add_vec3_i32(abs(u_input.a), u_input.a ^ vec3<i32>(u_input.a.x, -18615i, u_input.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(635f, -723f))))), func_1(), Struct_2(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-574f - _wgslsmith_f_op_f32(f32(-1f) * -748f))), _wgslsmith_div_vec3_i32(vec3<i32>(1944i, i32(-1i) * -2147483647i, u_input.b.x), ~(~vec3<i32>(u_input.a.x, 10843i, u_input.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-850f)) + _wgslsmith_f_op_f32(1000f - -452f))))));
    var var_3 = ~((~vec2<i32>(u_input.b.x, 1i) ^ vec2<i32>(2623i, u_input.a.x)) & (vec2<i32>(0i, u_input.b.x) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))) & select(vec2<i32>((u_input.b.x & u_input.b.x) << (arg_0 % 32u), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b) & -u_input.b.x), u_input.b.yx, vec2<bool>(var_1, all(vec3<bool>(false, var_0, var_0))));
    let var_4 = vec3<bool>(var_1, !(~_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 0i) >= max(u_input.b.x, var_3.x & 8033i)), all(select(vec2<bool>(select(true, var_1, var_0), var_1), vec2<bool>(false, true), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_0, var_1), false), select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, false)), vec2<bool>(var_0, false)))));
    return StorageBuffer(_wgslsmith_f_op_f32(-1729f + _wgslsmith_f_op_f32(-var_2.a.x)), 4294967295u, _wgslsmith_f_op_f32(-330f - func_1().a.x), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(var_3.x | u_input.b.x, u_input.b.x | u_input.a.x, ~0i, ~var_3.x)), -_wgslsmith_div_vec4_i32(countOneBits(u_input.b), u_input.b)), select(min(vec4<i32>(u_input.a.x, u_input.b.x ^ var_3.x, _wgslsmith_mult_i32(-1i, -51213i), max(-2147483647i, 8735i)), vec4<i32>(-13186i, -1i, 1i, 27190i) >> (vec4<u32>(arg_0, 1u, arg_0, 0u) % vec4<u32>(32u))), ~(~vec4<i32>(var_3.x, var_3.x, -1i, 10823i)) << (vec4<u32>(0u, ~1u, ~40778u, _wgslsmith_dot_vec3_u32(vec3<u32>(71567u, arg_0, 4294967295u), vec3<u32>(4294967295u, u_input.c, u_input.c))) % vec4<u32>(32u)), !select(!vec4<bool>(var_1, true, true, var_0), select(vec4<bool>(false, var_4.x, var_0, var_0), vec4<bool>(true, var_4.x, true, true), var_0), vec4<bool>(true, var_1, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(select(1u & _wgslsmith_div_u32(u_input.c, ~20740u), func_5(func_4(Struct_1(vec2<f32>(-341f, -772f)), func_1(), Struct_2(Struct_1(vec2<f32>(-406f, 611f)), 398f, vec3<i32>(-14389i, 0i, 2147483647i), -966f))), true));
}

