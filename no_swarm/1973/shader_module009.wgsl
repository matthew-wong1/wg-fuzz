struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> bool {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(-65584i, 19606i, 1i) ^ firstTrailingBit(vec3<i32>(-18086i, -1i, u_input.b.x)), vec3<i32>(~(-1i), 46104i >> (u_input.e.x % 32u), 1i >> (0u % 32u))) | vec3<i32>(countOneBits(~(-2147483647i)), 1i | u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(8074i, 1i, -2147483647i), -vec3<i32>(u_input.d, u_input.a, u_input.a))));
    let var_1 = -1530f;
    var_0 = Struct_1(abs(~vec3<i32>(41306i >> (0u % 32u), -1i, abs(var_0.a.x))));
    let var_2 = false;
    global0 = array<vec2<bool>, 27>();
    return var_2;
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<vec2<bool>, 27>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1065f, arg_0, false)))))), -873f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-186f, 401f, -597f), vec3<f32>(-467f, arg_0, 1384f))), vec3<f32>(_wgslsmith_div_f32(-102f, -1000f), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(-1726f * var_0)))));
    var var_2 = ~vec3<u32>(reverseBits(~abs(67690u)), ~0u, min(1u, ~1u));
    global0 = array<vec2<bool>, 27>();
    return !(!select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), !any(global0[_wgslsmith_index_u32(0u, 27u)])));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> vec3<bool> {
    let var_0 = select(select(!(!(!vec3<bool>(false, arg_0.x, true))), vec3<bool>(any(vec4<bool>(arg_0.x, true, false, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, false, arg_0.x))), (arg_0.x & arg_0.x) || arg_0.x), !(func_2(35104u, Struct_3(1329f)) != !arg_0.x)), select(func_3(_wgslsmith_f_op_f32(abs(-1399f)), arg_1), vec3<bool>(false, arg_0.x || false, (arg_0.x | arg_0.x) | arg_0.x), any(select(vec4<bool>(true, arg_0.x, true, arg_0.x), !vec4<bool>(true, false, true, arg_0.x), arg_0.x))), vec3<bool>(true, func_2(~u_input.c, Struct_3(_wgslsmith_f_op_f32(1816f - -1436f))), arg_0.x));
    let var_1 = Struct_2(~vec3<u32>(_wgslsmith_div_u32(u_input.e.x, min(u_input.c, u_input.c)), _wgslsmith_dot_vec4_u32(countOneBits(u_input.e), vec4<u32>(arg_2.x, 0u, u_input.c, 1u)), countOneBits(arg_2.x)), func_3(_wgslsmith_f_op_f32(select(1194f, _wgslsmith_f_op_f32(exp2(1f)), true)), arg_1), Struct_1(_wgslsmith_mod_vec3_i32(arg_1.a, arg_1.a)), _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.c, ~44463u)) > _wgslsmith_add_u32(u_input.e.x, _wgslsmith_add_u32(arg_2.x, ~36299u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1932f), -357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f + -1360f))))));
    var var_3 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1040f)))))), abs(u_input.d), reverseBits(-41198i), var_1.c.a, var_2.yz);
    let var_4 = _wgslsmith_clamp_vec3_i32(var_1.c.a, var_1.c.a, -(vec3<i32>(1i, 12145i, 22503i) ^ abs(var_3.d)) ^ vec3<i32>(firstLeadingBit(28975i) ^ ~u_input.b.x, countOneBits(0i ^ var_3.b), var_3.c));
    return vec3<bool>(false, false, !var_1.d | arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 27>();
    var var_0 = !all(select(func_1(vec2<bool>(true, true), Struct_1(vec3<i32>(0i, -11682i, u_input.b.x)), vec3<u32>(u_input.c, u_input.e.x, u_input.c), u_input.b.x | u_input.b.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global0 = array<vec2<bool>, 27>();
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-222f, _wgslsmith_f_op_f32(f32(-1f) * -2199f)) * _wgslsmith_f_op_f32(1400f * _wgslsmith_f_op_f32(select(-330f, 921f, false))))), 33913i, u_input.a, ~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -1i, u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(744f, -1010f))))) * vec2<f32>(1f, 1f)));
    var var_2 = Struct_3(-1336f);
    var_0 = true;
    var var_3 = 2219u;
    var_2 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(15792u, firstLeadingBit(min(~u_input.c, 0u)) >> (u_input.c % 32u));
}

