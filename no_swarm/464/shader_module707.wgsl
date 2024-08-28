struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, true, 951f, true), Struct_1(false, true, -1000f, true), Struct_1(true, false, 1316f, false), Struct_1(true, false, -1000f, true), Struct_1(false, true, 447f, false), Struct_1(false, false, -3857f, true), Struct_1(true, true, 625f, false), Struct_1(true, true, -489f, false), Struct_1(true, false, 2298f, false), Struct_1(true, false, 156f, true), Struct_1(false, true, -1820f, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(343f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c)))), reverseBits(_wgslsmith_div_u32(max(u_input.d.x, 6007u), ~49757u)) <= (_wgslsmith_clamp_u32(u_input.e.x, 1u, 93892u) | ~(~16311u)));
    let var_1 = arg_0;
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    return ~(((u_input.b | -16588i) ^ u_input.c.x) & u_input.c.x);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> u32 {
    return ~(~u_input.d.x);
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = func_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(14859u, 4294967295u)), max(u_input.d.xw, u_input.d.zz)), 20472u), _wgslsmith_clamp_i32(~arg_0.x, firstLeadingBit(~_wgslsmith_sub_i32(-41073i, 11642i)), max(abs(-1i), max(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(arg_0.x, 2147483647i)), func_2(Struct_1(true, true, 1000f, true))))), global0[_wgslsmith_index_u32(1u, 11u)]);
    let var_1 = 4294967295u;
    var var_2 = Struct_1(true, all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, false, 62303u != u_input.d.x), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -567f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1072f, _wgslsmith_f_op_f32(step(-575f, 2100f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2360f * 1372f), _wgslsmith_f_op_f32(step(157f, -266f)))) < 944f);
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.c, 385f, _wgslsmith_f_op_f32(-621f - var_2.c))));
    var_2 = Struct_1(true, false, 504f, arg_0.x == ~u_input.a.x);
    return _wgslsmith_add_vec2_u32(u_input.e << (vec2<u32>(abs(firstLeadingBit(828u)), u_input.e.x) % vec2<u32>(32u)), countOneBits(vec2<u32>(~_wgslsmith_mod_u32(u_input.d.x, 1u), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, 1000f, -1000f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2139f, -656f, 1949f), vec3<f32>(1793f, 917f, -175f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1499f, -1733f, -434f) + vec3<f32>(-1427f, 1855f, -259f)))))));
    global0 = array<Struct_1, 11>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.d.x), func_1(u_input.a)) ^ ~u_input.d.xy, abs(_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.d.x, 53889u), vec2<u32>(24648u, 7589u), true), vec2<u32>(u_input.d.x, u_input.e.x)))), _wgslsmith_mult_vec2_u32(u_input.d.zw, vec2<u32>(_wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, _wgslsmith_sub_u32(u_input.e.x, u_input.d.x)), 53610u))), 11u)];
    var var_2 = Struct_1(!(!all(!vec2<bool>(true, var_1.a))), !(any(vec4<bool>(var_1.d, var_1.d, false, var_1.d)) && var_1.d), -154f, true);
    let var_3 = Struct_1(var_1.a, true, _wgslsmith_f_op_f32(-var_2.c), any(vec3<bool>(!(!var_2.a), true, false)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * 218f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(922f, 1f, any(vec2<bool>(var_3.a, var_2.a)))))));
    var var_5 = !vec2<bool>(7920u == _wgslsmith_mod_u32(u_input.e.x, abs(u_input.e.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(~firstTrailingBit(1u), firstTrailingBit(16657u | u_input.d.x), func_1(~vec3<i32>(32200i, 0i, -1i)).x), firstLeadingBit(u_input.d.yzz)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c, 1014f), var_0.yx, var_1.d)), var_0.zz)))), vec2<u32>(u_input.e.x, 1u));
}

