struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: Struct_4,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(34967u, 74769u, 0u, 4294967295u, 0u, 0u, 4294967295u, 0u);

var<private> global1: vec2<f32> = vec2<f32>(-316f, -1324f);

var<private> global2: array<Struct_5, 20>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_3(vec2<i32>(u_input.a, u_input.a >> (51504u % 32u)) ^ vec2<i32>(~arg_1.x, arg_0.x), 14073u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2, arg_2) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1059f, 945f, global1.x), vec3<f32>(arg_2.x, arg_2.x, -885f), false)) * vec3<f32>(1294f, -1911f, 1397f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(755f, arg_2.x, -1044f), arg_2) - _wgslsmith_f_op_vec3_f32(-arg_2)))), 220f, ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(45881u, 8u)], 1u), select(vec3<u32>(global0[_wgslsmith_index_u32(99165u, 8u)], 6799u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(13593u, 8u)], 10912u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20605u, 8u)], 8u)]), vec3<bool>(true, true, false))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(12986u, 4294967295u, 43919u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)])))));
    global1 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(trunc(var_0.d))))));
    global0 = array<u32, 8>();
    let var_1 = Struct_4(vec4<bool>(all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), true, true, !any(vec2<bool>(true, true))), Struct_1(_wgslsmith_clamp_vec3_u32(min(~var_0.e, ~var_0.e), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(428u, 8u)], 8u)]), var_0.e), reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, global0[_wgslsmith_index_u32(0u, 8u)]), var_0.e.zx)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4765u, global0[_wgslsmith_index_u32(34908u, 8u)], var_0.e.x), ~vec3<u32>(global0[_wgslsmith_index_u32(44802u, 8u)], global0[_wgslsmith_index_u32(92016u, 8u)], global0[_wgslsmith_index_u32(4359u, 8u)]), ~var_0.e)), true), 2147483647i, all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(select(false, false, true), all(vec4<bool>(true, false, false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(114792u, 47464u), _wgslsmith_div_vec2_u32(var_0.e.yy, vec2<u32>(0u, var_0.e.x))), var_0.b, _wgslsmith_add_u32(var_0.e.x, max(global0[_wgslsmith_index_u32(var_0.e.x, 8u)], var_0.b))), any(vec3<bool>(true, false, true))));
    global0 = array<u32, 8>();
    return var_1.a.zxw;
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_4(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(78081u, 8u)], 1u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2263u, 8u)], 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37582u, 8u)], 8u)], 8u)])), ~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 4294967295u, 0u))), any(select(func_3(vec2<i32>(u_input.a, u_input.a), vec4<i32>(-19293i, u_input.a, u_input.a, u_input.a), vec3<f32>(1021f, -213f, global1.x)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), 1i, true, Struct_1(firstTrailingBit(select(select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46541u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(62500u, 8u)]), vec3<u32>(45828u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 2280u), vec3<bool>(false, false, false)), ~vec3<u32>(28564u, 14337u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41928u, 8u)], 8u)]), false)), func_3(abs(vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(~vec4<i32>(u_input.a, 1229i, -32352i, -1i)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -390f, 702f))))).x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1497f), -423f);
    let var_2 = var_0.a.xxy;
    let var_3 = var_0.e.a;
    global0 = array<u32, 8>();
    return ~min(select((vec4<i32>(-2147483647i, -1i, -61643i, u_input.a) | vec4<i32>(u_input.a, -8621i, var_0.c, var_0.c)) << (~vec4<u32>(4294967295u, var_3.x, 0u, global0[_wgslsmith_index_u32(17849u, 8u)]) % vec4<u32>(32u)), ~(-vec4<i32>(1003i, u_input.a, -11388i, u_input.a)), select(var_0.a, select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_0.d, var_2.x, false), vec4<bool>(var_0.b.b, false, false, true)), vec4<bool>(var_0.e.b, true, var_2.x, var_2.x))), select(vec4<i32>(_wgslsmith_sub_i32(18003i, 16133i), i32(-1i) * -47020i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-41774i, var_0.c, 2147483647i)), _wgslsmith_add_i32(u_input.a, var_0.c)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a, -1i), vec4<i32>(10460i, var_0.c, var_0.c, -1956i)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -23347i)), !var_0.a));
}

