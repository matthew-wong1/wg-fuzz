struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<vec3<bool>, 9>;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = arg_0.c;
    let var_1 = _wgslsmith_add_u32(1u, (arg_0.b >> (arg_0.b % 32u)) | ~(~(~arg_0.b)));
    global1 = array<vec3<bool>, 9>();
    return _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(var_0 + arg_0.c)), -1347f))), true));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<f32>) -> vec3<bool> {
    var var_0 = arg_3.xyz;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(57463u, 11u)], Struct_1(~_wgslsmith_mod_i32(arg_0.x | 0i, -u_input.a), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f * _wgslsmith_f_op_f32(round(arg_3.x))) * _wgslsmith_f_op_f32(sign(-1373f))), u_input.d.x, true), vec2<bool>(all(!select(vec4<bool>(false, false, true, arg_2.x), vec4<bool>(false, true, arg_2.x, arg_2.x), true)), true), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(max(_wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(0u, u_input.b.x)), u_input.b.x), abs(~u_input.b.x)), 11u)]);
    let var_2 = ~0i;
    return vec3<bool>(all(!(!select(vec4<bool>(true, arg_2.x, arg_2.x, var_1.d.e), vec4<bool>(true, var_1.d.e, false, true), true))), var_1.d.e | var_1.a.e, arg_2.x);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global2 = array<Struct_1, 22>();
    let var_0 = select(u_input.b.zyw, ~_wgslsmith_sub_vec3_u32(arg_0, vec3<u32>(max(4294967295u, 0u), 1u, 1u)), func_3(firstLeadingBit(reverseBits(vec4<i32>(u_input.d.x, 0i, -41588i, u_input.a) >> (vec4<u32>(u_input.b.x, 0u, 1u, arg_0.x) % vec4<u32>(32u)))), -737f, vec3<bool>(true, true, true), vec4<f32>(341f, _wgslsmith_f_op_f32(sign(-832f)), -359f, _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, 68325u), 22u)])))));
    global0 = array<Struct_1, 11>();
    global1 = array<vec3<bool>, 9>();
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-767f, 596f)), _wgslsmith_f_op_f32(trunc(-766f)))))));
    return 23144u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-2147483647i, _wgslsmith_mult_u32(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(50704u, u_input.b.x))), ~func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b.zww))), 296f, _wgslsmith_add_i32(-(-1i ^ _wgslsmith_mod_i32(u_input.c.x, -5110i)), 16302i), false);
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_1 = select(vec4<bool>(var_0.e, select(any(vec2<bool>(var_0.e, var_0.e)), true, !var_0.e), !(_wgslsmith_f_op_f32(floor(var_0.c)) == -574f), any(select(vec2<bool>(false, false), vec2<bool>(var_0.e, var_0.e), !var_0.e))), !select(vec4<bool>(!var_0.e, true, all(vec2<bool>(true, false)), var_0.e), !select(vec4<bool>(true, true, var_0.e, var_0.e), vec4<bool>(true, false, true, true), vec4<bool>(true, true, var_0.e, var_0.e)), var_0.e), false);
    global1 = array<vec3<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(31625u, ~(~4294967295u)), ~(-vec3<i32>(1i, countOneBits(var_0.a), ~10118i)), select(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 98295u << (u_input.b.x % 32u)), abs(~vec2<u32>(u_input.b.x, 4294967295u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.b, var_0.b), abs(vec2<u32>(u_input.b.x, var_0.b)), u_input.b.xz) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.wx, u_input.b.xy), vec2<u32>(u_input.b.x, 1u)), 20697u <= (_wgslsmith_mod_u32(49357u, u_input.b.x) >> (_wgslsmith_mult_u32(3201u, 1u) % 32u))));
}

