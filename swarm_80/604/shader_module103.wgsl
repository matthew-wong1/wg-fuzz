struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, true, false, false, true, false, false, true, false, false, false, true, false, true, false, false, false, false, true, true, false, false, true, true, true, false, false, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> f32 {
    global0 = array<bool, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-601f - -122f))) - -697f)));
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1785f) + _wgslsmith_f_op_f32(-202f + -507f))));
    return var_0.a;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))));
    var var_1 = false;
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2605i, ~max(8370i, -2147483647i), ~3825i) >> (~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u)), -vec4<i32>(-(~u_input.c.x), abs(-u_input.c.x), 0i, -1i));
    let var_3 = true;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a));
    return Struct_2(select(~vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_add_u32(u_input.b, u_input.b)), vec3<u32>(u_input.b, 13903u, u_input.b), true));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<u32> {
    var var_0 = arg_0.a.x;
    var var_1 = vec4<bool>(false, true, any(select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(56866u, 30u)], global0[_wgslsmith_index_u32(84743u, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, global0[_wgslsmith_index_u32(67210u, 30u)], true), vec4<bool>(false, false, false, true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(7855u, 30u)], global0[_wgslsmith_index_u32(55129u, 30u)], global0[_wgslsmith_index_u32(arg_0.a.x, 30u)], global0[_wgslsmith_index_u32(16239u, 30u)]), false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 30u)], true, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)]), global0[_wgslsmith_index_u32(33255u, 30u)] || global0[_wgslsmith_index_u32(57820u, 30u)]), true)), global0[_wgslsmith_index_u32(~(~1u >> (~func_1(u_input.c.x).a.x % 32u)), 30u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1465f + 1570f))), 1665f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(872f, 523f, 1640f), vec3<f32>(835f, -1440f, -178f))))))));
    let var_3 = Struct_3(arg_0.a.x);
    let var_4 = global0[_wgslsmith_index_u32(arg_0.a.x ^ 47053u, 30u)];
    return _wgslsmith_mod_vec4_u32(max(_wgslsmith_mod_vec4_u32(min(~vec4<u32>(arg_0.a.x, 80596u, 32237u, 0u), vec4<u32>(0u, var_3.a, 47355u, u_input.b)), ~vec4<u32>(var_3.a, 35623u, arg_0.a.x, arg_0.a.x) & ~vec4<u32>(48779u, var_3.a, 10644u, arg_0.a.x)), min(~vec4<u32>(var_3.a, 43423u, arg_0.a.x, 69301u) ^ firstTrailingBit(vec4<u32>(0u, 52896u, u_input.b, 16676u)), firstTrailingBit(vec4<u32>(31117u, 0u, 35025u, var_3.a)) ^ select(vec4<u32>(arg_0.a.x, 28843u, 4294967295u, 4294967295u), vec4<u32>(0u, arg_0.a.x, u_input.b, 1u), vec4<bool>(false, global0[_wgslsmith_index_u32(14897u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], true)))), max(min(_wgslsmith_sub_vec4_u32(min(vec4<u32>(var_3.a, 68557u, 13142u, var_3.a), vec4<u32>(u_input.b, 1u, u_input.b, arg_0.a.x)), vec4<u32>(arg_0.a.x, var_3.a, 21874u, u_input.b)), ~select(vec4<u32>(u_input.b, 80251u, 21721u, 0u), vec4<u32>(u_input.b, u_input.b, var_3.a, arg_0.a.x), false)), ~(~(~vec4<u32>(1u, 19877u, u_input.b, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_1(-u_input.c.x), vec2<i32>(19480i, u_input.a.x));
    var var_1 = vec2<u32>(u_input.b, reverseBits(40295u));
    global0 = array<bool, 30>();
    var var_2 = !any(!vec3<bool>(false, all(vec4<bool>(false, global0[_wgslsmith_index_u32(6392u, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], true)), true));
    var var_3 = Struct_3(~(_wgslsmith_sub_u32(~43602u, _wgslsmith_clamp_u32(1u, 45262u, 91441u)) >> (~u_input.b % 32u)));
    let var_4 = _wgslsmith_sub_u32(var_3.a, _wgslsmith_sub_u32(var_3.a, firstLeadingBit(0u)));
    var_1 = firstTrailingBit(~vec2<u32>(u_input.b, ~abs(4294967295u)));
    let var_5 = vec4<i32>(1i, 1i, 1i, 1i);
    var var_6 = select(vec4<bool>(!(var_3.a < (17860u & var_1.x)), global0[_wgslsmith_index_u32(~(~(~14586u)), 30u)], true, (var_1.x ^ 77732u) == (4294967295u << (~4294967295u % 32u))), vec4<bool>(true, all(select(vec3<bool>(global0[_wgslsmith_index_u32(39027u, 30u)], false, false), vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 30u)]), any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)])))), global0[_wgslsmith_index_u32(u_input.b, 30u)], 156f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1149f, -825f)))), global0[_wgslsmith_index_u32(var_3.a, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_i32(var_5.yxy, vec3<i32>(abs(9911i), 1i, i32(-1i) * -1092i)), u_input.b, var_5.xzx, -2147483647i);
}

