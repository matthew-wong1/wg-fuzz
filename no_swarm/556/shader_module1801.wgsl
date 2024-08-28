struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-24027i, 1i, 2147483647i, 57388i, i32(-2147483648), 1i, 2147483647i, -70247i, -8944i, -27701i, 2147483647i, -12071i, -1i, -1i, i32(-2147483648), -1i, 0i, 1i, i32(-2147483648), -1i, -1i, -18753i, 2147483647i, 1i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    let var_0 = select(reverseBits(~(reverseBits(0u) << (~arg_2.x % 32u))), 1u ^ (abs(34183u) ^ firstLeadingBit(abs(arg_2.x))), false);
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_1 = ~(arg_2.x << (14138u % 32u));
    global0 = array<i32, 24>();
    return _wgslsmith_f_op_f32(round(arg_0));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f * _wgslsmith_f_op_f32(func_3(-1225f, vec2<i32>(-28329i, global0[_wgslsmith_index_u32(arg_3.x, 24u)]), vec4<u32>(arg_2.b.x, u_input.a, arg_3.x, 1u), -229f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a + arg_0.a))), 658f) + arg_0.a);
    var var_1 = arg_2;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a));
    return arg_2.b.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> vec3<u32> {
    global0 = array<i32, 24>();
    let var_0 = max(~17479u, u_input.a);
    var var_1 = Struct_2(vec4<u32>(func_4(Struct_3(_wgslsmith_f_op_f32(func_3(arg_0.x, vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 0i), vec4<u32>(var_0, var_0, 1u, var_0), 176f))), any(vec2<bool>(false, false)), Struct_1(firstTrailingBit(4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(14691u, u_input.b.x, u_input.b.x), vec3<u32>(var_0, var_0, 19917u)), ~u_input.b), firstTrailingBit(vec4<u32>(4294967295u, 7292u, u_input.a, u_input.a) ^ vec4<u32>(u_input.b.x, 17967u, var_0, 1u))), var_0, ~abs(~26555u), firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_div_u32(2011u, 4294967295u), firstLeadingBit(1u), u_input.b.x))), global0[_wgslsmith_index_u32(47265u, 24u)], ~(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0, 1u), 0u), 24u)] << ((min(u_input.b.x, 1u) >> (~59210u % 32u)) % 32u)), true);
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    return var_1.a.zyx;
}

fn func_1() -> StorageBuffer {
    global0 = array<i32, 24>();
    var var_0 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(func_2(vec2<f32>(154f, 976f), -14718i)), vec3<u32>(123330u >> (u_input.a % 32u), ~u_input.b.x, _wgslsmith_mod_u32(35281u, u_input.b.x))), ~55665u, reverseBits(3779u), func_4(Struct_3(_wgslsmith_f_op_f32(-679f - 565f)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false))), Struct_1(firstTrailingBit(u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), u_input.b), vec4<u32>(u_input.a, 1u, ~75916u, 4294967295u))), 2147483647i, global0[_wgslsmith_index_u32(19679u | _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(u_input.b, vec2<u32>(u_input.b.x, u_input.a), false), ~vec2<u32>(u_input.b.x, 12906u)), 1u), 24u)], all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 2147483647i, true) >= global0[_wgslsmith_index_u32(1u | u_input.a, 24u)])));
    var_0 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(36172u | var_0.a.x), u_input.b.x), u_input.a, u_input.a, _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), firstLeadingBit(33099u >> (var_0.a.x % 32u)))), _wgslsmith_sub_i32(-9669i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -18176i), vec2<i32>(var_0.c, 0i)) >> (~var_0.a.x % 32u), var_0.b, global0[_wgslsmith_index_u32(reverseBits(func_2(vec2<f32>(1000f, -856f), global0[_wgslsmith_index_u32(0u, 24u)]).x), 24u)])), -_wgslsmith_dot_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(25675i, var_0.c, -28279i), vec3<i32>(var_0.b, global0[_wgslsmith_index_u32(128464u, 24u)], global0[_wgslsmith_index_u32(62957u, 24u)])), firstTrailingBit(vec3<i32>(9444i, global0[_wgslsmith_index_u32(48427u, 24u)], 1i))), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.c, 70711i, -2147483647i), -vec3<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 24u)], 34174i, var_0.c))), all(select(select(!vec3<bool>(var_0.d, var_0.d, var_0.d), !vec3<bool>(var_0.d, var_0.d, false), false), select(select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(var_0.d, var_0.d, false), false), select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(false, false, false)), select(vec3<bool>(true, var_0.d, true), vec3<bool>(var_0.d, var_0.d, false), true)), any(vec4<bool>(true, true, true, true)))));
    var var_1 = firstTrailingBit(~1u);
    let var_2 = false;
    return StorageBuffer(reverseBits(~_wgslsmith_mult_vec4_i32(-vec4<i32>(-3539i, 18305i, var_0.c, -1i), -vec4<i32>(var_0.c, var_0.b, global0[_wgslsmith_index_u32(22238u, 24u)], -23094i))), 1f, vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, -(-88329i << (u_input.b.x % 32u))), 1i), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(32436u, u_input.a, 13255u, 30493u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(0u, u_input.b.x, u_input.a, u_input.a), false)), global0[_wgslsmith_index_u32(u_input.a, 24u)], -1i, false);
    let var_1 = ~var_0.a.yxy;
    let var_2 = vec2<u32>(var_0.a.x, u_input.b.x);
    global0 = array<i32, 24>();
    let var_3 = Struct_1(~(~var_0.a.x), ~reverseBits(~firstLeadingBit(vec3<u32>(var_0.a.x, 57457u, var_2.x))), vec2<u32>(77334u, var_0.a.x));
    let x = u_input.a;
    s_output = func_1();
}

