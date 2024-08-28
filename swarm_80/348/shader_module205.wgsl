struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(1u), Struct_1(4294967295u), Struct_1(0u), Struct_1(3490u), Struct_1(4294967295u), Struct_1(120830u), Struct_1(23291u), Struct_1(0u), Struct_1(28480u), Struct_1(1u), Struct_1(4294967295u), Struct_1(15882u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(0u), Struct_1(81443u), Struct_1(4294967295u), Struct_1(25521u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u));

var<private> global1: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = (vec2<i32>(select(2147483647i, u_input.d, false) ^ u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.d), vec3<i32>(-56843i, -28954i, u_input.c))) ^ select(-(vec2<i32>(-2147483647i, u_input.c) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(24126i, -1i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), vec2<i32>(u_input.d, u_input.d)), all(vec4<bool>(true, true, true, true)))) << (vec2<u32>(4448u, ~u_input.b ^ _wgslsmith_sub_u32(1u, firstLeadingBit(4294967295u))) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1949f - -1747f)))));
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(reverseBits(-vec4<i32>(var_0.x, 46891i, -1i, -17310i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-var_0.x, -2147483647i, var_0.x, var_0.x), -min(vec4<i32>(u_input.d, -2147483647i, var_0.x, 63600i), vec4<i32>(9581i, -2147483647i, -27562i, 0i)))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 50062u, u_input.b) & vec3<u32>(u_input.a, u_input.b, 35630u), vec3<u32>(56725u, u_input.a, 38070u)), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 123552u, u_input.b), vec3<u32>(u_input.a, 0u, 82652u))), abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 25010u), vec3<u32>(0u, 1u, u_input.a)))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1281f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-907f + _wgslsmith_div_f32(-1000f, 604f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1052f))))))));
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(var_1.a.x, i32(-1i) * -15792i) << (var_1.b.x % 32u)), ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.d, 1i), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, var_0.x), vec3<i32>(var_1.a.x, 26273i, 1i))));
    return select(vec4<i32>(min(var_0.x << (21910u % 32u), -2147483647i), var_0.x, ~(-2147483647i), 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x >> (19324u % 32u), var_1.a.x, ~(-4927i), _wgslsmith_dot_vec3_i32(var_1.a.xxz, var_1.a.zxx)), max(vec4<i32>(var_0.x, var_1.a.x, var_1.a.x, -19994i), reverseBits(vec4<i32>(-1i, -1i, 1i, -33097i)))), !vec4<bool>(true, true, any(vec2<bool>(false, true)), true)) & reverseBits(countOneBits(var_1.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = vec3<bool>(true, any(vec4<bool>(false, true, false | select(true, true, false), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false)))), false);
    var var_1 = u_input.b;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1834f, 103f, false))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(474f * -522f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1572f, _wgslsmith_f_op_f32(-297f * -1063f)))))));
    var_1 = arg_1.a;
    let var_2 = arg_1;
    return arg_0.b.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = array<Struct_1, 23>();
    let var_0 = ~(~func_4(Struct_2(func_3(), ~vec3<u32>(4294967295u, u_input.a, arg_1.a)), Struct_1(firstLeadingBit(arg_1.a)), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, arg_3), vec3<i32>(u_input.c, u_input.c, 33303i))));
    global0 = array<Struct_1, 23>();
    var var_1 = u_input.c;
    let var_2 = vec2<bool>(true, true);
    return 1f;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1141f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-271f - -810f), Struct_1(u_input.a), Struct_1(u_input.a), 1i ^ u_input.d)), true)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-294f, 178f)))))));
    global0 = array<Struct_1, 23>();
    let var_1 = ~(~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.d, u_input.d)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(62374u, u_input.a), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), (vec2<i32>(u_input.d, -29883i) & vec2<i32>(u_input.d, u_input.d)) >> (vec2<u32>(1u, 32452u) % vec2<u32>(32u))));
    var var_2 = Struct_1(4294967295u);
    let var_3 = vec2<f32>(var_0, _wgslsmith_f_op_f32(floor(485f)));
    return Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(-u_input.c), -2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, var_1.x), select(var_1, vec2<i32>(4271i, var_1.x), false)), -2147483647i >> (1u % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i & u_input.d, -2147483647i, u_input.c & -1i, 1i), abs(vec4<i32>(var_1.x, -1i, 18996i, u_input.d)))), ~_wgslsmith_add_vec3_u32(~vec3<u32>(var_2.a, var_2.a, 4294967295u), ~vec3<u32>(var_2.a, 1u, var_2.a)) & ~firstTrailingBit(~vec3<u32>(0u, u_input.b, var_2.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = ~_wgslsmith_div_u32(arg_2.a, abs(u_input.b));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1748f, _wgslsmith_f_op_f32(exp2(arg_3))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1220f)) * _wgslsmith_f_op_f32(arg_3 + arg_3))))));
    let var_1 = _wgslsmith_clamp_vec3_u32(arg_1.b >> (~vec3<u32>(~arg_2.a, arg_1.b.x, ~arg_2.a) % vec3<u32>(32u)), ~vec3<u32>(~u_input.b, ~25247u, ~(~1u)), vec3<u32>(_wgslsmith_sub_u32(arg_1.b.x, ~abs(46685u)), firstTrailingBit(firstLeadingBit(var_0)), ~(~reverseBits(arg_1.b.x))));
    let var_2 = abs(min(abs(~firstTrailingBit(arg_0.a)), 34103u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f));
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(vec2<bool>(true, true)), false, (min(2147483647i, ~(-13742i)) >= _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(51202i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(0i, u_input.d, -1i)), vec3<i32>(-4222i, -27761i, u_input.d))) || false);
    global0 = array<Struct_1, 23>();
    global1 = -846f;
    let var_1 = Struct_2(vec4<i32>(u_input.c, _wgslsmith_div_i32(~(-19278i ^ u_input.d), 1i), -(12218i >> (u_input.b % 32u)) ^ _wgslsmith_sub_i32(u_input.c, 1i), func_5(Struct_1(~69084u), func_1(), global0[_wgslsmith_index_u32(u_input.b, 23u)], 807f)), ~vec3<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.a, u_input.b, 1u)), 1u));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b, 23u)];
    var var_3 = firstTrailingBit(vec2<u32>(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.b.x, var_2.a, var_2.a), firstLeadingBit(1u), ~var_1.b.x), var_1.b.x >> (~(~u_input.b) % 32u)));
    var_3 = vec2<u32>(var_3.x, 1u);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1072f, -857f, 1720f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1192f, 1480f, -1341f) - vec3<f32>(-773f, -884f, -1369f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(519f, -435f, -1858f) + vec3<f32>(-1001f, 238f, -583f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(416f, 328f, -288f) - vec3<f32>(827f, 364f, -2644f))), true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(457f, 651f, -521f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1239f, 2002f, 584f))))) * vec3<f32>(727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1304f - -861f) - _wgslsmith_div_f32(-1023f, -1001f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.wyw, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))))));
}

