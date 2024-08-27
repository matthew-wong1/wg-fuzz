struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true));

var<private> global1: array<bool, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    global0 = array<vec4<bool>, 24>();
    let var_0 = vec2<bool>(!(!all(vec2<bool>(true, true))), all(!select(select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], false), true), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(15150u, 22u)]), vec2<bool>(false, false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1164f, 416f)), _wgslsmith_f_op_f32(f32(-1f) * -283f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1358f - 686f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(417f, var_1, var_1) - vec3<f32>(1225f, 238f, var_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -168f, var_1) - vec3<f32>(var_1, 412f, 1269f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(266f, var_1, -1906f)))))));
    let var_3 = Struct_3(1122f, vec3<u32>(u_input.a | 0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, u_input.a)), ~(vec3<u32>(1u, 4294967295u, 1u) >> (vec3<u32>(4294967295u, u_input.a, 24751u) % vec3<u32>(32u)))), _wgslsmith_sub_u32(reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.a)), ~u_input.a)), reverseBits(35282u), abs(vec4<i32>(firstLeadingBit(~(-2147483647i)), -abs(0i), 14423i, -firstTrailingBit(0i))));
    return vec2<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(27379u, var_3.b.x), vec2<u32>(u_input.a, u_input.a)) ^ u_input.a), max(0u, max(u_input.a, _wgslsmith_dot_vec3_u32(var_3.b, var_3.b)))) | vec2<u32>(u_input.a, var_3.b.x);
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global0 = array<vec4<bool>, 24>();
    let var_0 = ~vec3<u32>(4294967295u, 78651u, ~(~_wgslsmith_mult_u32(32505u, 0u)));
    let var_1 = Struct_1(1u, -2147483647i, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(7831u, 4294967295u), var_0.yy), func_3()), 22u)], select(vec4<i32>(abs(1i >> (1u % 32u)), firstLeadingBit(-17544i), ~abs(-7646i), _wgslsmith_mod_i32(54593i, i32(-1i) * -35649i)), vec4<i32>(1i, countOneBits(1i), ~(-1i), firstLeadingBit(_wgslsmith_add_i32(1i, 43444i))), !select(select(global0[_wgslsmith_index_u32(var_0.x, 24u)], vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(63523u, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(1316u, 22u)]), false), !vec4<bool>(false, global1[_wgslsmith_index_u32(52240u, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(36216u, 22u)]), false)), !(max(4294967295u, ~u_input.a) > 71193u));
    var var_2 = 36721i;
    global1 = array<bool, 22>();
    return var_1.b;
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)), _wgslsmith_f_op_f32(f32(-1f) * -402f), (_wgslsmith_dot_vec2_i32(vec2<i32>(15850i, -15604i), vec2<i32>(1i, -69168i)) >> (1u % 32u)) <= 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -263f));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(~21480i, ~8457i), 32234i, ~(~23746i)), vec3<i32>(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, 223f) + vec2<f32>(var_0, 1000f))), ~2057i, ~reverseBits(-1i))), -_wgslsmith_add_vec3_i32(max(vec3<i32>(13472i, 18229i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -7726i, 6311i), vec3<i32>(-1i, 0i, -2147483647i))), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-13111i, 1i, -1i), vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(1i, 41272i, -2147483647i)), abs(vec3<i32>(0i, 1i, 33466i)))), reverseBits(vec3<i32>(0i, _wgslsmith_div_i32(0i, -1i), _wgslsmith_sub_i32(-38522i, 0i))) << (min(abs(countOneBits(vec3<u32>(0u, u_input.a, u_input.a))), firstLeadingBit(vec3<u32>(u_input.a, 100820u, u_input.a))) % vec3<u32>(32u)));
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a << (countOneBits(4294967295u) % 32u), u_input.a), ~u_input.a & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(27124u, u_input.a, u_input.a))) >> (~_wgslsmith_add_u32(u_input.a ^ (u_input.a | u_input.a), ~(4294967295u ^ u_input.a)) % 32u);
    return min(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(func_2(vec2<f32>(var_0, 121f)), 0i, var_1.x, 2147483647i), firstTrailingBit(-vec4<i32>(2147483647i, -46259i, 2147483647i, -2147483647i)), ~(-vec4<i32>(-27790i, var_1.x, 33975i, -55166i))), reverseBits(vec4<i32>(-2147483647i, abs(var_1.x), var_1.x, 0i))), vec4<i32>(-8657i ^ _wgslsmith_add_i32(var_1.x, var_1.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(46222i, var_1.x), var_1.x), -2147483647i, _wgslsmith_sub_i32(-1i, var_1.x) & -14401i) ^ vec4<i32>(-select(var_1.x, var_1.x, true), var_1.x, 0i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 24>();
    global1 = array<bool, 22>();
    let var_0 = ~20778u;
    let var_1 = _wgslsmith_mult_vec4_i32(func_1(), _wgslsmith_clamp_vec4_i32(-vec4<i32>(countOneBits(1i), 2147483647i, -2147483647i, abs(-15905i)), -firstTrailingBit(max(vec4<i32>(-22155i, 1i, 0i, 83060i), vec4<i32>(0i, 2147483647i, -10689i, -9237i))), vec4<i32>(_wgslsmith_mult_i32(8058i, -201i), -(~2147483647i), _wgslsmith_mult_i32(-18065i, -30690i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(u_input.a, u_input.a)) % 32u), _wgslsmith_add_i32(0i, _wgslsmith_div_i32(37542i, 2147483647i)))));
    global1 = array<bool, 22>();
    let var_2 = Struct_1(reverseBits(~0u), -_wgslsmith_mod_i32(var_1.x, reverseBits(max(var_1.x, -1i))), false, func_1(), false);
    let var_3 = vec4<f32>(-791f, -128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1010f * 222f) + _wgslsmith_f_op_f32(1874f + 972f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1411f)) - _wgslsmith_f_op_f32(max(141f, -836f)))))), -650f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + var_3.x), -882f), _wgslsmith_sub_u32(~(~var_2.a), ~var_2.a), 2147483647i);
}

