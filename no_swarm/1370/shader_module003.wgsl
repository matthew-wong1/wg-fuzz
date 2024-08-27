struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 21>;

var<private> global2: array<Struct_2, 10>;

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = arg_0.x;
    var var_1 = !(!(!vec4<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), global1[_wgslsmith_index_u32(31165u, 21u)], global1[_wgslsmith_index_u32(~1u, 21u)], all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(2199u, 21u)], global1[_wgslsmith_index_u32(136545u, 21u)])))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(-1612f, -588f)))), _wgslsmith_f_op_f32(arg_2.x + arg_2.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-1251f - var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_2.x, arg_0.x, -1041f))))))));
    global0 = _wgslsmith_f_op_f32(round(-270f));
    return abs(vec4<u32>(46496u, 4294967295u, 31639u, 1u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: Struct_3) -> vec4<u32> {
    global1 = array<bool, 21>();
    global0 = arg_0.b.b.x;
    let var_0 = vec4<i32>(global3.x, arg_3.a.x, -2147483647i, _wgslsmith_div_i32(1i, -2147483647i));
    global1 = array<bool, 21>();
    let var_1 = ~(arg_0.a.x & (~21723u >> (min(arg_0.a.x & 1u, 1u) % 32u)));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, var_1, ~(~arg_0.a.x), ~firstLeadingBit(arg_0.a.x)) ^ ~func_2(vec2<f32>(-1176f, 565f), Struct_3(var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(771f, -454f, -1122f) * arg_0.b.b.wxz)), vec4<u32>(_wgslsmith_add_u32(0u, var_1), reverseBits(var_1) << (var_1 % 32u), arg_0.a.x, 15051u));
}

fn func_1() -> vec4<u32> {
    let var_0 = 9835u;
    let var_1 = Struct_2(min(min(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(0u, var_0, 4294967295u, 21395u)), func_2(vec2<f32>(-657f, -1571f), Struct_3(u_input.a), vec3<f32>(-360f, -685f, 1529f))), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_0, 5149u, var_0, var_0)), vec4<u32>(var_0, var_0, var_0, 82468u) | vec4<u32>(7001u, var_0, 0u, var_0))), ~func_3(global2[_wgslsmith_index_u32(739u, 10u)], ~vec4<u32>(var_0, 27638u, var_0, var_0), u_input.a.xz, Struct_3(u_input.a))), Struct_1(-vec3<i32>(global3.x, -global3.x, _wgslsmith_sub_i32(0i, 67005i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-616f)), 1047f, _wgslsmith_f_op_f32(floor(603f)), _wgslsmith_f_op_f32(select(-996f, 1171f, global1[_wgslsmith_index_u32(var_0, 21u)]))))), -38936i >> (min(30313u, _wgslsmith_clamp_u32(60599u, var_0, 1u) & abs(var_0)) % 32u));
    let var_2 = var_1.b;
    let var_3 = (min(var_1.b.a.x, ~(i32(-1i) * -2147483647i)) >> (~(~var_0 ^ 0u) % 32u)) ^ _wgslsmith_mult_i32(min(max(countOneBits(global3.x), var_2.a.x), -8864i), 16364i << (var_0 % 32u));
    return ~(~countOneBits(~(vec4<u32>(4294967295u, var_0, 28824u, 18559u) << (var_1.a % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 10>();
    var var_0 = u_input.a.zxx;
    let var_1 = all(!select(!(!vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 21u)], true)), !vec3<bool>(global1[_wgslsmith_index_u32(65113u, 21u)], false, global1[_wgslsmith_index_u32(24133u, 21u)]), true));
    var var_2 = ~1u;
    var_0 = select(-(~u_input.a.xyw), vec3<i32>(2147483647i, var_0.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.yxz, u_input.a.yxy, u_input.a.zyz), u_input.a.xyw), ~1i)), any(!(!vec4<bool>(var_1, false, var_1, var_1))) || true);
    var var_3 = firstLeadingBit(min(-8930i, 38120i));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1043f, 236f))))))));
    let var_5 = ~(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(func_1(), vec4<u32>(9454u, 23860u, 53672u, 90518u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 51283u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u))) ^ 98023u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(45483u, var_5, 12635u)) ^ ~vec3<u32>(7726u, 52445u, 0u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_5, 4294967295u, var_5), firstTrailingBit(vec3<u32>(101040u, 4294967295u, var_5)))), ~(~vec2<u32>(var_5, var_5) << ((~vec2<u32>(68847u, var_5) | ~vec2<u32>(40678u, var_5)) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(~(vec2<u32>(34852u, var_5) | vec2<u32>(var_5, var_5)), vec2<u32>(max(19375u, ~98239u), abs(4294967295u << (var_5 % 32u))), ~select(~vec2<u32>(0u, 71618u), vec2<u32>(4294967295u, var_5) | vec2<u32>(var_5, var_5), !vec2<bool>(var_1, global1[_wgslsmith_index_u32(var_5, 21u)]))), 942f);
}

