struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> i32 {
    var var_0 = arg_0.a.a.x;
    global0 = array<Struct_2, 8>();
    var var_1 = arg_0.a;
    let var_2 = vec4<i32>(max(~(-(77616i >> (u_input.a % 32u))), countOneBits(-2147483647i & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -12213i), vec2<i32>(-1i, -2147483647i)))), firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -33903i, 1i), select(vec3<i32>(-2147483647i, 2147483647i, 1i), vec3<i32>(-47836i, 0i, -1i), false))), i32(-1i) * -1i, abs(52721i));
    var var_3 = arg_0.a;
    return var_2.x;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = !arg_2.x;
    let var_1 = firstLeadingBit(~(~vec4<u32>(arg_0, u_input.a, 11426u, 22135u) >> (countOneBits(vec4<u32>(u_input.b, arg_0, arg_0, 1u)) % vec4<u32>(32u)))) ^ ~(~vec4<u32>(1927u >> (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, u_input.a, 1u), vec4<u32>(u_input.a, 0u, 0u, arg_0)), firstTrailingBit(u_input.a), 1u));
    let var_2 = ~(~var_1);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-874f)), _wgslsmith_f_op_f32(ceil(167f))) * _wgslsmith_f_op_f32(f32(-1f) * -780f))));
    global0 = array<Struct_2, 8>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1328f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) + vec2<f32>(var_3, -150f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, var_3)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(939f, 264f))))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_3 {
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_0 = 5704u;
    var var_1 = Struct_4(Struct_1(vec4<bool>(true, 63235u >= (u_input.b ^ 1u), all(!arg_2.zxy), any(vec3<bool>(arg_2.x, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1246f, _wgslsmith_f_op_f32(var_1.b - var_1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(353f, var_1.b), vec2<f32>(-355f, var_1.b)) * vec2<f32>(2279f, -646f))) - _wgslsmith_f_op_vec2_f32(func_4(countOneBits(1u), vec4<i32>(func_3(Struct_4(Struct_1(var_1.a.a), var_1.b), vec2<bool>(arg_2.x, false)), ~arg_1.x, arg_3, -arg_1.x), vec3<bool>(true, true, true), Struct_1(!vec4<bool>(true, var_1.a.a.x, false, arg_2.x))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b)))))));
    return Struct_3(arg_2.x);
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = arg_2.a;
    var_0 = true;
    let var_1 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(25552i, 1i), max(-74800i, -2886i)) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<i32>(1i, countOneBits(-2147483647i))));
    var_0 = arg_2.a;
    var var_2 = Struct_2(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, var_1, -31180i, var_1), vec4<i32>(var_1, -1i, -7195i, var_1)), var_1), vec3<bool>(false & arg_2.a, (1u >> (_wgslsmith_mult_u32(u_input.b, u_input.a) % 32u)) == 0u, arg_2.a), 4255i, arg_0.x, select(!(!select(vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, arg_2.a), false)), vec2<bool>(1i != ~var_1, true), !select(vec2<bool>(arg_2.a, arg_2.a), select(vec2<bool>(false, arg_2.a), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    return reverseBits(u_input.a);
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = array<Struct_2, 8>();
    let var_0 = -(~(~(-_wgslsmith_clamp_i32(-1i, 71860i, -48485i))));
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(func_5(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -1371f), _wgslsmith_f_op_f32(min(arg_0, arg_0)), -591f, _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(abs(arg_0)), func_2(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, u_input.b, u_input.b)), vec4<i32>(var_0, var_0, 0i, var_0) | vec4<i32>(-51952i, -1i, var_0, 0i), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), -1i & var_0)), firstTrailingBit(u_input.a)), ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.a, 6058u)) ^ ~u_input.a)));
    var var_2 = -1i;
    var var_3 = func_3(Struct_4(Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), arg_0), select(select(vec2<bool>(true, false), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), !vec2<bool>(select(false, false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    return Struct_3(any(vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true, false, reverseBits(0i) < _wgslsmith_clamp_i32(var_0, 0i, -2147483647i))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<f32>) -> f32 {
    global0 = array<Struct_2, 8>();
    var var_0 = countOneBits(~abs(vec3<u32>(min(u_input.b, u_input.b), u_input.a, ~u_input.a)));
    global0 = array<Struct_2, 8>();
    var var_1 = arg_1;
    let var_2 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f - 228f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_0 = Struct_4(Struct_1(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false)), _wgslsmith_f_op_f32(func_6(global0[_wgslsmith_index_u32(1u, 8u)], func_1(_wgslsmith_f_op_f32(abs(-1000f))), func_2(vec4<u32>(~u_input.b, u_input.b, u_input.b, ~82737u), _wgslsmith_div_vec4_i32(vec4<i32>(-16177i, -1i, 29640i, 1i), vec4<i32>(-49678i, -26172i, 37201i, -28055i)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, false, false), true), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 12322i, 2147483647i, 92827i), vec4<i32>(-1i, 27623i, 0i, 20607i)), vec4<i32>(7099i, 1i, -1i, -1i))), vec2<f32>(_wgslsmith_f_op_f32(-311f * -576f), _wgslsmith_div_f32(-2276f, 247f)))));
    var var_1 = true;
    var_1 = !var_0.a.a.x;
    var var_2 = Struct_3(var_0.a.a.x);
    var_0 = Struct_4(Struct_1(select(select(select(vec4<bool>(true, var_0.a.a.x, false, true), var_0.a.a, false), vec4<bool>(var_0.a.a.x, false, var_2.a, var_0.a.a.x), any(var_0.a.a.zz)), !var_0.a.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) * _wgslsmith_f_op_f32(-var_0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, countOneBits(~(vec4<u32>(17779u, 33983u, u_input.a, 70598u) & vec4<u32>(1u, 28105u, 15334u, u_input.b))) | max(firstLeadingBit(~vec4<u32>(u_input.a, 1u, 139717u, u_input.b)), vec4<u32>(u_input.a, ~u_input.a, u_input.b, u_input.b ^ 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), 335f, _wgslsmith_f_op_f32(f32(-1f) * -1011f)))), _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(0u, u_input.a, 4294967295u)), ~vec3<u32>(u_input.b, 1u, 509u)) | reverseBits(19188u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-662f, var_0.b, 582f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)) - var_0.b)))));
}

