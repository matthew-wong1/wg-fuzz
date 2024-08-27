struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<i32, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_1, 21>();
    let var_0 = Struct_1(_wgslsmith_sub_u32(~(~u_input.a), u_input.a | u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-654f, 1993f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -339f)))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, -1852f)) + _wgslsmith_f_op_f32(-var_0.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(671f)) * 644f))));
    global1 = array<i32, 2>();
    let var_2 = _wgslsmith_sub_vec3_u32(max(~abs(vec3<u32>(13258u, var_0.a, var_0.a)), vec3<u32>(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), abs(1u), 4294967295u)), ~vec3<u32>(reverseBits(var_0.a), u_input.a >> (43966u % 32u), 4294967295u >> (u_input.a % 32u))) << (vec3<u32>(countOneBits(~1u), u_input.a, 0u | _wgslsmith_div_u32(abs(u_input.a), select(0u, u_input.a, arg_0))) % vec3<u32>(32u));
    return _wgslsmith_clamp_u32(var_2.x, u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(var_0.a, var_2.x, 45597u, 1u)), countOneBits(vec4<u32>(0u, u_input.a, 25742u, var_2.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 0u, var_2.x), min(vec4<u32>(var_0.a, 32392u, 12526u, 26737u), vec4<u32>(42729u, 46557u, 1u, 1u)), ~vec4<u32>(u_input.a, 28813u, 82278u, 4294967295u))), (vec4<u32>(var_0.a, u_input.a, 4294967295u, 59440u) & (vec4<u32>(1u, u_input.a, u_input.a, 1376u) ^ vec4<u32>(var_2.x, 4294967295u, var_2.x, var_0.a))) << (~(~vec4<u32>(u_input.a, var_0.a, 44547u, 0u)) % vec4<u32>(32u))));
}

fn func_2() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(60275u & _wgslsmith_add_u32(u_input.a, u_input.a), 21u)];
    let var_1 = Struct_2(Struct_1(~func_3(true), var_0.b, var_0.b.x), Struct_1(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1260f), _wgslsmith_f_op_f32(floor(var_0.b.x))), _wgslsmith_f_op_f32(trunc(var_0.b.x))), vec3<u32>(~(~(u_input.a | var_0.a)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(86249u, 11520u, u_input.a, 4294967295u), ~vec4<u32>(1u, u_input.a, 1u, 67983u)), u_input.a), ~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(9823u, 48470u, 0u), vec3<u32>(var_0.a, 42830u, 4294967295u)))));
    let var_2 = false;
    var var_3 = var_0.b.x;
    global1 = array<i32, 2>();
    return var_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> bool {
    var var_0 = func_2();
    var var_1 = func_2().b.b;
    global0 = array<Struct_1, 21>();
    global1 = array<i32, 2>();
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, arg_1));
    return any(!(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~(~45419u), select(~u_input.a, 4294967295u, !any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1483f, 298f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -697f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-299f, -2612f) - _wgslsmith_f_op_f32(f32(-1f) * -833f)))));
    let var_1 = ~global1[_wgslsmith_index_u32(1u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(46363u, var_0.a) | select(vec2<u32>(u_input.a, 27532u), vec2<u32>(942u, 33679u), vec2<bool>(false, false)), vec2<u32>(u_input.a, max(38289u, 4294967295u))) % 32u), 2u)];
    let var_2 = u_input.a;
    var_0 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, -1320f)), -595f), !vec2<bool>(func_1(var_0.b, var_0.c), true))), _wgslsmith_f_op_f32(-var_0.b.x));
    var var_3 = vec4<u32>(~_wgslsmith_add_u32(~(~var_2), var_0.a), var_2, ~var_2, var_0.a);
    var var_4 = Struct_1(~func_2().b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -2090f) * vec2<f32>(var_0.b.x, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(var_0.b.x, 514f))))), -588f);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, var_4.a, max(countOneBits(vec4<i32>(-1i ^ var_1, -20433i, global1[_wgslsmith_index_u32(~0u, 2u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_2, 2u)], global1[_wgslsmith_index_u32(var_0.a, 2u)], 39232i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], var_1)))), vec4<i32>(-global1[_wgslsmith_index_u32(firstTrailingBit(16529u), 2u)], global1[_wgslsmith_index_u32(~firstLeadingBit(61881u), 2u)], 1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 2147483647i), vec2<i32>(var_1, global1[_wgslsmith_index_u32(var_3.x, 2u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1256f, var_4.c), _wgslsmith_f_op_vec2_f32(-var_4.b)))))));
}

