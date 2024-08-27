struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(23304u, 69512u, 16346u), vec3<u32>(0u, 119706u, 1u), vec3<u32>(21069u, 4294967295u, 27850u), vec3<u32>(50857u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 0u, 61337u), vec3<u32>(1u, 1u, 150778u), vec3<u32>(0u, 77078u, 18730u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec3<u32> {
    global0 = array<vec3<u32>, 8>();
    global0 = array<vec3<u32>, 8>();
    var var_0 = arg_2;
    var var_1 = Struct_1(!(all(vec2<bool>(true, true)) && any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))), _wgslsmith_clamp_u32(47088u, 0u, ~_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec4_u32(arg_1, arg_1))), 37729u, !(_wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(1i, arg_2.x)) != 1i), u_input.b);
    var var_2 = Struct_2(~vec3<u32>(var_1.c, 93289u, firstLeadingBit(~u_input.a)));
    return ~arg_1.yyz;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    return Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, firstTrailingBit(4294967295u), _wgslsmith_mult_u32(u_input.a, u_input.a)), func_3(1193f, ~vec4<u32>(19643u, 1u, 26968u, 15555u), vec2<i32>(u_input.b.x, u_input.b.x))), global0[_wgslsmith_index_u32(~u_input.a, 8u)]));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>) -> u32 {
    global0 = array<vec3<u32>, 8>();
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(select(1866f, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(-2186f, arg_0.x))), true)), arg_0.x));
    let var_1 = func_2(arg_0.zx);
    var var_2 = 83935u;
    var var_3 = _wgslsmith_f_op_f32(arg_0.x - 2668f);
    return 1157u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    global0 = array<vec3<u32>, 8>();
    let var_0 = arg_1.e.x;
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_mod_u32(arg_0, ~u_input.a), ~1u, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-496f, 637f, 1405f) + vec3<f32>(2214f, 294f, 1066f)), ~vec2<u32>(0u, u_input.a))) ^ vec3<u32>(func_3(_wgslsmith_f_op_f32(floor(1692f)), min(vec4<u32>(u_input.a, arg_0, arg_0, 0u), vec4<u32>(u_input.a, arg_1.b, 4294967295u, u_input.a)), u_input.b.zx).x, 4294967295u, 44604u));
    global0 = array<vec3<u32>, 8>();
    var var_2 = var_1;
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1331f, _wgslsmith_f_op_f32(-1054f * 402f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) * 704f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = func_4(func_1(vec3<f32>(_wgslsmith_div_f32(var_0, -432f), 909f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - var_0)), vec2<u32>(10169u, reverseBits(firstTrailingBit(16751u)))), Struct_1(217f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0)))), 4294967295u, abs(~_wgslsmith_add_u32(u_input.a, u_input.a)), select(any(vec4<bool>(true, true, false, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false), _wgslsmith_mod_vec3_i32(~(-u_input.b), u_input.b)), _wgslsmith_div_i32(-2147483647i, ~countOneBits(u_input.b.x)));
    let var_2 = var_1.a.x;
    let var_3 = firstTrailingBit(_wgslsmith_mult_i32(~u_input.b.x, -46966i));
    let var_4 = func_4(firstTrailingBit(_wgslsmith_mult_u32(var_1.a.x, func_3(var_0, vec4<u32>(1u, 34014u, 4294967295u, 24339u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), -vec2<i32>(u_input.b.x, -1i)).x)), Struct_1(true, 7294u, _wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(u_input.a | u_input.a, 8u)], vec3<u32>(~4294967295u, 69976u >> (var_1.a.x % 32u), var_1.a.x)), true, ~vec3<i32>(_wgslsmith_clamp_i32(var_3, 21464i, 1i), u_input.b.x, min(u_input.b.x, 21944i))), select(abs(firstTrailingBit(2147483647i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(10130i, -17822i, var_3, 17384i), vec4<i32>(6575i, u_input.b.x, var_3, var_3)) & ~_wgslsmith_div_i32(u_input.b.x, 10738i), all(vec2<bool>(true, true))));
    let var_5 = reverseBits(-13042i);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zy, u_input.b.xz), -u_input.b.yz) | abs(select(u_input.b.zy, u_input.b.xy, vec2<bool>(false, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), false)))));
}

