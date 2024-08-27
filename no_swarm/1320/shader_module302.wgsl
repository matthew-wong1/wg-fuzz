struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(48670u, 53654u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(22245u, 35498u), vec2<u32>(68540u, 0u), vec2<u32>(34930u, 7085u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 50573u), vec2<u32>(4678u, 4294967295u), vec2<u32>(0u, 35304u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> i32 {
    global0 = select(vec3<i32>(_wgslsmith_sub_i32(587i, firstTrailingBit(u_input.b)), _wgslsmith_dot_vec3_i32(arg_0, arg_0 >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c), vec3<u32>(u_input.c, 43793u, 4294967295u)) % vec3<u32>(32u))), ~(-1i)), -(vec3<i32>(global0.x, u_input.a, _wgslsmith_sub_i32(2147483647i, u_input.b)) >> (~firstLeadingBit(vec3<u32>(arg_1.x, 12890u, 0u)) % vec3<u32>(32u))), all(vec4<bool>(true, true, true, true)));
    return _wgslsmith_mult_i32(max(-1i, _wgslsmith_mod_i32(global0.x, -9322i)), -1i) >> (arg_1.x % 32u);
}

fn func_2() -> bool {
    global0 = select(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, -2147483647i), vec3<i32>(-1i, 2147483647i, -2147483647i)), _wgslsmith_mult_i32(-29227i, global0.x)), func_3(-vec3<i32>(u_input.b, global0.x, -4115i), global1[_wgslsmith_index_u32(19037u, 12u)] & vec2<u32>(11172u, 34350u)), global0.x), firstTrailingBit(firstLeadingBit(-vec3<i32>(10501i, 48431i, u_input.a)))), countOneBits(countOneBits((vec3<i32>(global0.x, 65081i, global0.x) & vec3<i32>(2147483647i, 0i, global0.x)) ^ abs(vec3<i32>(-19870i, 0i, -2147483647i)))), vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true))), true, true));
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -144f), -317f)))), _wgslsmith_f_op_f32(f32(-1f) * -270f), 1085f, -1049f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1325f, _wgslsmith_f_op_f32(202f * 546f), 1027f)))));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2129f)), -254f), var_0.b.x), var_0.b.x, var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.wwz * _wgslsmith_div_vec3_f32(var_0.b, var_0.b)) + var_0.a.xwz)));
    global1 = array<vec2<u32>, 12>();
    var var_2 = firstLeadingBit(u_input.a);
    return firstLeadingBit(~(~u_input.c)) <= ~1u;
}

fn func_1() -> vec3<i32> {
    global0 = vec3<i32>(23996i, min(u_input.d, u_input.b), u_input.d);
    let var_0 = (!(!any(vec4<bool>(false, true, false, false))) | (u_input.c >= ~1u)) && true;
    let var_1 = !(var_0 && func_2());
    global0 = -(~vec3<i32>(u_input.a, -global0.x, u_input.a));
    global0 = vec3<i32>(func_3(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-15036i, 1i, 22614i), vec3<i32>(u_input.a, -13994i, 0i)) & vec3<i32>(-60014i, -1i, -2147483647i), select(vec3<i32>(global0.x, u_input.d, u_input.b), vec3<i32>(global0.x, 5224i, global0.x) << (vec3<u32>(0u, u_input.c, 73506u) % vec3<u32>(32u)), var_1)), vec2<u32>(u_input.c, abs(_wgslsmith_div_u32(23547u, 1u)))), 6220i, -2147483647i);
    return firstLeadingBit(~vec3<i32>(0i, global0.x, -12931i) >> (((vec3<u32>(12884u, 86537u, 37263u) | vec3<u32>(u_input.c, u_input.c, 31880u)) | ~vec3<u32>(u_input.c, 0u, 1u)) % vec3<u32>(32u))) | vec3<i32>(u_input.d, u_input.d, _wgslsmith_clamp_i32(-abs(u_input.b), -(i32(-1i) * -1i), -(i32(-1i) * -9652i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_div_vec3_i32(select(vec3<i32>(global0.x, -4663i, global0.x), ~vec3<i32>(0i, -1i, global0.x), true) << (~vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u)), ~abs(vec3<i32>(global0.x, -24509i, -1i)));
    global1 = array<vec2<u32>, 12>();
    global1 = array<vec2<u32>, 12>();
    let var_0 = u_input.c;
    global0 = func_1() >> (vec3<u32>(_wgslsmith_clamp_u32(~(~var_0), 0u, var_0), _wgslsmith_dot_vec4_u32(~(vec4<u32>(94870u, 1u, 26641u, 4294967295u) ^ vec4<u32>(u_input.c, 36163u, var_0, 6121u)), vec4<u32>(select(var_0, u_input.c, false), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), global1[_wgslsmith_index_u32(var_0, 12u)]), var_0, 57703u)), ~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~26660u, 12u)], vec2<u32>(u_input.c, 48059u))) % vec3<u32>(32u));
    let var_1 = vec2<bool>(false, true);
    let var_2 = vec2<bool>(!all(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), max(vec2<u32>(~59127u, max(u_input.c, 49456u)), _wgslsmith_add_vec2_u32(~vec2<u32>(var_0, var_0), ~vec2<u32>(var_0, 0u)))), vec3<u32>(u_input.c, var_0, u_input.c), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(998f, -567f, -732f, _wgslsmith_f_op_f32(trunc(1251f)))))), -1i, _wgslsmith_div_i32(u_input.d, _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, -43047i, -25743i, 2147483647i), firstLeadingBit(vec4<i32>(-4520i, global0.x, 1i, u_input.b)))));
}

