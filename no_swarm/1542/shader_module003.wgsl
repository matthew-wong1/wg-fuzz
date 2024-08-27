struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<f32>) -> u32 {
    global0 = array<bool, 8>();
    var var_0 = !vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(~0u), 8u)], any(arg_2), arg_3.x > _wgslsmith_f_op_f32(f32(-1f) * -1224f));
    var var_1 = any(vec2<bool>(var_0.x, all(select(!var_0.zz, select(arg_2, arg_2, vec2<bool>(var_0.x, false)), arg_1.a.a))));
    var_1 = any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4976u, 4294967295u, 1u), vec3<u32>(0u, 61866u, 4452u))), 8u)]), var_0.yz, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, arg_2.x), vec3<bool>(true, arg_1.a.a, arg_1.a.a), vec3<bool>(false, false, global0[_wgslsmith_index_u32(14528u, 8u)])), select(vec3<bool>(true, arg_2.x, true), vec3<bool>(false, arg_1.a.a, var_0.x), vec3<bool>(true, arg_2.x, var_0.x))))));
    var var_2 = min(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(25839u, 69441u), 34591u >> (0u % 32u)), ~vec2<u32>(45949u, 4294967295u), abs(vec2<u32>(1u, 1u))), ~vec2<u32>(_wgslsmith_mult_u32(7631u, 1u), ~1u)) & vec2<u32>(abs(~(~30692u)), 1u);
    return _wgslsmith_dot_vec4_u32(select(~countOneBits(reverseBits(vec4<u32>(var_2.x, 4294967295u, 86403u, 46039u))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 61952u, var_2.x, 0u), ~vec4<u32>(60502u, 4294967295u, 59013u, var_2.x))), !vec4<bool>(false, arg_1.a.a == var_0.x, any(vec4<bool>(arg_2.x, global0[_wgslsmith_index_u32(69872u, 8u)], false, false)), all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 8u)], arg_2.x)))), _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(var_2.x, 36558u, var_2.x, var_2.x))), ~select(vec4<u32>(28244u, var_2.x, 4294967295u, 47060u), vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u), select(vec4<bool>(arg_1.a.a, true, global0[_wgslsmith_index_u32(var_2.x, 8u)], global0[_wgslsmith_index_u32(68302u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(30728u, 8u)], false, var_0.x, true), vec4<bool>(arg_2.x, global0[_wgslsmith_index_u32(var_2.x, 8u)], true, true)))));
}

fn func_2() -> Struct_3 {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = 24691u;
    global0 = array<bool, 8>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) - _wgslsmith_f_op_f32(102f - -1686f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-914f, 214f))))));
    return Struct_3(false, vec3<u32>(~(_wgslsmith_mult_u32(0u, var_0) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, 0u, var_0), vec4<u32>(0u, 29601u, 32405u, 80758u)) % 32u)), reverseBits(1u), 1u), abs(vec2<u32>(func_3(1i, Struct_2(Struct_1(false)), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0, 8u)]), vec4<f32>(-1885f, 2063f, -489f, var_1)), 2560u) & ~vec2<u32>(var_0, var_0)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0, var_0) >> (~var_0 % 32u), 8u)])), Struct_1(false));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_3 {
    global0 = array<bool, 8>();
    let var_0 = func_2();
    let var_1 = u_input.a;
    var var_2 = ~var_0.b.xy;
    var var_3 = select(select(select(vec2<bool>(true, !var_0.d.a.a), vec2<bool>(true, false), vec2<bool>(false, var_2.x < 0u)), vec2<bool>(any(!vec3<bool>(arg_1, false, false)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, 26615u, ~47970u), 8u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(2104u, 8u)], true), vec2<bool>(!arg_1, true), select(select(vec2<bool>(true, true), vec2<bool>(var_0.e.a, var_0.e.a), vec2<bool>(true, var_0.d.a.a)), select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 8u)]), vec2<bool>(true, arg_1), vec2<bool>(arg_1, true)), func_2().d.a.a))), vec2<bool>(var_0.a & false, _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(floor(1375f)))) > _wgslsmith_f_op_f32(-arg_0.x)), select(!(!(!vec2<bool>(var_0.d.a.a, true))), select(vec2<bool>(true, arg_0.x <= arg_0.x), vec2<bool>(true, var_1.x <= 1i), vec2<bool>(select(arg_1, false, global0[_wgslsmith_index_u32(var_0.b.x, 8u)]), true)), true && !arg_1));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2147483647i == firstLeadingBit(~u_input.b | firstTrailingBit(u_input.b)));
    let var_1 = Struct_5(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-692f, -222f) - vec2<f32>(1926f, -962f)))), !any(!vec4<bool>(var_0.a, var_0.a, false, var_0.a))), Struct_4(vec4<bool>(var_0.a, select(true, select(global0[_wgslsmith_index_u32(4294967295u, 8u)], true, global0[_wgslsmith_index_u32(27367u, 8u)]), true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(28867u), ~4294967295u), 8u)], global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(761f, 647f))), global0[_wgslsmith_index_u32(~0u, 8u)]).c.x, 8u)])), true, ~vec2<i32>(1i, u_input.a.x), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(var_1.d, vec2<i32>(max(-718i, 2147483647i), _wgslsmith_sub_i32(var_1.d.x, u_input.a.x)) >> (select(countOneBits(vec2<u32>(0u, 4294967295u)), func_2().c, vec2<bool>(true, true)) % vec2<u32>(32u))), ~(~abs(var_1.a.b.x)));
}

