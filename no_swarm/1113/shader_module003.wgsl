struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: bool = false;

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> u32 {
    global1 = arg_0.x;
    global2 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_0 = vec4<u32>(15779u, ~_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(arg_2.x, arg_2.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, arg_2.x), vec3<u32>(arg_2.x, 4294967295u, 0u))), 4294967295u, ~(select(u_input.b.x, ~0u, all(vec3<bool>(false, arg_0.x, false))) << ((38498u | select(42015u, arg_2.x, arg_0.x)) % 32u)));
    global2 = Struct_2(~1623i);
    let var_1 = Struct_2(-10902i);
    return arg_2.x;
}

fn func_4(arg_0: f32, arg_1: i32) -> vec3<f32> {
    global1 = select(!any(vec4<bool>(any(vec2<bool>(true, false)), 0u >= u_input.b.x, true, any(vec4<bool>(false, false, true, true)))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)))), select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(false, false, true))), false, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))));
    var var_0 = vec4<f32>(-894f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, arg_0)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1357f))))));
    global0 = array<Struct_2, 15>();
    var var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-707f, arg_0, -664f, -2161f) + vec4<f32>(arg_0, arg_0, var_0.x, arg_0))))))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(var_0.x + 105f)), var_0.x)), var_0.wzz));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.b.x;
    global1 = any(vec3<bool>(true, select(true, true, true), select(true, true, all(vec3<bool>(false, true, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1, arg_1)) + vec3<f32>(-349f, arg_1.x, -2288f))), _wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -524f, arg_1.x)) + arg_1))) * _wgslsmith_f_op_vec3_f32(func_4(arg_1.x, min(arg_0.a, 1i) << (func_3(vec3<bool>(true, true, true), max(u_input.d.zy, u_input.d.xy), vec2<u32>(38500u, var_0)) % 32u))));
    let var_2 = _wgslsmith_dot_vec2_u32(~(vec2<u32>(_wgslsmith_div_u32(4294967295u, 62343u), 1u) >> (u_input.c % vec2<u32>(32u))), vec2<u32>(u_input.c.x, 1136u) >> (vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(var_0, 16162u)), ~(~0u)) % vec2<u32>(32u)));
    let var_3 = vec3<u32>(36704u, firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(27739u, 28240u, 9371u, 0u), vec4<u32>(var_0, u_input.c.x, var_2, 60184u)), select(vec4<u32>(82580u, u_input.a.x, u_input.b.x, var_2), vec4<u32>(var_0, 115859u, 0u, 79226u), vec4<bool>(false, true, false, false))), ~countOneBits(vec4<u32>(0u, var_2, var_2, 49851u)))), 5655u);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f)) * 1077f)), vec2<bool>(!all(vec3<bool>(true, true, true)), all(vec4<bool>(all(vec4<bool>(true, true, false, true)), false, 0u == var_2, all(vec2<bool>(true, true))))), -1218f);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: u32, arg_3: f32) -> vec4<bool> {
    global2 = global0[_wgslsmith_index_u32(reverseBits(arg_2), 15u)];
    var var_0 = Struct_2(u_input.d.x);
    var var_1 = func_2(global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, 396f, arg_3)) - vec3<f32>(arg_3, arg_3, arg_3))) + vec3<f32>(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), -651f)), countOneBits(abs(~firstLeadingBit(global2.a))));
    global2 = global0[_wgslsmith_index_u32(firstLeadingBit(arg_1), 15u)];
    var var_2 = min(vec3<i32>(2147483647i, _wgslsmith_clamp_i32(1i, var_0.a, ~1i), max(max(_wgslsmith_add_i32(u_input.d.x, global2.a), 8114i), var_0.a)), abs(u_input.d));
    return vec4<bool>(arg_0.x && true, !arg_0.x, var_1.b.x, false);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(i32(-1i) * -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_1.a, 2147483647i, global2.a, global2.a)), -vec4<i32>(-8643i, u_input.d.x, 0i, -29975i)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 15>();
    let var_0 = !all(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, all(vec2<bool>(true, true))));
    let var_1 = vec2<u32>(u_input.b.x, func_5(select(select(func_1(vec3<bool>(true, false, true), u_input.b.x, u_input.c.x, -2038f), func_1(vec3<bool>(false, var_0, var_0), 1u, 8793u, -379f), false), select(vec4<bool>(false, true, var_0, var_0), !vec4<bool>(true, false, var_0, var_0), func_1(vec3<bool>(var_0, var_0, false), 4294967295u, u_input.b.x, -1079f)), var_0), global0[_wgslsmith_index_u32(u_input.c.x, 15u)]));
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    global1 = !all(!(!select(vec2<bool>(false, var_0), vec2<bool>(false, true), vec2<bool>(true, var_0))));
    global1 = !(4294967295u < ~(~func_3(vec3<bool>(true, var_0, var_0), u_input.d.xx, var_1)));
    let var_2 = global0[_wgslsmith_index_u32(select(0u, 2713u, var_0), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), var_1.x, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-230f, -238f)), _wgslsmith_div_f32(-143f, 148f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1446f - 760f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(112f + 1038f), _wgslsmith_f_op_f32(-943f + -440f)))), var_1);
}

