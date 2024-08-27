struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(-281f)), arg_1.x, -360f))));
    var var_1 = _wgslsmith_div_f32(var_0.a.a.x, arg_1.x);
    var var_2 = Struct_1(select(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(39935u, 32u)], true))), !(!select(vec2<bool>(arg_2, false), vec2<bool>(true, false), arg_2)), true), !vec3<bool>(arg_2, true, true), arg_0.x);
    return ~(arg_0.x & 9890u);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    var var_0 = select(vec3<bool>(!any(!arg_1.yy), !arg_1.x, !global0[_wgslsmith_index_u32(u_input.a, 32u)]), !arg_1, vec3<bool>(!select(false, global0[_wgslsmith_index_u32(~u_input.a, 32u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)], arg_1.x))), false, all(vec2<bool>(true, any(arg_1)))));
    var_0 = select(!vec3<bool>(true, select(var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(55079u, u_input.a), 32u)], !global0[_wgslsmith_index_u32(77399u, 32u)]), false), !vec3<bool>(any(arg_1.xz), true, all(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(global0[_wgslsmith_index_u32(52639u, 32u)], arg_1.x, false, var_0.x), false))), any(vec2<bool>(select(!global0[_wgslsmith_index_u32(62954u, 32u)], any(var_0.yz), var_0.x), false)));
    let var_1 = Struct_1(vec2<bool>(true && (~u_input.a == _wgslsmith_div_u32(4294967295u, u_input.a)), arg_1.x), arg_1, ~(~(~u_input.a)));
    global0 = array<bool, 32>();
    var_0 = select(select(arg_1, select(arg_1, vec3<bool>(!arg_1.x, true, !arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x)), select(!arg_1, var_1.b, all(arg_1.xz))), !vec3<bool>(_wgslsmith_clamp_i32(2147483647i, -426i, 1i) == 0i, !any(vec4<bool>(var_1.a.x, arg_1.x, true, arg_1.x)), select(global0[_wgslsmith_index_u32(41054u, 32u)] | global0[_wgslsmith_index_u32(0u, 32u)], any(vec2<bool>(true, var_0.x)), !global0[_wgslsmith_index_u32(var_1.c, 32u)])), vec3<bool>(true, -2147483647i < arg_0, true & arg_1.x));
    return 1u;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    let var_0 = min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-8166i, -(~2147483647i)), vec2<i32>(70268i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 25846i), vec2<i32>(-1i, 0i)), 1i)), -vec2<i32>(1i, 1i)), firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, -18822i), -vec2<i32>(0i, -1i)))));
    var var_1 = ~(~vec4<u32>(29854u, func_2(vec3<u32>(u_input.a, 0u, 4294967295u), vec4<f32>(-572f, arg_2, arg_0.x, arg_1.a.a.x), true, vec3<u32>(u_input.a, u_input.a, u_input.a)), 68557u, ~u_input.a) ^ (vec4<u32>(~u_input.a, u_input.a, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 24371u))) | abs(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))));
    let var_2 = vec3<bool>(all(arg_3.yz), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(54113u, ~_wgslsmith_div_u32(~0u, countOneBits(u_input.a))), 32u)], true);
    var_1 = ~firstTrailingBit(vec4<u32>(var_1.x, func_3(var_0.x, vec3<bool>(arg_3.x, arg_3.x, true)), ~var_1.x, 1u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~var_1.x, 22818u), ~(var_1.x | u_input.a), u_input.a >> (u_input.a % 32u), _wgslsmith_div_u32(max(var_1.x, u_input.a), abs(13417u))), abs(vec4<u32>(~var_1.x, var_1.x | 1u, ~u_input.a, u_input.a))) % vec4<u32>(32u));
    let var_3 = ~(-(~(vec3<i32>(1i, var_0.x, -1i) | vec3<i32>(var_0.x, var_0.x, -2147483647i))) >> (~(firstLeadingBit(vec3<u32>(39894u, u_input.a, u_input.a)) ^ _wgslsmith_div_vec3_u32(var_1.wzy, vec3<u32>(0u, u_input.a, var_1.x))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    var var_0 = true;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(690f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-525f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, 2581f, 428f, -316f)), Struct_3(Struct_2(vec4<f32>(-143f, 441f, -1188f, 1000f))), -232f, select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 32u)], false), vec3<bool>(var_1, false, false), vec3<bool>(var_1, global0[_wgslsmith_index_u32(119182u, 32u)], var_1)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1006f, -766f))))));
    var_0 = _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_sub_u32(~0u, 1u) & firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(5502u, 38753u))), max(u_input.a, 4294967295u)) == abs(~(~1u) >> (u_input.a % 32u));
    let var_3 = vec2<bool>(true, (u_input.a << (_wgslsmith_div_u32(func_2(vec3<u32>(1u, u_input.a, u_input.a), vec4<f32>(var_2, 451f, -310f, var_2), global0[_wgslsmith_index_u32(4294967295u, 32u)], vec3<u32>(6322u, 29793u, 1u)), _wgslsmith_mod_u32(u_input.a, 41708u)) % 32u)) < min(~_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1945f, _wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(select(-163f, 1149f, var_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, var_2, 237f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1161f, -998f, var_2), vec3<f32>(294f, var_2, var_2))))), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(select(vec4<i32>(54857i, -2853i, -2147483647i, 0i), vec4<i32>(2147483647i, 15109i, -49373i, 21350i), vec4<bool>(true, true, true, false)), vec4<i32>(0i, 0i, -1i, 0i)), -1i);
}

