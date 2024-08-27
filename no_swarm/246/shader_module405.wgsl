struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec4<bool>, 4>;

var<private> global2: f32 = 824f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<i32> {
    var var_0 = vec4<i32>(countOneBits(arg_1.b), arg_1.b, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_1.b, arg_1.b, arg_1.b), arg_1.b ^ _wgslsmith_mult_i32(arg_1.b, arg_1.b)), arg_1.b);
    var_0 = select(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-var_0.x, arg_1.b, _wgslsmith_add_i32(-1i, var_0.x), _wgslsmith_mod_i32(var_0.x, -7658i)), vec4<i32>(~var_0.x, var_0.x, -8382i, ~2147483647i)), _wgslsmith_mod_vec4_i32(countOneBits(~vec4<i32>(arg_1.b, -17123i, 12496i, -85062i)), vec4<i32>(arg_1.b, _wgslsmith_clamp_i32(-2147483647i, arg_1.b, var_0.x), 1i << (arg_1.d.x % 32u), -60525i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b, var_0.x, -2147483647i, var_0.x) >> (vec4<u32>(20696u, u_input.a, u_input.a, 52177u) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-61576i, -6982i, var_0.x, 0i), vec4<i32>(18900i, -20860i, var_0.x, var_0.x)))), firstTrailingBit(vec4<i32>(-2147483647i, 45175i, _wgslsmith_add_i32(-38838i, 28351i), _wgslsmith_mult_i32(arg_1.b, 7911i))) ^ vec4<i32>(countOneBits(var_0.x), _wgslsmith_dot_vec3_i32(var_0.zxw | var_0.zwy, var_0.yzw), arg_1.b, _wgslsmith_mod_i32(reverseBits(var_0.x), 33168i)), select(select(vec4<bool>(true, true, true, true), select(global1[_wgslsmith_index_u32(1u, 4u)], vec4<bool>(true, arg_1.e, arg_0.x, false), !arg_0.x), global1[_wgslsmith_index_u32(~(~arg_1.d.x), 4u)]), global1[_wgslsmith_index_u32(22266u, 4u)], global1[_wgslsmith_index_u32(20938u, 4u)]));
    var var_1 = _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(var_0.zw, vec2<i32>(1i, -4726i))), var_0.yx >> ((arg_1.d.yy | vec2<u32>(4294967295u, 48700u)) % vec2<u32>(32u)))), vec2<i32>(arg_1.b, firstLeadingBit(-var_0.x & 20692i)));
    var var_2 = ~_wgslsmith_div_i32(var_1.x, ~(~_wgslsmith_sub_i32(var_1.x, arg_1.b)));
    var_2 = ~22158i;
    return firstTrailingBit(abs(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1.x, 0i, arg_1.b), vec4<i32>(1i, 17969i, -12383i, arg_1.b)))) & abs(abs(select(vec4<i32>(var_0.x, 0i, var_1.x, var_1.x), abs(vec4<i32>(arg_1.b, arg_1.b, 0i, 18488i)), select(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], vec4<bool>(arg_1.e, true, arg_0.x, false)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(955f));
    global1 = array<vec4<bool>, 4>();
    let var_1 = arg_3;
    let var_2 = firstTrailingBit(vec4<i32>(abs(arg_2.b), -30884i, _wgslsmith_sub_i32(-1i, -8755i), i32(-1i) * -17119i) & (func_3(arg_3.e.xw, Struct_3(1408f, 24253i, arg_0.c, vec3<u32>(arg_1.x, arg_2.a.x, 59938u), var_1.e.x), var_1.e) << (vec4<u32>(arg_3.b.x, arg_3.c, arg_1.x, arg_3.a) % vec4<u32>(32u)))) | -(~(-(~vec4<i32>(arg_0.b, 16636i, arg_2.b, arg_2.b))));
    global1 = array<vec4<bool>, 4>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, arg_0.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    let var_0 = ~(~(~(arg_2 & 6095u)) << (~arg_2 % 32u));
    global2 = _wgslsmith_f_op_f32(-arg_0.x);
    return select(select(select(vec3<bool>(false, arg_1.b, arg_1.b), !vec3<bool>(true, arg_1.b, false), !(!vec3<bool>(arg_1.b, arg_1.b, false))), !vec3<bool>(select(arg_1.b, arg_1.b, arg_1.b), true, arg_1.b), select(select(select(vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(false, arg_1.b, true)), vec3<bool>(arg_1.b, arg_1.b, true), select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(arg_1.b, false, false), arg_1.b)), select(select(vec3<bool>(false, arg_1.b, false), vec3<bool>(arg_1.b, true, false), vec3<bool>(arg_1.b, arg_1.b, true)), select(vec3<bool>(true, arg_1.b, false), vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(true, true, false)), !vec3<bool>(false, false, arg_1.b)), !arg_1.b)), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, arg_1.b, false), arg_1.b), !(!vec3<bool>(false, true, arg_1.b)), all(select(vec3<bool>(arg_1.b, arg_1.b, false), vec3<bool>(true, arg_1.b, arg_1.b), vec3<bool>(true, arg_1.b, false)))), vec3<bool>(true, arg_1.b, true), false), !select(!select(vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, false, true)), select(vec3<bool>(arg_1.b, false, true), vec3<bool>(arg_1.b, false, arg_1.b), arg_1.b), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(false, arg_1.b, arg_1.b), arg_1.b))));
}

fn func_1() -> bool {
    global0 = array<Struct_1, 25>();
    let var_0 = ~(-vec4<i32>(-11514i, 69706i, _wgslsmith_sub_i32(0i, 0i) >> (_wgslsmith_div_u32(u_input.a, 4294967295u) % 32u), ~0i));
    global1 = array<vec4<bool>, 4>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1581f)));
    var var_2 = !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, any(global1[_wgslsmith_index_u32(4294967295u, 4u)])), !any(vec3<bool>(false, true, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), false), vec3<bool>(true, true, true), false), select(func_4(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(-635f, var_0.x, vec4<f32>(380f, -1420f, -447f, 559f), vec3<u32>(u_input.a, u_input.a, u_input.a), true), vec2<u32>(46278u, 6597u), Struct_1(vec3<u32>(u_input.a, 0u, 0u), -6886i), Struct_4(u_input.a, vec3<u32>(u_input.a, u_input.a, 1u), u_input.a, 1000f, vec4<bool>(false, false, false, false)))), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 25u)], true), 52756u), vec3<bool>(true, false, true), vec3<bool>(all(global1[_wgslsmith_index_u32(u_input.a, 4u)]), true, any(vec3<bool>(false, true, false)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    var var_0 = !vec3<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(33765i, -20915i, 0i, 83425i), vec4<i32>(2147483647i, 0i, 0i, 36782i)) | abs(1i)) < -7879i, !all(vec3<bool>(true, true, true)), !any(vec3<bool>(false, false, false)) | !func_1());
    var var_1 = true;
    var_0 = select(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-833f, 407f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1131f, -576f))) * vec2<f32>(_wgslsmith_f_op_f32(141f - 106f), _wgslsmith_f_op_f32(f32(-1f) * -1489f))), Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 25u)], var_0.x), u_input.a), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, -1158f) - vec2<f32>(-470f, 1506f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(591f, -359f), vec2<f32>(-671f, 1135f))))), Struct_2(Struct_1(select(vec3<u32>(4294967295u, 15917u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), var_0.x), 2147483647i), !all(vec4<bool>(true, var_0.x, var_0.x, false))), _wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.a, 1u), ~13148u)), vec3<bool>(false, true, true));
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

