struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<f32> {
    global0 = array<i32, 13>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~abs(arg_0.c.x), 13u)], 2147483647i);
    let var_2 = global0[_wgslsmith_index_u32(arg_1.c.x, 13u)];
    var_0 = Struct_1(113f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, -172f, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(arg_1.b.x - arg_1.a)), _wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, arg_0.b.x, -172f, arg_0.a), vec4<f32>(arg_0.b.x, arg_1.b.x, -1266f, 749f)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), true)))), firstTrailingBit(_wgslsmith_mult_vec2_u32(~var_0.c, vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), arg_0.c.x << (83624u % 32u)))));
    return _wgslsmith_f_op_vec4_f32(min(arg_1.b, arg_1.b));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<i32, 13>();
    let var_0 = Struct_1(1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1512f, 869f, -576f, -608f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1200f, 1000f, 389f, -1245f) + vec4<f32>(167f, -1307f, -1575f, 857f)), true)) + _wgslsmith_f_op_vec4_f32(func_3(Struct_1(-1325f, vec4<f32>(-1061f, -690f, 1849f, -1025f), vec2<u32>(arg_0, 1u)), Struct_1(-2224f, vec4<f32>(-102f, 273f, -605f, -917f), vec2<u32>(1u, arg_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 25446u, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), 1u ^ arg_0)))), ~countOneBits(~(vec2<u32>(66322u, 0u) & vec2<u32>(21338u, arg_0))));
    var var_1 = _wgslsmith_f_op_f32(-1286f + _wgslsmith_f_op_f32(abs(var_0.a)));
    let var_2 = _wgslsmith_sub_vec3_i32(~u_input.c.zwy, vec3<i32>(-firstLeadingBit(-2147483647i), ~firstLeadingBit(1i), global0[_wgslsmith_index_u32(arg_0, 13u)]) << (abs(~countOneBits(vec3<u32>(4294967295u, var_0.c.x, 0u))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.b.x, -748f)))) * 178f) - _wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-187f)) - _wgslsmith_div_f32(var_0.b.x, -749f))), 146f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a, var_0.b.x, -429f, var_0.a), var_0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.b, vec4<f32>(-357f, var_0.b.x, -354f, 752f), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, 876f, -445f, var_0.a), vec4<f32>(1309f, -1109f, -487f, -785f))))))), vec2<u32>(~var_0.c.x, _wgslsmith_mult_u32(var_0.c.x, _wgslsmith_clamp_u32(~17337u, ~var_0.c.x, firstLeadingBit(4959u)))));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = func_2(select(_wgslsmith_mod_u32(firstTrailingBit(20549u), 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 114971u, 0u)), !select(true, true, false)) ^ ~1u);
    let var_1 = func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(var_0.c.x, var_0.c.x), countOneBits(var_0.c.x), countOneBits(var_0.c.x) ^ 1u, var_0.c.x), ~vec4<u32>(17981u, _wgslsmith_div_u32(1u, 41305u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 26002u, 1u), vec3<u32>(18174u, 91941u, 178u)), 0u))).c.x;
    let var_2 = func_2(_wgslsmith_clamp_u32(~firstLeadingBit(var_0.c.x ^ var_1), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(var_0.c.x, var_0.c.x))), ~(~countOneBits(var_1))));
    var var_3 = true;
    let var_4 = firstLeadingBit(vec3<i32>(u_input.a, -1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(27824i, arg_2.x, arg_1.x, arg_1.x), countOneBits(u_input.c))));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_0 = vec4<i32>(u_input.c.x, -global0[_wgslsmith_index_u32(~45527u, 13u)], firstTrailingBit(-13372i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a ^ global0[_wgslsmith_index_u32(74357u, 13u)], _wgslsmith_sub_i32(1i, u_input.a)), u_input.a)) & countOneBits(u_input.c);
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    var var_1 = !vec3<bool>(!(_wgslsmith_f_op_f32(func_1(-704f, var_0.zx, u_input.c.xw)) != _wgslsmith_f_op_f32(min(355f, -2571f))), true, any(vec4<bool>(false, false, all(vec4<bool>(true, false, false, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1079f, -1368f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1009f, -283f, 1302f))))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1485f * 407f), -578f, !var_1.x)), -327f, _wgslsmith_f_op_f32(sign(-711f)))));
}