fn func_1() -> Struct_1 {
    var var_0 = select(func_2(), vec4<i32>(firstTrailingBit(-1i), ~_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a) >> (min(1u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6748u, 8u)], 8u)], 8u)], 8u)], firstTrailingBit(global0[_wgslsmith_index_u32(40849u, 8u)])) % 32u)), true);
    var var_1 = !vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)), true);
    let var_2 = ~(~((min(vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(508u, 8u)], 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(0u, 8u)])) | ~vec4<u32>(61020u, 52738u, global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(14065u, 8u)])) >> (~firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35002u, 8u)], 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26416u, 8u)], 8u)], 36554u)) % vec4<u32>(32u))));
    var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, var_0.x, 0i)), -vec4<i32>(-7305i, u_input.a, var_0.x, -1i) ^ select(vec4<i32>(-2147483647i, 12009i, var_0.x, 9962i), vec4<i32>(var_0.x, var_0.x, u_input.a, var_0.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x))) | _wgslsmith_sub_vec4_i32(~vec4<i32>(13621i, u_input.a, -1i, u_input.a), abs(-vec4<i32>(var_0.x, var_0.x, -2147483647i, u_input.a))), -(~(-countOneBits(vec4<i32>(var_0.x, var_0.x, u_input.a, 0i)))));
    global0 = array<u32, 8>();
    return Struct_1(var_2.wyx, false);
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(select(_wgslsmith_sub_u32(arg_0.x, ~47015u), 54802u, arg_1), arg_3.b.a.x, arg_0.x) % 32u), 8u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -2235f, global1.x, 1084f), vec4<f32>(global1.x, global1.x, -3092f, -1000f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, -1134f), vec4<f32>(-537f, global1.x, global1.x, global1.x), arg_1)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global1.x, global1.x, 482f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, -1000f, global1.x), vec4<f32>(576f, global1.x, 295f, -623f), arg_3.a))))), arg_3.a)));
    global2 = array<Struct_5, 20>();
    global0 = array<u32, 8>();
    var var_2 = abs(~arg_0);
    return !select(select(!select(vec3<bool>(false, false, false), arg_3.a.xxz, true), vec3<bool>(all(arg_3.a.yx), arg_1, all(vec2<bool>(arg_3.a.x, arg_1))), arg_3.a.zyx), arg_3.a.wyz, all(func_3(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3.c, arg_3.c), vec2<i32>(arg_3.c, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(-31355i, arg_3.c, arg_3.c, 1i), vec4<i32>(arg_2, -2147483647i, 2147483647i, arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(673f, -226f, global1.x))).zy));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: f32, arg_3: f32) -> Struct_3 {
    let var_0 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(0u, 8u)], 16083u), firstTrailingBit(~vec2<u32>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7747u, 8u)], 8u)]))), 46224u, abs(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~4294967295u, 8u)], firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)])), 8u)])) | firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54103u, 8u)], 8u)], global0[_wgslsmith_index_u32(1u, 8u)], 1u, 4016u), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 4294967295u) & ~vec4<u32>(global0[_wgslsmith_index_u32(6072u, 8u)], global0[_wgslsmith_index_u32(4772u, 8u)], 18431u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37389u, 8u)], 8u)], 8u)], 8u)])));
    global2 = array<Struct_5, 20>();
    var var_1 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~firstTrailingBit(var_0.x), 8u)], 20u)];
    global0 = array<u32, 8>();
    return Struct_3(arg_1.yx | _wgslsmith_sub_vec2_i32(arg_1.zx, vec2<i32>(31566i, abs(-8352i))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~global0[_wgslsmith_index_u32(~51681u, 8u)]), var_0.x >> (_wgslsmith_add_u32(1u, 1u) % 32u), _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 32060u, 4294967295u) & 27408u, 8u)], ~52516u)), 8u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(328f, -987f, arg_0), vec3<f32>(-258f, arg_0, -240f), var_1.c.a.wwz)) - vec3<f32>(global1.x, global1.x, global1.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1480f, -2986f)), _wgslsmith_f_op_f32(f32(-1f) * -583f))), arg_2)), vec3<u32>(~(~global0[_wgslsmith_index_u32(var_1.d.x, 8u)]) << (~(~0u) % 32u), _wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(global0[_wgslsmith_index_u32(countOneBits(6072u), 8u)], global0[_wgslsmith_index_u32(var_0.x, 8u)] ^ 0u)), ~(~35125u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(global1.x, global1.x);
    var var_0 = func_5(_wgslsmith_f_op_f32(847f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) * 678f)), select(min(min(vec3<i32>(u_input.a, u_input.a, 1i) & vec3<i32>(1i, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 6393i), vec3<i32>(-28791i, 6988i, u_input.a))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 0i), vec3<i32>(-3247i, u_input.a, u_input.a)))), vec3<i32>(-18399i, countOneBits(-2147483647i), 1i), func_4(firstLeadingBit(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15288u, 8u)], 8u)], 8u)], 53381u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29329u, 8u)], 8u)], 8u)], 8u)])), true, u_input.a, Struct_4(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 12876u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29157u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)]), false), -10952i, u_input.a >= -3828i, func_1()))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1065f * -991f))), -448f);
    let var_1 = global2[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(var_0.e.x, 8u)] | (var_0.b << (~(~global0[_wgslsmith_index_u32(1u, 8u)]) % 32u))), 20u)];
    let var_2 = global2[_wgslsmith_index_u32(0u & var_0.b, 20u)];
    let var_3 = var_2.c.e;
    global2 = array<Struct_5, 20>();
    var var_4 = Struct_4(select(vec4<bool>(any(func_3(var_0.a, vec4<i32>(7790i, var_0.a.x, u_input.a, var_1.c.c), vec3<f32>(-692f, 263f, 452f)).zy), !var_2.c.a.x, var_2.c.b.b, var_3.b), !var_2.c.a, var_1.c.a), var_1.c.b, var_0.a.x, !all(func_3(_wgslsmith_add_vec2_i32(var_0.a, vec2<i32>(2147483647i, var_1.c.c)), reverseBits(vec4<i32>(2147483647i, var_2.c.c, -1i, -34621i)), var_0.c)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.xy, ~_wgslsmith_mod_u32(reverseBits(var_3.a.x), var_3.a.x << (22898u % 32u)) << (1u % 32u), var_0.a.x);
}

