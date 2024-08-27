struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(1u, 1418u, 67461u, 1u), vec4<u32>(14129u, 25126u, 57287u, 80898u), vec4<u32>(0u, 12333u, 42107u, 58238u), vec4<u32>(0u, 4294967295u, 34744u, 4294967295u));

var<private> global1: Struct_2;

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> u32 {
    var var_0 = ~(vec2<u32>(~_wgslsmith_add_u32(u_input.b, u_input.b), 40413u) >> (vec2<u32>(u_input.b, 67554u) % vec2<u32>(32u)));
    let var_1 = global1.a;
    global0 = array<vec4<u32>, 4>();
    var var_2 = global2[_wgslsmith_index_u32(min(83382u, abs(_wgslsmith_mult_u32(u_input.b, countOneBits(1u)))), 12u)];
    var var_3 = 1u;
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u << (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(40848u, 16124u), vec2<u32>(u_input.b, var_0.x)), ~0u) % 32u)), 1u);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = ~_wgslsmith_mod_u32(func_1(), ~u_input.b) >> (max(_wgslsmith_clamp_u32(~1u, u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u) | abs(vec2<u32>(u_input.b, 0u)), vec2<u32>(u_input.b ^ u_input.b, 0u))) % 32u);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -394f)))), _wgslsmith_f_op_f32(floor(268f)), !any(vec3<bool>(global1.a.a, global1.a.a, global1.a.a))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(2081f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -572f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(max(var_1, -1373f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-340f))))), -913f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, 901f, var_1, var_1), vec4<f32>(var_1, var_1, 2142f, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-865f, var_1, -865f, var_1) * vec4<f32>(var_1, var_1, var_1, 161f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(538f, 177f, -690f, 1406f))))), vec4<f32>(-396f, -127f, _wgslsmith_f_op_f32(f32(-1f) * -428f), -1141f))));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(0u), _wgslsmith_sub_u32(0u, firstLeadingBit(reverseBits(u_input.b)))), ~var_0 | u_input.b);
    var var_4 = select(!(!select(vec2<bool>(global1.a.a, arg_0.a), vec2<bool>(false, global1.a.a), vec2<bool>(false, arg_0.a))), select(vec2<bool>(true != !arg_0.a, global1.a.a), select(select(vec2<bool>(true, true), !vec2<bool>(false, global1.a.a), all(vec2<bool>(global1.a.a, global1.a.a))), !(!vec2<bool>(global1.a.a, false)), vec2<bool>(true, arg_0.a)), select(select(vec2<bool>(global1.a.a, global1.a.a), !vec2<bool>(arg_0.a, true), select(vec2<bool>(false, global1.a.a), vec2<bool>(global1.a.a, global1.a.a), true)), select(vec2<bool>(false, true), vec2<bool>(arg_0.a, true), arg_0.a), !select(vec2<bool>(false, global1.a.a), vec2<bool>(global1.a.a, false), vec2<bool>(false, arg_0.a)))), !vec2<bool>(all(!global2[_wgslsmith_index_u32(var_0, 12u)]), !arg_0.a));
    return _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(1u, var_0), u_input.b), firstLeadingBit(vec2<u32>(u_input.b, u_input.b) ^ min(vec2<u32>(49335u, u_input.b), vec2<u32>(var_0, u_input.b)))) >> (max(vec2<u32>(min(~4294967295u, abs(u_input.b)), ~_wgslsmith_sub_u32(var_0, 7125u)), ~vec2<u32>(abs(u_input.b), var_0)) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    global1 = Struct_2(global1.a);
    var var_0 = _wgslsmith_mod_i32(u_input.a | _wgslsmith_mod_i32(-2147483647i, -12241i), 3435i);
    var var_1 = ~vec2<u32>(~19352u, 79208u);
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(var_1.x, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 4294967295u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), func_3(Struct_1(true, 11860i)))), _wgslsmith_mult_vec2_u32(~(vec2<u32>(var_1.x, u_input.b) | vec2<u32>(1624u, var_1.x)), max(vec2<u32>(var_1.x, 42305u), vec2<u32>(var_1.x, 11465u)))), firstLeadingBit(u_input.b | _wgslsmith_add_u32(4294967295u, u_input.b)));
    var var_3 = abs(abs(global0[_wgslsmith_index_u32(~(var_2.x >> (var_1.x % 32u)), 4u)] << (global0[_wgslsmith_index_u32(~firstLeadingBit(17621u), 4u)] % vec4<u32>(32u))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(1u, min(~(u_input.b & u_input.b), u_input.b) ^ (min(firstLeadingBit(1u), _wgslsmith_sub_u32(u_input.b, u_input.b)) >> (_wgslsmith_mod_u32(1u, 8163u) % 32u)));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(4294967295u, var_0.x) | (vec2<u32>(u_input.b, 0u) ^ vec2<u32>(4294967295u, 8090u))), ~firstTrailingBit(vec2<u32>(func_1(), ~0u))), 12u)];
    var var_2 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(func_1(), max(var_0.x, u_input.b), ~func_2(vec3<f32>(-1000f, -755f, -181f))), vec3<u32>(firstTrailingBit(u_input.b), var_0.x, max(u_input.b, 23291u)) << (countOneBits(max(vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.b, 3368u, 2678u))) % vec3<u32>(32u)));
    var var_3 = Struct_1(!var_1.x, _wgslsmith_sub_i32(u_input.a, _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(~(-18384i), 60774i))));
    global2 = array<vec4<bool>, 12>();
    var_2 = min(abs(select(vec3<u32>(firstLeadingBit(4294967295u), _wgslsmith_div_u32(61845u, 4294967295u), reverseBits(10708u)), ~vec3<u32>(70805u, var_0.x, var_0.x), vec3<bool>(true, var_3.a, any(vec3<bool>(global1.a.a, var_3.a, false))))), vec3<u32>(u_input.b, 15413u, func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1640f), _wgslsmith_f_op_f32(1459f * 992f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -613f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(-194f)), _wgslsmith_f_op_f32(floor(-230f)), _wgslsmith_f_op_f32(-565f + -1354f), 620f)));
}

