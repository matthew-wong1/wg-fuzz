struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<Struct_2, 7>;

var<private> global1: array<f32, 18> = array<f32, 18>(-811f, -394f, 1000f, -503f, 588f, 1372f, -255f, -627f, -417f, 1000f, -1109f, -497f, -712f, 402f, -245f, 245f, -327f, -901f);

var<private> global2: vec3<u32> = vec3<u32>(45142u, 1u, 4294967295u);

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> f32 {
    let var_0 = reverseBits(reverseBits(vec3<u32>(firstLeadingBit(u_input.a.x), arg_0.x, ~86699u) | abs(u_input.a.xzy)));
    var var_1 = abs(firstTrailingBit(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global2.xz) << (vec2<u32>(var_0.x, 105761u) % vec2<u32>(32u)))));
    let var_2 = vec3<f32>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~32331u, 18u)], global1[_wgslsmith_index_u32(~(~arg_0.x) | (select(arg_3.a, arg_0.x, arg_3.b) ^ select(4294967295u, u_input.a.x, arg_2)), 18u)])));
    var var_3 = Struct_2(~(~u_input.a.x), true, Struct_1(-1i, u_input.a), global3.b.x);
    var_3 = arg_3;
    return _wgslsmith_f_op_f32(var_2.x - var_2.x);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    let var_0 = Struct_2(select(~_wgslsmith_mod_u32(abs(global3.b.x), ~66775u), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -796f) * _wgslsmith_f_op_f32(arg_0 * 563f)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(41999u, 18u)], -120f))))), !(~u_input.a.x > abs(_wgslsmith_clamp_u32(103096u, 4294967295u, global2.x))), arg_2.c, _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.a.x), 1u << (arg_3.x % 32u)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1825f)));
    var var_2 = var_0.c;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 18u)], 1380f)));
    var_2 = Struct_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(global3.a, 1i, 23418i, arg_1)), vec4<i32>(-1i, 1i, global3.a, arg_2.c.a)), abs(vec4<i32>(var_0.c.a, var_0.c.a, -1i, var_0.c.a) & vec4<i32>(arg_2.c.a, arg_1, -1i, -6117i))), ~u_input.a);
    return !var_0.b | !any(!select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, true, true), vec3<bool>(var_0.b, true, var_0.b)));
}

fn func_1() -> vec3<bool> {
    var var_0 = all(vec2<bool>(!(-1135f >= _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 18u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(28131u, global2.x)), 18u)]) < _wgslsmith_f_op_f32(func_2(~vec4<u32>(0u, global3.b.x, global2.x, 19701u), ~vec4<i32>(global3.a, -1i, -1i, global3.a), global2.x >= global3.b.x, global0[_wgslsmith_index_u32(0u, 7u)]))));
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(global3.b.x & _wgslsmith_mod_u32(26598u, 6600u)), 18u)];
    var var_2 = -global3.a;
    global3 = Struct_1(-global3.a, vec4<u32>(~(~_wgslsmith_mod_u32(1u, global3.b.x)), _wgslsmith_sub_u32(~(~global3.b.x), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(u_input.a.x, 61204u))), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(global2.x, u_input.a.x)) << (0u % 32u), _wgslsmith_dot_vec4_u32(countOneBits(~global3.b), vec4<u32>(global2.x, 90109u, ~global2.x, u_input.a.x))));
    global3 = Struct_1(-1i, _wgslsmith_mod_vec4_u32(u_input.a >> (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 18366u, global3.b.x, u_input.a.x), vec4<u32>(15718u, 31408u, global2.x, 13947u), vec4<bool>(true, true, false, true)), firstLeadingBit(global3.b), vec4<u32>(0u, global3.b.x, 67460u, global3.b.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(global2.x, global2.x, 48805u, global2.x), global3.b)));
    return !vec3<bool>(all(vec4<bool>(true, func_3(global1[_wgslsmith_index_u32(4294967295u, 18u)], -24480i, Struct_2(u_input.a.x, false, Struct_1(global3.a, u_input.a), u_input.a.x), vec4<u32>(66792u, 371u, 14734u, global3.b.x)), true, true)), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(func_1(), func_1(), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !any(vec3<bool>(true, false, false))), !vec3<bool>(true, true, all(vec2<bool>(true, true))));
    global0 = array<Struct_2, 7>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -837f);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(u_input.a, ~(reverseBits(global3.b) & select(global3.b, vec4<u32>(0u, 42582u, 4294967295u, 1u), vec4<bool>(var_0.x, false, var_0.x, true)))), max(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global3.b, reverseBits(vec4<u32>(51753u, u_input.a.x, 34594u, global2.x))), ~abs(vec4<u32>(global3.b.x, u_input.a.x, 17651u, u_input.a.x)), countOneBits(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 41245u, 9388u, global3.b.x)))), global3.b)), 7u)];
    var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(func_2(vec4<u32>(global3.b.x, 39578u, var_2.d, var_2.d), abs(vec4<i32>(2147483647i, -1i, 8081i, -7395i)), all(vec3<bool>(var_0.x, false, var_0.x)), global0[_wgslsmith_index_u32(4294967295u, 7u)])) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2028f - 103f))), true, true);
    let var_3 = global0[_wgslsmith_index_u32(abs((_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), global2.zz), global2.x) >> (1u % 32u)) << (~u_input.a.x % 32u)), 7u)];
    let var_4 = var_3.c;
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(var_3.d, 1u, 33070u, 4294967295u), countOneBits(vec4<i32>(-79149i, global3.a, global3.a, 28420i)), var_2.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(1u, u_input.a.x, 32421u)), 7u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a.x, 18u)])) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_4.b.x, 18u)], 802f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-183f, -1035f)))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, -881f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(40287u, 18u)], 131f), vec2<f32>(1124f, -982f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1529f, var_1, var_1) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, 1312f, var_5.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(395f, 1485f, 788f)))))));
}

