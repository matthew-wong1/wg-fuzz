struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(45037u, 4130u, 0u), vec3<u32>(17507u, 37301u, 4751u), vec3<u32>(48865u, 82605u, 49650u), vec3<u32>(86103u, 0u, 1u));

var<private> global2: array<vec3<bool>, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_2 {
    let var_0 = ~u_input.b;
    var var_1 = firstTrailingBit(_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(4133u, 34678u, 0u)), abs(u_input.d.x)), 33117u & u_input.a.x)) ^ u_input.d.x;
    global1 = array<vec3<u32>, 5>();
    global2 = array<vec3<bool>, 22>();
    global2 = array<vec3<bool>, 22>();
    return Struct_2(~vec3<u32>(~u_input.d.x, _wgslsmith_mod_u32(2808u, u_input.a.x), 1u) >> (~vec3<u32>(firstLeadingBit(23053u), 4294967295u, 1u) % vec3<u32>(32u)), !(select(true, var_0.x <= -20156i, !global0.x) | select(global0.x, all(vec4<bool>(global0.x, false, true, global0.x)), global0.x)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> vec4<f32> {
    var var_0 = vec3<u32>(min(27677u, 1u), firstLeadingBit(~arg_0.a.x) | ~arg_0.a.x, arg_0.a.x) | (~vec3<u32>(~2756u, ~32354u, 0u) >> (((global1[_wgslsmith_index_u32(1u, 5u)] | u_input.d) << (_wgslsmith_sub_vec3_u32(arg_0.a << (vec3<u32>(54385u, 21166u, 14510u) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, arg_0.a.x, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global1 = array<vec3<u32>, 5>();
    var var_1 = arg_0;
    var_1 = Struct_2(vec3<u32>(u_input.a.x, _wgslsmith_add_u32(1u, arg_0.a.x) ^ 71583u, var_0.x), var_1.b);
    let var_2 = func_1();
    return vec4<f32>(-1763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 - arg_1)))))), _wgslsmith_f_op_f32(756f - -1000f), _wgslsmith_f_op_f32(-arg_1));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global2 = array<vec3<bool>, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(334f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec3<u32>(57112u, arg_2.a.x, arg_2.a.x), false), -1351f)).x * _wgslsmith_f_op_f32(select(-1377f, _wgslsmith_f_op_f32(-1522f * 1000f), true)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -100f), -137f))))));
    global2 = array<vec3<bool>, 22>();
    global2 = array<vec3<bool>, 22>();
    global2 = array<vec3<bool>, 22>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(func_1(), -1000f));
    let var_1 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(u_input.a.zxy), vec3<u32>(18850u, u_input.d.x, u_input.a.x)), ~(vec3<u32>(u_input.d.x, 53277u, u_input.d.x) & vec3<u32>(20013u, 0u, u_input.d.x))), ~(~(~vec3<u32>(u_input.d.x, 41101u, u_input.d.x)))), ~func_3(any(vec4<bool>(global0.x, global0.x, true, global0.x)), func_1(), Struct_2(global1[_wgslsmith_index_u32(1u, 5u)], true)) != abs(~(~u_input.d.x)));
    global2 = array<vec3<bool>, 22>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f + _wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(trunc(-576f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -387f))), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-612f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -1481f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 133f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f))));
    global2 = array<vec3<bool>, 22>();
    global0 = !vec2<bool>(true, any(select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, true), vec2<bool>(global0.x, true), vec2<bool>(false, global0.x)), global0.x)));
    let var_2 = ~vec4<u32>(_wgslsmith_sub_u32(~max(u_input.d.x, 4294967295u), var_1.a.x), abs(~u_input.a.x), func_1().a.x, 34769u ^ firstLeadingBit(_wgslsmith_mod_u32(u_input.d.x, 1u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, 491f, -373f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 2181f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1381f, 570f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -165f, -219f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, var_0.x, -525f, 901f) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -198f), _wgslsmith_f_op_f32(685f * 321f), -891f, 956f))))));
    global0 = vec2<bool>(true, func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_div_vec4_u32(firstLeadingBit(u_input.a), vec4<u32>(u_input.d.x, 0u, u_input.a.x, 12543u))), var_2.ww, vec2<i32>(u_input.b.x, select(-_wgslsmith_add_i32(u_input.b.x, 0i), _wgslsmith_add_i32(~u_input.c, -12329i), any(vec3<bool>(true, true, true)))), 1f);
}

