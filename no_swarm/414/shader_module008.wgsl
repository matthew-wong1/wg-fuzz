struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = min(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, arg_1.x, arg_0.x, arg_0.x) << (vec4<u32>(1u, u_input.b, 4294967295u, arg_2.x) % vec4<u32>(32u))) & vec4<i32>(arg_0.x >> (arg_2.x % 32u), countOneBits(-1i), select(2147483647i, -461i, false), ~(-1i)), min(vec4<i32>(-arg_1.x, _wgslsmith_add_i32(0i, arg_0.x), _wgslsmith_mod_i32(-1i, arg_0.x), -41351i), -(vec4<i32>(18145i, arg_1.x, arg_0.x, -1i) << (vec4<u32>(17604u, arg_2.x, arg_2.x, u_input.b) % vec4<u32>(32u))))), arg_0.x);
    var_0 = arg_0.x & arg_1.x;
    let var_1 = Struct_3(Struct_2(arg_2.x), Struct_2(~select(~4294967295u, ~u_input.a, false)), firstTrailingBit(vec2<i32>(1i, (arg_0.x | arg_1.x) | 0i)), Struct_1(arg_0.wwx, _wgslsmith_dot_vec3_i32(max(abs(vec3<i32>(-2147483647i, -1i, -2147483647i)), arg_0.zzx), arg_0.wyz), max(max(abs(arg_2), _wgslsmith_clamp_vec2_u32(arg_2, arg_2, arg_2)), vec2<u32>(u_input.b << (arg_2.x % 32u), u_input.a)), arg_0.zxz, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f))));
    var var_2 = abs(i32(-1i) * -1i);
    var_0 = min(select(_wgslsmith_sub_i32(var_1.c.x, 0i), _wgslsmith_dot_vec4_i32(~vec4<i32>(18067i, var_1.d.d.x, arg_1.x, arg_1.x), firstLeadingBit(arg_0)), any(vec2<bool>(true, true))) << (_wgslsmith_mod_u32(~(~44182u), max(~arg_2.x, 0u)) % 32u), -var_1.c.x);
    return select(~select(~abs(vec2<u32>(32136u, 33557u)), min(max(vec2<u32>(43110u, 1u), var_1.d.c), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(1u, 8887u))), true), arg_2, !any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), select(true, false, false))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-1000f * 472f);
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(~(-vec3<i32>(arg_0, -2147483647i, 80200i)), vec3<i32>(-arg_0, -reverseBits(arg_0), -arg_0)), arg_0, ~func_3(~vec4<i32>(arg_0, -1i, -2147483647i, arg_0), ~(vec2<i32>(arg_0, -2147483647i) >> (vec2<u32>(u_input.a, arg_2.x) % vec2<u32>(32u))), ~(vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(26817u, 1u))), countOneBits(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(0i, 2147483647i, 2147483647i)), vec3<i32>(-27457i, 2147483647i, arg_0) | ~vec3<i32>(arg_0, arg_0, 1i), vec3<i32>(arg_0, -8545i, arg_0) << (~vec3<u32>(84531u, arg_2.x, arg_2.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + arg_3.x))));
    let var_2 = var_1;
    let var_3 = ~(-(~reverseBits(_wgslsmith_mod_i32(var_2.b, var_1.d.x))));
    let var_4 = !(!select(vec3<bool>(arg_2.x < 34284u, false, false), select(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_1.x, false, false)), vec3<bool>(!arg_1.x, true, false)));
    return func_3(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2.b, var_2.d.x), -arg_0), i32(-1i) * -2147483647i, i32(-1i) * -1i, -1i), -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_3, 2147483647i, arg_0), max(vec4<i32>(var_1.b, 51996i, var_1.d.x, -1i), vec4<i32>(var_1.d.x, 1i, var_1.d.x, var_2.b)))), ~firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(14917i, -1i)), vec2<u32>(max(u_input.b, ~select(44904u, 19101u, true)), abs(_wgslsmith_div_u32(~75257u, ~var_2.c.x)))).x;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_2(~24075u);
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(u_input.a) ^ ~0u, 1u, u_input.b), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_0.a, var_0.a) | vec3<u32>(var_0.a, u_input.b, 43542u)) & vec3<u32>(_wgslsmith_clamp_u32(var_0.a, 1u, var_0.a), 50467u, 42240u), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_0.a, var_0.a), vec3<u32>(u_input.a, 78957u, 79119u)) | ~vec3<u32>(u_input.b, 0u, u_input.b))));
    var_0 = Struct_2(~(~(~func_2(-2147483647i, vec2<bool>(true, true), vec2<u32>(var_0.a, var_1.x), vec2<f32>(-241f, arg_0)))));
    var_1 = ~_wgslsmith_clamp_vec3_u32(select(~vec3<u32>(var_1.x, var_1.x, var_1.x), ~vec3<u32>(38029u, var_1.x, u_input.a) | min(vec3<u32>(55123u, u_input.a, var_0.a), vec3<u32>(var_1.x, var_0.a, 4294967295u)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), _wgslsmith_clamp_vec3_u32((vec3<u32>(1468u, 1u, var_1.x) ^ vec3<u32>(30502u, var_0.a, u_input.a)) ^ firstTrailingBit(vec3<u32>(86220u, var_0.a, 3742u)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, var_0.a, u_input.a), vec3<u32>(var_0.a, 0u, u_input.a), vec3<u32>(4294967295u, 43353u, u_input.b)), vec3<u32>(0u, u_input.a, 43346u), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), ~max(vec3<u32>(64574u, 4294967295u, var_1.x), vec3<u32>(var_1.x, var_0.a, 24618u))), vec3<u32>(_wgslsmith_add_u32(54178u, u_input.b) << (var_0.a % 32u), _wgslsmith_clamp_u32(firstTrailingBit(1u), var_0.a & u_input.a, ~1u), 0u));
    var_1 = _wgslsmith_div_vec3_u32(select(select(vec3<u32>(u_input.b, ~var_1.x, 52648u), vec3<u32>(var_0.a, var_1.x, var_0.a) & vec3<u32>(u_input.b, u_input.a, 4294967295u), vec3<bool>(true, true, true)), vec3<u32>(4294967295u, 10888u, var_1.x), vec3<bool>(all(vec3<bool>(true, true, true)), true, select(true, false, true) && true)), ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(16381u, var_0.a, var_0.a), vec3<u32>(var_0.a, u_input.b, 0u), vec3<u32>(u_input.a, 0u, 4294967295u))) | reverseBits(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(u_input.b, 0u, var_0.a)), vec3<u32>(4294967295u, u_input.b, 878u))));
    return Struct_2(min(max(1u, abs(var_1.x)) | ~46899u, u_input.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = 237f;
    var var_1 = vec2<f32>(1f, 1f);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1294f, var_1.x, -696f) + vec3<f32>(var_1.x, var_1.x, 871f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, 663f, -649f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(380f, var_1.x, var_1.x), vec3<f32>(var_1.x, 998f, var_1.x)))), !select(true, false, true))))));
    var var_3 = Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 67485u) >> (arg_0.yz % vec2<u32>(32u)), ~arg_0.yz), ~(~arg_0.xz)), _wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(arg_1.a, _wgslsmith_sub_u32(arg_0.x, 14470u)))));
    let var_4 = vec3<i32>(-14155i, -1i, 5192i);
    return _wgslsmith_add_u32(0u, ~(~var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(~func_4(vec3<u32>(46713u, u_input.b, u_input.b), Struct_2(43856u), func_1(-706f))), Struct_2(4294967295u), max(_wgslsmith_add_vec2_i32(~vec2<i32>(1i, 1i), reverseBits(-vec2<i32>(13869i, 0i))), abs(vec2<i32>(-1i) * -vec2<i32>(1i, 21244i))), Struct_1(vec3<i32>(~_wgslsmith_add_i32(-5009i, 0i), ~(-2147483647i), _wgslsmith_mod_i32(reverseBits(5899i), abs(54882i))), _wgslsmith_mod_i32(countOneBits(max(0i, -12269i)), i32(-1i) * -2147483647i), select(vec2<u32>(u_input.b, u_input.a) & vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(4294967295u, 1u) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), true), vec3<i32>(1i, 1i, 1i), 1130f));
    var var_1 = -26062i;
    var_1 = abs(~0i);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-599f + var_0.d.e), var_0.d.e, var_0.d.e, 641f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.e, var_0.d.e, -178f, -1435f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.d.e, var_0.d.e, var_0.d.e, -404f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-490f, var_0.d.e, -146f, var_0.d.e)))))));
    var var_3 = var_0.d;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.e, var_0.d.e))))) * var_2.wz);
    let x = u_input.a;
    s_output = StorageBuffer(23220u, _wgslsmith_f_op_f32(round(1598f)), var_3.c.x, _wgslsmith_mult_u32(var_3.c.x, 25919u ^ abs(var_0.a.a << (13856u % 32u))), ~(abs(vec3<u32>(u_input.b, var_3.c.x, 24805u)) << (countOneBits(vec3<u32>(var_3.c.x, 87026u, 0u)) % vec3<u32>(32u))) << (firstLeadingBit(vec3<u32>(1u, ~4294967295u, ~30559u)) % vec3<u32>(32u)));
}

