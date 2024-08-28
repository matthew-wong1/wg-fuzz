struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(1000f, 2147483647i, Struct_1(15838u, vec2<u32>(0u, 1u)), Struct_1(1u, vec2<u32>(35819u, 17752u))), Struct_2(482f, 2147483647i, Struct_1(8327u, vec2<u32>(1u, 1u)), Struct_1(16479u, vec2<u32>(10657u, 58808u))));

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: array<f32, 27>;

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec3<u32> {
    var var_0 = 10575i;
    let var_1 = Struct_1(~(~17961u), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.c.b.x, firstLeadingBit(4294967295u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(global0.a.c.a, 46875u), vec2<u32>(global0.a.d.a, 4294967295u), vec2<bool>(true, true)), select(global0.a.d.b, global0.a.c.b, true))) ^ ~(~vec2<u32>(36358u, 4294967295u)));
    var var_2 = abs(vec3<i32>(global0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a.x), min(-42114i, u_input.a.x), 1i, 1i), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-28964i, -2147483647i, global0.a.b, 0i), vec4<i32>(-17493i, u_input.a.x, 2147483647i, -44513i)), ~vec4<i32>(global0.c, global0.a.b, global0.c, -70715i))), global0.b));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(744f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.a, 27u)])))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.a.d.b.x, 27u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1217f, 179f))))));
    return firstLeadingBit(vec3<u32>(4294967295u, 9755u, 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> vec4<f32> {
    var var_0 = all(vec3<bool>(any(vec3<bool>(true, true, true)), select(true, !all(vec2<bool>(true, true)), true), false));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), 0i >> (arg_0.x % 32u), Struct_1(39449u, ~(~vec2<u32>(69181u, 111465u))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(10848u, 82750u, arg_0.x, 4294967295u) << (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u) % vec4<u32>(32u)), countOneBits(vec4<u32>(arg_0.x, 10814u, arg_0.x, arg_0.x))), global0.a.c.b)), u_input.b.x, _wgslsmith_mult_i32(-14984i, (global0.a.b << (1u % 32u)) ^ countOneBits(1i)));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(var_1.a.d.b.x, 2u)], -36723i, var_1.c);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-2137f)), _wgslsmith_f_op_f32(step(1167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.a.d.b.x, 27u)] + -1000f) * -1735f))))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a * _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(global0.a.a + -892f))) * 147f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return vec4<f32>(var_4.x, _wgslsmith_f_op_f32(select(273f, var_1.a.a, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(856f, var_3)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -631f);
}

fn func_1(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(func_2(), _wgslsmith_f_op_f32(-1708f * global3[_wgslsmith_index_u32(global0.a.c.a, 27u)]))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, global3[_wgslsmith_index_u32(global0.a.c.b.x, 27u)], global3[_wgslsmith_index_u32(global0.a.d.b.x, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]) - vec4<f32>(global3[_wgslsmith_index_u32(19016u, 27u)], arg_0.x, -103f, global3[_wgslsmith_index_u32(0u, 27u)]))))))));
    let var_1 = _wgslsmith_add_vec4_u32(firstLeadingBit(~(~vec4<u32>(global0.a.d.a, 0u, 46379u, 1u) << (~vec4<u32>(4294967295u, global0.a.d.a, 0u, 1u) % vec4<u32>(32u)))), ~(vec4<u32>(global0.a.d.b.x, _wgslsmith_sub_u32(global0.a.c.a, global0.a.c.a), countOneBits(4294967295u), ~1u) ^ (vec4<u32>(global0.a.d.a, global0.a.c.a, 0u, 4294967295u) | countOneBits(vec4<u32>(1u, global0.a.d.b.x, 0u, global0.a.d.b.x)))));
    var var_2 = !all(vec3<bool>(all(vec3<bool>(true, false, true)) & true, all(vec2<bool>(true, true)), !select(true, true, true)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.a.c.b.x, ~(~global0.a.c.b.x)), 2u)];
    global4 = 287f;
    return !(!vec4<bool>(all(vec4<bool>(true, false, false, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), all(vec3<bool>(true, false, true)) || false, false));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(ceil(global0.a.a));
    var var_0 = global0.a.d.b.x;
    var var_1 = !select(select(select(func_1(vec3<f32>(global0.a.a, global3[_wgslsmith_index_u32(global0.a.c.a, 27u)], global0.a.a)), vec4<bool>(true, true, true, true), true), func_1(vec3<f32>(global0.a.a, 826f, -423f)), false), vec4<bool>((global3[_wgslsmith_index_u32(global0.a.d.a, 27u)] < global3[_wgslsmith_index_u32(global0.a.d.a, 27u)]) != true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)), any(vec3<bool>(true, true, true)), true), true);
    let var_2 = global0.c;
    var_0 = 4294967295u;
    var_1 = vec4<bool>(firstTrailingBit(~(~global0.a.b)) < _wgslsmith_clamp_i32(~(-u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, global0.c)), i32(-1i) * -22059i), select(!var_1.x, var_1.x, var_1.x) == var_1.x, true, var_1.x);
    global0 = Struct_3(Struct_2(885f, u_input.a.x, global0.a.d, Struct_1(global0.a.c.b.x, ~(~global0.a.c.b))), ~u_input.b.x, _wgslsmith_add_i32(u_input.a.x, global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(440f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)), -578f), vec3<f32>(global3[_wgslsmith_index_u32(~1u | _wgslsmith_add_u32(0u, global0.a.c.b.x), 27u)], global3[_wgslsmith_index_u32(global0.a.c.b.x, 27u)], _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1887f, -1000f), _wgslsmith_f_op_f32(max(928f, global3[_wgslsmith_index_u32(global0.a.d.a, 27u)]))))), !select(var_1.wxz, vec3<bool>(var_1.x, false, true), var_1.x && var_1.x))), ~_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(19499u, 91332u, global0.a.d.b.x, 97653u), vec4<u32>(global0.a.c.b.x, 12714u, 4294967295u, 61656u)), ~vec4<u32>(global0.a.d.b.x, 0u, global0.a.c.a, 8303u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1285f, global0.a.a)) * _wgslsmith_f_op_f32(-global0.a.a)) - _wgslsmith_f_op_f32(step(-557f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 27u)]))))));
}

