struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = vec2<i32>(2147483647i, reverseBits(u_input.a));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-917f + -1267f), _wgslsmith_f_op_f32(f32(-1f) * -466f)))), Struct_1(max(0u, countOneBits(1u)), vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 19400u), vec3<u32>(0u, 1u, 43823u)), 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-425f, 814f, -1248f, 177f) + vec4<f32>(1394f, 2430f, 549f, 245f)))), ~max(vec3<i32>(4801i, var_0.x, -1i) & vec3<i32>(13182i, 19331i, var_0.x), min(vec3<i32>(var_0.x, 1i, 1043i), vec3<i32>(2147483647i, 0i, var_0.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(56682u), 4294967295u, 0u, 59866u), vec4<u32>(_wgslsmith_sub_u32(0u, 0u), 1u, ~11201u, ~4294967295u))));
    let var_2 = Struct_2(var_1.b.c.xz, var_1.b);
    var var_3 = _wgslsmith_f_op_f32(1000f - 1f);
    var_0 = vec2<i32>(~var_2.b.d.x, var_1.b.d.x);
    return ~_wgslsmith_mult_u32(~49841u << ((~var_2.b.e >> (var_2.b.a % 32u)) % 32u), ~51975u);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = abs(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(18590u, 71253u), arg_0.x), 0u, _wgslsmith_mod_u32(arg_1, 1u), firstTrailingBit(arg_0.x))) | min(~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1, arg_0.x, 1944u, arg_1), min(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 57327u), vec4<u32>(1u, 4294967295u, arg_1, 4294967295u))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_0.x, 14593u, 16091u, arg_1)), vec4<u32>(func_3(), arg_0.x >> (0u % 32u), 4737u >> (arg_1 % 32u), 0u)));
    var_0 = ~(~(~reverseBits(vec4<u32>(var_0.x, var_0.x, arg_0.x, arg_1)))) << ((_wgslsmith_add_vec4_u32((vec4<u32>(arg_1, 19146u, 0u, 66304u) ^ vec4<u32>(arg_1, var_0.x, arg_0.x, var_0.x)) | ~vec4<u32>(1u, arg_1, 16252u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, arg_1, 0u), ~vec4<u32>(var_0.x, 5094u, 33166u, 4294967295u))) & (vec4<u32>(4294967295u, ~arg_1, _wgslsmith_div_u32(6601u, 79518u), 4294967295u) >> (vec4<u32>(0u << (arg_0.x % 32u), 4294967295u ^ var_0.x, 2043u, ~56429u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(854f, _wgslsmith_f_op_f32(251f * -1000f))))), Struct_1(arg_1, abs(~(~vec2<u32>(0u, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(508f))), _wgslsmith_f_op_f32(f32(-1f) * -1375f), 187f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(340f + -106f), -819f))), vec3<i32>(_wgslsmith_mult_i32(~(-1i), -21980i), ~1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), firstLeadingBit(vec3<i32>(-1i, 1i, -18689i)))), abs(abs(var_0.x) >> (24181u % 32u))));
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x - 1211f), var_1.a.x), Struct_1(arg_1, arg_0, vec4<f32>(-1584f, var_1.a.x, _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1106f)))), -var_1.b.d, 45315u));
    var var_2 = !(!(!vec4<bool>(true, false, false, u_input.a > var_1.b.d.x)));
    return ~var_1.b.b.x;
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)) + arg_0.x), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1904f))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) - _wgslsmith_f_op_f32(arg_0.x - arg_0.x))))));
    let var_1 = vec2<bool>(func_2(select(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(89086u, 64779u)), ~vec2<u32>(4294967295u, 0u), vec2<bool>(true, true)), 49853u, u_input.a) == 1u, true);
    let var_2 = ~(~firstLeadingBit(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(23917u, 5669u, 1u), vec3<u32>(28802u, 21296u, 1u)), 33985u)));
    var var_3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, -348f))), _wgslsmith_f_op_vec2_f32(var_0.xz - vec2<f32>(1083f, arg_0.x)))), vec2<f32>(-1395f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(var_0.x * -864f)))), Struct_1(0u, ~_wgslsmith_div_vec2_u32(select(vec2<u32>(var_2.x, 30896u), var_2.zx, vec2<bool>(false, true)), vec2<u32>(var_2.x, var_2.x) | var_2.xx), vec4<f32>(-1034f, _wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * arg_0.x) * _wgslsmith_f_op_f32(select(1449f, arg_0.x, var_1.x)))), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, -40899i, -29508i), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a), vec3<i32>(40445i, u_input.a, u_input.a))) | _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.a, -11377i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2091i), vec3<i32>(u_input.a, u_input.a, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, -11241i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(16860i, -2147483647i, 1544i))), var_2.x));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_0.zw, arg_0.wx)))))), var_3.b);
    return _wgslsmith_clamp_i32(-(i32(-1i) * -1i), _wgslsmith_div_i32(~51722i, _wgslsmith_add_i32(-72529i, ~1i)), ~var_3.b.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1708f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(abs(-969f)))), _wgslsmith_f_op_f32(step(-110f, _wgslsmith_div_f32(1548f, -571f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f)))) & (i32(-1i) * -11065i);
    let var_1 = _wgslsmith_sub_u32(74153u, 14291u);
    var_0 = ~(~(-1i));
    var_0 = -1i;
    let var_2 = Struct_1(firstLeadingBit(8740u), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(var_1, 4294967295u), ~vec2<u32>(64675u, 0u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(4294967295u, 30997u), vec2<u32>(46941u, var_1), false), ~vec2<u32>(62901u, 1u))), ~min(vec2<u32>(var_1, var_1), vec2<u32>(4294967295u, var_1)) ^ ~abs(vec2<u32>(4294967295u, var_1)), vec2<u32>(countOneBits(var_1), 4294967295u) ^ (vec2<u32>(var_1, 0u) << (~vec2<u32>(var_1, 21728u) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(1643f)), -921f, 1405f, 1420f), vec4<f32>(_wgslsmith_f_op_f32(abs(562f)), _wgslsmith_f_op_f32(select(755f, -162f, true)), _wgslsmith_f_op_f32(round(2011f)), _wgslsmith_f_op_f32(1942f * 289f))))), ~firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), var_1);
    var_0 = func_1(vec4<f32>(745f, var_2.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.c.x))), -1303f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d);
}

