struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<i32> {
    let var_0 = ~max(~_wgslsmith_mod_vec4_u32(~vec4<u32>(19753u, arg_1, arg_1, arg_1), abs(vec4<u32>(arg_1, 21475u, arg_1, 52776u))), ~(~vec4<u32>(4294967295u, 0u, 63373u, 6659u)) & (vec4<u32>(86114u, 20407u, 4294967295u, arg_1) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 34236u, arg_1, 1u), vec4<u32>(arg_1, 0u, arg_1, arg_1)) % vec4<u32>(32u))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-207f + 460f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-398f, -2031f) + vec2<f32>(197f, -400f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1109f, 1319f) - vec2<f32>(-1182f, 1091f))), vec2<bool>(any(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, true)))))), any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -721f) + _wgslsmith_f_op_f32(select(-610f, -640f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f + -413f)) + _wgslsmith_f_op_f32(select(-1573f, -1290f, true))), true)), true);
    global0 = array<vec3<bool>, 21>();
    let var_2 = Struct_1(1i);
    var var_3 = Struct_1(_wgslsmith_mult_i32(~1i, _wgslsmith_mod_i32(~4347i, u_input.b.x)));
    return ~_wgslsmith_mult_vec3_i32(-select(~vec3<i32>(u_input.b.x, 0i, 0i), select(vec3<i32>(22902i, u_input.a.x, 26071i), vec3<i32>(var_2.a, arg_0, 0i), var_1.e), vec3<bool>(true, var_1.c, true)), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, 1i, var_2.a), ~vec3<i32>(1i, -36742i, u_input.b.x) >> ((vec3<u32>(66684u, 0u, arg_1) >> (vec3<u32>(var_0.x, var_0.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<f32>, arg_3: u32) -> vec3<f32> {
    global0 = array<vec3<bool>, 21>();
    let var_0 = -select(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -10470i), reverseBits(vec3<i32>(u_input.b.x, -48007i, u_input.a.x))), vec3<i32>(-u_input.b.x, firstLeadingBit(18058i), _wgslsmith_add_i32(u_input.b.x, 1i)), arg_0), func_3(-1i, 1u), any(select(global0[_wgslsmith_index_u32(max(1u, 1u), 21u)], vec3<bool>(arg_0, arg_0, false), arg_0)));
    global0 = array<vec3<bool>, 21>();
    var var_1 = arg_0;
    let var_2 = firstTrailingBit(vec3<u32>(~arg_1, 74232u, ~arg_3) | ~(~select(vec3<u32>(1u, 26920u, 0u), vec3<u32>(arg_1, arg_1, arg_1), global0[_wgslsmith_index_u32(arg_1, 21u)])));
    return arg_2;
}

fn func_1() -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-190f, 922f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(499f, -420f))))))), any(vec3<bool>(countOneBits(u_input.b.x) < -2683i, true, true)), (-31077i >> (0u % 32u)) != -(~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1407f, _wgslsmith_f_op_f32(f32(-1f) * -329f)))), true);
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(false, 10827u, vec3<f32>(var_0.a.x, 308f, -519f), 2442u)))))));
    global0 = array<vec3<bool>, 21>();
    return 24369i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 21>();
    var var_0 = _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(1u, ~(~(~4294967295u))), ~reverseBits(~_wgslsmith_clamp_u32(21205u, 11225u, 4672u)));
    var var_1 = true;
    let var_2 = _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(), reverseBits(min(u_input.b.x, 2742i))), -vec2<i32>(-4656i, -42614i)));
    let x = u_input.a;
    s_output = StorageBuffer(-138f, ~(min(vec2<u32>(1u, 1u), select(vec2<u32>(50917u, 1u), vec2<u32>(4294967295u, 11849u), vec2<bool>(true, true))) ^ _wgslsmith_div_vec2_u32(vec2<u32>(49963u, 0u), vec2<u32>(4980u, 23159u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -1000f)))))), select(~vec3<u32>(4294967295u, 0u, 77015u), vec3<u32>(~1u, _wgslsmith_clamp_u32(1u, 0u, firstLeadingBit(17948u)), reverseBits(~50594u)), !(u_input.a.x >= var_2) && true), -867f);
}

