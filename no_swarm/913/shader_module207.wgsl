struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(2147483647i, 2147483647i, 2147483647i, -21472i, -29242i, i32(-2147483648), 35844i, 1i, -31956i, 49932i, -1i, -39196i, -9248i, 0i, 19001i, 19178i, 41857i);

var<private> global1: array<Struct_1, 7>;

var<private> global2: f32 = -211f;

var<private> global3: array<i32, 30> = array<i32, 30>(2147483647i, 0i, 4801i, 5568i, i32(-2147483648), 0i, 0i, 2147483647i, -47251i, -11259i, -43809i, 6765i, -9618i, -66903i, 1i, 1i, -37689i, 0i, -16881i, 13990i, 2147483647i, -1i, 0i, 70100i, 1i, 0i, 1i, 1i, i32(-2147483648), 42161i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = select(select(~4294967295u, ~(~(~u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-339f)) * _wgslsmith_f_op_f32(1148f * -1480f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1459f - -393f))), u_input.c, !arg_0.x);
    global0 = array<i32, 17>();
    global1 = array<Struct_1, 7>();
    global3 = array<i32, 30>();
    global3 = array<i32, 30>();
    return global1[_wgslsmith_index_u32(var_0, 7u)];
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_4(~(~abs(~1u)));
    global3 = array<i32, 30>();
    var var_1 = countOneBits(((vec2<u32>(1u, 1u) | _wgslsmith_mod_vec2_u32(vec2<u32>(3256u, 22263u), vec2<u32>(var_0.a, 0u))) | firstLeadingBit(select(vec2<u32>(69972u, u_input.c), vec2<u32>(1u, var_0.a), false))) | vec2<u32>(4294967295u, reverseBits(~u_input.c)));
    var var_2 = vec4<u32>(~_wgslsmith_clamp_u32(firstTrailingBit(var_1.x), select(abs(59238u), _wgslsmith_div_u32(u_input.c, 1u), any(vec4<bool>(false, true, false, false))), ~(26263u | u_input.c)), u_input.c, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(~max(var_1.x, var_1.x), 41199u & u_input.c)), firstLeadingBit(var_1.x));
    var var_3 = select(vec4<bool>(true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), 1i < ~global0[_wgslsmith_index_u32(0u, 17u)]), select(!vec4<bool>(true, any(vec3<bool>(false, true, false)), true, any(vec3<bool>(false, false, true))), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, 1u != u_input.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), true));
    return arg_0.x;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    global0 = array<i32, 17>();
    let var_0 = select(vec3<bool>(!(arg_0 & arg_0) & true, select(select(arg_0 | arg_0, arg_0, true), false, any(vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(1208f, -1290f, -1000f, -2200f))) * _wgslsmith_f_op_f32(sign(-1246f))) <= 139f), select(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, true), select(false, false, arg_0)), select(vec3<bool>(true || arg_0, !arg_0, true), select(vec3<bool>(false, false, arg_0), select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, true), false), !vec3<bool>(arg_0, false, arg_0)), true), vec3<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, false)), _wgslsmith_mult_u32(4294967295u, u_input.c) >= _wgslsmith_div_u32(u_input.c, 80311u), arg_0)), true);
    let var_1 = arg_0;
    let var_2 = -(~(-global3[_wgslsmith_index_u32(1u, 30u)]));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-2721f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1352f, -249f, true))))) + _wgslsmith_f_op_f32(abs(1000f))), 2105f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - 1346f))))));
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(123f, var_3.x)))), _wgslsmith_f_op_vec2_f32(-var_3.xy), any(select(var_0, select(var_0, var_0, var_1), arg_0 | arg_0))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: Struct_5) -> u32 {
    var var_0 = min(vec3<u32>(arg_0.b.x, _wgslsmith_mod_u32(arg_3.a.a, _wgslsmith_mult_u32(~arg_1.a.a, max(arg_0.b.x, arg_0.b.x))), ~4294967295u), ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(30952u, arg_3.a.a, arg_0.b.x), vec3<u32>(20407u, arg_1.a.a, 3193u)), _wgslsmith_mod_vec3_u32(vec3<u32>(32712u, u_input.c, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c)) << (~vec3<u32>(4294967295u, 1u, 3193u) % vec3<u32>(32u))));
    return ~reverseBits(22483u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_sub_u32(u_input.c, min(u_input.c & (~u_input.c >> (u_input.c % 32u)), u_input.c));
    var var_1 = func_4(Struct_3(~u_input.b.yy, ~firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 73376u), vec2<u32>(u_input.c, u_input.c))), func_1(vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(957f, -1553f), vec2<f32>(851f, 469f), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true)) * vec2<f32>(1000f, -116f)))), Struct_5(Struct_4(u_input.c), Struct_1(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)))), u_input.b.yzz, Struct_5(Struct_4(~4294967295u & (u_input.c ^ u_input.c)), global1[_wgslsmith_index_u32(u_input.c, 7u)]));
    var var_2 = Struct_1(false & all(vec2<bool>(true, true)));
    var_0 = ~countOneBits(abs(reverseBits(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(u_input.d.x, 2147483647i | global3[_wgslsmith_index_u32(1u, 30u)]), u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.b, -u_input.b)) ^ abs(reverseBits(u_input.b.xyy)), -(u_input.b | firstLeadingBit(abs(u_input.b))));
}

