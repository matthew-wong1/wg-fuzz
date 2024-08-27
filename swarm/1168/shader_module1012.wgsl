struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-122f, -954f, -630f);

var<private> global1: u32 = 65732u;

var<private> global2: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 1000f));
    var var_1 = Struct_1(1u, select(select(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, u_input.c), 30u)], vec2<bool>(true, true), global2[_wgslsmith_index_u32(0u, 30u)]), select(!select(global2[_wgslsmith_index_u32(28340u, 30u)], vec2<bool>(false, false), global2[_wgslsmith_index_u32(0u, 30u)]), !select(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], vec2<bool>(true, false), false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 30u)]), !any(select(vec2<bool>(false, false), global2[_wgslsmith_index_u32(2949u, 30u)], true))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2063f, -1643f, -1868f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1759f, -384f, var_0) * vec3<f32>(global0.x, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, 2299f, -868f)))))));
    let var_2 = Struct_1(abs(u_input.a.x) & firstLeadingBit(_wgslsmith_mult_u32(4294967295u, ~4294967295u)), select(global2[_wgslsmith_index_u32(~var_1.a, 30u)], !global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(u_input.d, 21358u)), 30u)], vec2<bool>(var_1.b.x, true)));
    let var_3 = ~select(~4294967295u, ~(~var_1.a), all(select(!vec2<bool>(var_2.b.x, true), vec2<bool>(false, var_2.b.x), select(var_2.b.x, false, var_2.b.x))));
    return vec3<bool>(!var_2.b.x, all(vec2<bool>(!all(vec3<bool>(true, false, var_2.b.x)), all(vec2<bool>(true, true)))), select(true, true, any(!select(vec3<bool>(var_1.b.x, var_2.b.x, var_2.b.x), vec3<bool>(false, false, var_1.b.x), var_2.b.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool) -> vec3<bool> {
    var var_0 = select(vec3<bool>(select(arg_1, arg_1, arg_1), arg_1, any(!select(vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, true, arg_1, false)))), select(!(!(!vec3<bool>(false, arg_1, false))), vec3<bool>(all(vec4<bool>(false, false, false, true)), all(!global2[_wgslsmith_index_u32(u_input.d, 30u)]), select(arg_1, true, any(vec4<bool>(false, arg_1, arg_1, arg_1)))), vec3<bool>(all(select(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(27494u, 30u)])), -u_input.b.x <= 1i, all(select(vec2<bool>(arg_1, false), global2[_wgslsmith_index_u32(1u, 30u)], arg_1)))), !vec3<bool>(func_3().x, any(vec4<bool>(arg_1, false, true, true)), 4294967295u != u_input.d));
    let var_1 = ~(~((~u_input.c >> (3379u % 32u)) ^ abs(abs(u_input.d))));
    var_0 = select(vec3<bool>(true, any(vec2<bool>(arg_1, !var_0.x)), all(!func_3())), !select(vec3<bool>(-52443i <= u_input.b.x, false, -542f >= global0.x), select(select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, arg_1), vec3<bool>(true, arg_1, false)), func_3(), arg_1), vec3<bool>(false, false, true)), all(vec3<bool>(!(var_1 > var_1), func_3().x, arg_1)));
    return !(!func_3());
}

fn func_2() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(~u_input.d, 3u)];
    let var_1 = all(func_4(~vec3<i32>(-13665i, u_input.b.x >> (47228u % 32u), -18350i), all(func_3())));
    var var_2 = -1i;
    var var_3 = 35337u;
    let var_4 = reverseBits(var_0.c.a);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(121f * _wgslsmith_f_op_f32(-global0.x)), -1000f, var_1 | var_1));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) > 1212f, (-16849i > u_input.b.x) & !func_3().x, select(select(0i, u_input.b.x, false) > 0i, true, true && all(vec2<bool>(true, false))) & (593f == _wgslsmith_div_f32(global0.x, 1050f)));
    global2 = array<vec2<bool>, 30>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), -658f, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)));
    var var_1 = 0u;
    var_1 = u_input.c;
    return Struct_1(20002u >> (u_input.a.x % 32u), var_0.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = Struct_2(Struct_1(1u, !global2[_wgslsmith_index_u32(u_input.c, 30u)]), Struct_1(1u, vec2<bool>(true, false)), func_1(), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, any(vec3<bool>(false, false, true)), global0.x > global0.x), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false))), func_4(vec3<i32>(38751i, ~u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x)), !any(global2[_wgslsmith_index_u32(var_0, 30u)]))), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -1i, -u_input.b.x)));
    let var_2 = global3[_wgslsmith_index_u32(u_input.d, 3u)];
    let var_3 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, firstTrailingBit(abs(0u)), _wgslsmith_mod_u32(44139u, 49943u), 2647u), vec4<u32>(~(~13806u), ~_wgslsmith_clamp_u32(1u, u_input.c, 0u), _wgslsmith_div_u32(reverseBits(112329u), 4294967295u), 0u)));
    let var_4 = Struct_2(var_1.b, var_2.a, var_1.c, var_1.d, ~_wgslsmith_div_vec3_i32((vec3<i32>(var_2.e.x, 0i, u_input.b.x) & var_1.e) | firstTrailingBit(u_input.b), ~(~vec3<i32>(var_1.e.x, 0i, var_2.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~_wgslsmith_mod_vec3_i32(var_4.e, u_input.b)), max(var_1.e, vec3<i32>(var_2.e.x, 0i, firstLeadingBit(-1i))), !select(select(var_4.d, vec3<bool>(false, true, true), var_1.d.x), vec3<bool>(true, true, var_1.d.x), select(vec3<bool>(var_1.a.b.x, false, var_1.d.x), vec3<bool>(true, false, var_1.b.b.x), false))));
}

