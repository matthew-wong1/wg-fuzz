struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<u32>;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, 44980u, 0u), abs(arg_2.xxw))), -vec4<i32>(~u_input.b.x, arg_1.x, select(-1i, global0.x, true), -(global0.x << (arg_3.c % 32u))), ~(~arg_2));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(871f, arg_3.a.x), 1989f);
    global1 = ~firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_2.x, arg_0.x), vec3<u32>(1237u, 105617u, global2.x)), vec3<u32>(11299u, global1.x, arg_2.x) | var_0.c.xzz), var_0.c.zzy | vec3<u32>(4294967295u, global2.x, 1u)));
    var var_2 = ~arg_2.x;
    var_0 = Struct_2(~abs(4294967295u), select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b ^ vec4<i32>(global0.x, -10307i, var_0.b.x, arg_1.x), vec4<i32>(-29930i, arg_1.x, -3236i, 2147483647i)), (vec4<i32>(786i, -3440i, -69750i, 16391i) << (arg_2 % vec4<u32>(32u))) ^ (vec4<i32>(0i, arg_1.x, arg_1.x, 45359i) | vec4<i32>(global0.x, 34474i, 14104i, var_0.b.x))), vec4<i32>(arg_1.x, var_0.b.x, ~(-4151i), ~var_0.b.x << (min(4294967295u, var_0.c.x) % 32u)), select(vec4<bool>(false, -1309f > arg_3.a.x, false, any(vec3<bool>(false, true, false))), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)), !select(false, true, true))), abs(vec4<u32>(~global2.x, 0u, _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(global1.x, global2.x, arg_3.c, 1u)), 1u) << (~_wgslsmith_sub_vec4_u32(var_0.c, var_0.c) % vec4<u32>(32u))));
    return _wgslsmith_sub_u32(arg_3.c, arg_0.x << (abs(arg_2.x) % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global1 = ~(~vec3<u32>(_wgslsmith_div_u32(u_input.a >> (15758u % 32u), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d)), func_3(vec4<u32>(4294967295u, 4294967295u, u_input.c, 29320u), arg_1.wz >> (vec2<u32>(global1.x, 4294967295u) % vec2<u32>(32u)), min(vec4<u32>(arg_2.c, arg_2.c, arg_2.c, 1u), vec4<u32>(global1.x, 62986u, 74704u, arg_2.c)), arg_0), arg_2.c));
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-657f, _wgslsmith_f_op_f32(arg_2.b.x - _wgslsmith_f_op_f32(f32(-1f) * -870f)), -192f)), ~global1.x >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, 1u, arg_0.c)), _wgslsmith_div_vec3_u32(~vec3<u32>(global2.x, 39994u, 20692u), ~vec3<u32>(87049u, 4294967295u, global2.x))) % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(735f * _wgslsmith_f_op_f32(f32(-1f) * -555f)), arg_2.b.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -841f)))), arg_0.d) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.b, vec3<f32>(-766f, -1455f, var_0.b.x))))))));
    var var_2 = countOneBits(~1u);
    let var_3 = _wgslsmith_dot_vec4_i32(arg_1, -(~(countOneBits(arg_1) << (reverseBits(vec4<u32>(arg_0.c, global1.x, global1.x, 0u)) % vec4<u32>(32u)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-253f * var_0.b.x)));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-376f, _wgslsmith_f_op_f32(abs(1000f)), any(vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1026f - _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-1035f, 235f, 723f), vec3<f32>(-626f, -1000f, 1489f), 1u, -847f), vec4<i32>(-13157i, -2147483647i, 1896i, u_input.b.x), Struct_1(vec3<f32>(476f, -344f, 1000f), vec3<f32>(-772f, -849f, -412f), 1u, 410f))))))));
    global1 = reverseBits(_wgslsmith_div_vec3_u32(abs(~(~vec3<u32>(global2.x, 4294967295u, global2.x))), _wgslsmith_clamp_vec3_u32(select(firstLeadingBit(vec3<u32>(global2.x, 28920u, global1.x)), vec3<u32>(1u, global2.x, 34162u) ^ vec3<u32>(1u, global1.x, global1.x), false), firstLeadingBit(vec3<u32>(4294967295u, 8851u, 1u)) ^ vec3<u32>(16640u, 1u, global2.x), ~vec3<u32>(23975u, 1u, global2.x))));
    global0 = vec2<i32>(arg_0.x, u_input.b.x);
    var var_1 = Struct_2(~1u, ~vec4<i32>(countOneBits(-428i), -204i, 68239i, abs(21540i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -30422i), u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-61132i, arg_0.x, -1i, 0i), vec4<i32>(u_input.b.x, -1i, 0i, 0i)), firstTrailingBit(2147483647i), u_input.b.x), select(firstTrailingBit(vec4<i32>(-1i, -1i, 55126i, u_input.b.x)), vec4<i32>(-2147483647i, global0.x, -27268i, u_input.b.x) | vec4<i32>(33366i, 36289i, arg_0.x, u_input.b.x), true)), countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global2.x, 6949u, global2.x, 1u)), select(vec4<u32>(global1.x, 49104u, global2.x, u_input.a), vec4<u32>(u_input.c, u_input.a, 8838u, u_input.d.x), false)), vec4<u32>(global2.x, 56539u, global1.x, global2.x) & ~vec4<u32>(4294967295u, 63849u, global2.x, global2.x))));
    let var_2 = !(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))));
    return true;
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    global1 = abs(vec3<u32>(~(~(~global2.x)), firstTrailingBit(global1.x), global2.x));
    var var_0 = global0.x;
    var var_1 = ~1u;
    var var_2 = ~(~u_input.d);
    let var_3 = Struct_2((~(~1u) ^ ~var_2.x) << (min(45353u, _wgslsmith_mult_u32(~u_input.d.x, abs(global2.x))) % 32u), firstLeadingBit(vec4<i32>(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, global0.x)), u_input.b.x, ~(0i << (global2.x % 32u)))), vec4<u32>(var_2.x, u_input.a, ~(~26050u), u_input.d.x));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -381f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(148f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(501f, 897f, -286f), vec3<f32>(-1000f, -1284f, -1245f), var_2.x, 1370f), var_3.b, Struct_1(vec3<f32>(1162f, 578f, -677f), vec3<f32>(972f, -1141f, 1539f), u_input.c, 1000f))), arg_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-351f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(591f * -673f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2407f) - _wgslsmith_f_op_f32(sign(573f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(840f - -943f))), _wgslsmith_f_op_f32(f32(-1f) * -2269f), !func_1(var_3.b.zy)))), ~u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f - -142f)) - _wgslsmith_f_op_f32(select(469f, -1039f, var_3.c.x <= var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(17186u, 0u, ~select(global1.x, _wgslsmith_dot_vec2_u32(~u_input.d, abs(vec2<u32>(587u, 4294967295u))), true), global1.x);
    var var_1 = func_4(!vec3<bool>(true, func_1(-vec2<i32>(-2147483647i, u_input.b.x)), true));
    var var_2 = vec3<u32>(_wgslsmith_mod_u32(global2.x, 21420u), 57576u, abs(1u));
    var var_3 = max(_wgslsmith_sub_u32(var_1.c, u_input.d.x), ~u_input.a);
    var_3 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32(global2.x, global2.x), ~var_0.x);
    global1 = min(abs(var_0.yyy), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, var_0.x), vec2<u32>(var_1.c, global2.x)), ~var_2.x & global2.x), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, var_0.x) | var_0.zwz, ~var_0.xwx, ~var_0.zwx))));
    var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(43358u, ~var_0 ^ countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0, vec4<u32>(23285u, var_2.x, global2.x, 4294967295u), vec4<u32>(36669u, 48227u, u_input.a, var_2.x)), _wgslsmith_mult_vec4_u32(var_0, var_0))), var_0);
}

