struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 20>;

var<private> global1: array<vec3<i32>, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = array<vec4<bool>, 20>();
    var var_0 = Struct_1(vec2<bool>(false || any(vec3<bool>(true, true, true)), all(vec2<bool>(true, -1i >= u_input.c))));
    var var_1 = -522f;
    let var_2 = Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_sub_u32(u_input.d, u_input.d), 4294967295u, u_input.e), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.e, u_input.d, 2765u) | _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 1u, 36569u), vec4<u32>(27790u, 47826u, 0u, u_input.d)), ~select(vec4<u32>(u_input.e, u_input.d, u_input.d, u_input.d), vec4<u32>(25680u, u_input.e, u_input.e, u_input.d), true))));
    let var_3 = var_2;
    return vec3<u32>(u_input.e, 4294967295u, 1u);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_2(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d, ~0u), vec2<u32>(abs(47632u), 3349u)), u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 1u, 442u), func_3(0i)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 15710u), vec2<u32>(11393u, u_input.e)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) + vec2<f32>(1754f, -142f))) + arg_0.zx));
    global1 = array<vec3<i32>, 30>();
    var_0 = Struct_2(firstTrailingBit(var_0.a));
    let var_2 = Struct_3(Struct_1(select(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(true, true), all(select(global0[_wgslsmith_index_u32(var_0.a.x, 20u)], global0[_wgslsmith_index_u32(var_0.a.x, 20u)], global0[_wgslsmith_index_u32(24703u, 20u)])))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1483f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))), arg_0.x)));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_3 {
    var var_0 = vec3<u32>(u_input.d, 20640u, ~1u);
    global0 = array<vec4<bool>, 20>();
    let var_1 = firstTrailingBit(-1895i);
    global0 = array<vec4<bool>, 20>();
    let var_2 = Struct_1(select(vec2<bool>(_wgslsmith_f_op_f32(func_2(vec3<f32>(824f, 509f, -1391f))) > -841f, any(vec2<bool>(true, true))), select(!(!vec2<bool>(false, arg_0)), vec2<bool>(false, arg_0 | arg_0), select(!vec2<bool>(true, arg_0), vec2<bool>(true, true), all(global0[_wgslsmith_index_u32(9476u, 20u)]))), ((u_input.d | var_0.x) > 4294967295u) | any(global0[_wgslsmith_index_u32(u_input.e, 20u)])));
    return Struct_3(var_2);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3) -> i32 {
    let var_0 = all(!(!(!vec3<bool>(true, arg_2.a.a.x, arg_2.a.a.x))));
    var var_1 = _wgslsmith_div_u32(~u_input.d, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.d), ~u_input.e) & _wgslsmith_clamp_u32(~u_input.e, 1u, ~0u)) << (firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 4858u), func_3(u_input.b.x) ^ vec3<u32>(u_input.d, u_input.e, u_input.d))) % 32u);
    var var_2 = Struct_2(reverseBits(vec4<u32>(_wgslsmith_add_u32(~u_input.d, _wgslsmith_clamp_u32(u_input.e, 1u, u_input.e)), u_input.d, 80766u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 8853u, u_input.e, 77567u), ~vec4<u32>(16480u, u_input.e, 1u, 4294967295u)))));
    global1 = array<vec3<i32>, 30>();
    var_1 = (~(~(~96566u)) >> (min(_wgslsmith_dot_vec2_u32(var_2.a.zw, var_2.a.zy), var_2.a.x) % 32u)) ^ var_2.a.x;
    return u_input.c | (~u_input.a.x & -4003i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 3908i;
    let var_1 = _wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x) ^ u_input.a.yz, vec2<i32>(24304i, u_input.b.x)), firstTrailingBit(u_input.b.zx))), vec2<i32>(func_4(func_1(true, false), vec4<f32>(-1805f, 1160f, 1368f, -1243f), func_1(false, false)) | 14239i, -13794i));
    var var_2 = func_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, select(true, false, false)), any(vec2<bool>(true, true)))), !any(vec3<bool>(true, true, true)) | ((true | all(vec3<bool>(false, false, false))) || true));
    var var_3 = 441f;
    var var_4 = u_input.a;
    var var_5 = u_input.b.x >> (~46352u % 32u);
    var_4 = _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(max(min(0i, 2147483647i), var_1.x) | var_4.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.xx), -var_4.wx), u_input.c, countOneBits(26324i)));
    global1 = array<vec3<i32>, 30>();
    let var_6 = countOneBits(_wgslsmith_clamp_i32(var_4.x, ~1i, -(~(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(7440u, 47509u, ~36413u, 4294967295u) | ~vec4<u32>(14604u, ~1u, abs(1u), u_input.d | 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(344f, 1204f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(941f, -1522f))), vec2<f32>(_wgslsmith_f_op_f32(-772f * -1950f), _wgslsmith_f_op_f32(f32(-1f) * -260f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1031f, 1123f) - vec2<f32>(166f, -497f))))), _wgslsmith_clamp_i32(~1i, -_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.c, firstTrailingBit(u_input.a.x)), -46224i), ~1i, reverseBits(_wgslsmith_mod_i32(min(var_1.x << (10968u % 32u), ~var_1.x), max(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(1i, -2147483647i))))));
}

