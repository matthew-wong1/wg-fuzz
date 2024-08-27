struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: array<u32, 4>;

var<private> global1: vec4<bool>;

var<private> global2: array<i32, 12> = array<i32, 12>(1i, 1i, 0i, 29889i, 1i, 1i, 33988i, i32(-2147483648), 2147483647i, 2147483647i, 47270i, 887i);

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    global0 = array<u32, 4>();
    global2 = array<i32, 12>();
    global1 = vec4<bool>(!(!(global1.x || global1.x) & (any(global1.xw) & any(global1.xw))), any(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, global1.x), true), vec4<bool>(false, true, !global1.x, true), !(!vec4<bool>(true, global1.x, true, true)))), !global1.x, _wgslsmith_f_op_f32(-840f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1381f) * -1000f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1495f)))));
    global0 = array<u32, 4>();
    let var_0 = Struct_3(!vec2<bool>(!(global1.x | false), all(select(vec3<bool>(global1.x, false, global1.x), global1.xxy, global1.x))), false, global3[_wgslsmith_index_u32(844u, 26u)]);
    return 730f;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(229f + 1131f) * _wgslsmith_f_op_f32(min(639f, -1061f)))))), global0[_wgslsmith_index_u32(u_input.c.x, 4u)] << (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(62028u, u_input.d, 1u)) & firstLeadingBit(vec3<u32>(u_input.d, u_input.b, u_input.d)), ~(~vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)]))) % 32u));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.a, u_input.a);
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_1.b, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_1.b, 27961u), vec4<u32>(u_input.b, arg_1.b, 26873u, arg_1.b))), vec3<u32>(u_input.c.x, 3286u, u_input.d) << (vec3<u32>(u_input.b, u_input.c.x, 63178u) % vec3<u32>(32u))), ~vec3<u32>(0u, select(u_input.b, 38184u, global1.x), global0[_wgslsmith_index_u32(1u, 4u)])), select(vec3<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c), firstLeadingBit(u_input.c)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 30092u, u_input.b), ~vec3<u32>(u_input.b, 4294967295u, arg_1.b)), 0u), ~(~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], arg_1.b, 4294967295u))), select(!select(vec3<bool>(false, true, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, false, global1.x)), vec3<bool>(global1.x, all(vec4<bool>(true, global1.x, true, global1.x)), all(vec3<bool>(false, global1.x, global1.x))), select(!vec3<bool>(global1.x, global1.x, global1.x), global1.wwx, select(global1.x, global1.x, global1.x)))));
    let var_2 = Struct_1(-vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a, vec2<i32>(arg_0, arg_0)), u_input.a), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, global2[_wgslsmith_index_u32(1u, 12u)], var_0.x), vec4<i32>(arg_0, global2[_wgslsmith_index_u32(16688u, 12u)], arg_0, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, global2[_wgslsmith_index_u32(6083u, 12u)], var_0.x, u_input.a.x), vec4<i32>(arg_0, 2147483647i, 3084i, u_input.a.x))), -1i, arg_0));
    var var_3 = reverseBits(~(firstTrailingBit(vec4<u32>(19105u, 19675u, var_1.x, 24204u)) >> (vec4<u32>(~u_input.c.x, _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(var_1.x, 4u)]), arg_1.b, 4294967295u) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_mod_u32(~var_1.x, _wgslsmith_clamp_u32(8330u | ~var_1.x, ~(~3722u), 80713u)) & _wgslsmith_dot_vec3_u32((var_3.ywx & _wgslsmith_clamp_vec3_u32(var_3.xyx, var_3.zwx, vec3<u32>(0u, 4294967295u, 4854u))) | (var_3.zwz & var_3.wyx), var_3.zxw);
    return arg_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>) -> u32 {
    global3 = array<Struct_2, 26>();
    var var_0 = !(!vec3<bool>(false, any(vec3<bool>(global1.x, global1.x, false)) & global1.x, all(select(global1.xw, global1.wy, true))));
    var_0 = vec3<bool>(global1.x, false, global1.x);
    let var_1 = func_4(~global2[_wgslsmith_index_u32(4294967295u, 12u)], func_2(vec4<bool>(any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), var_0.x)), true, global1.x, global1.x || true), vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.a.x, u_input.a.x), global2[_wgslsmith_index_u32(min(120886u, 4294967295u), 12u)], global2[_wgslsmith_index_u32(0u, 12u)] | -42612i, -59595i | u_input.a.x) & -(vec4<i32>(u_input.a.x, u_input.a.x, 13828i, 2147483647i) ^ vec4<i32>(0i, -1i, -1i, global2[_wgslsmith_index_u32(5564u, 12u)]))));
    let var_2 = _wgslsmith_f_op_f32(exp2(var_1.a));
    return _wgslsmith_dot_vec2_u32(~u_input.c, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(5209u, 19882u), ~vec2<u32>(global0[_wgslsmith_index_u32(arg_1.x, 4u)], 41925u)), u_input.c), ~(~u_input.c), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(global1.x, 1i <= (_wgslsmith_dot_vec3_i32(-vec3<i32>(-18006i, global2[_wgslsmith_index_u32(14324u, 12u)], 1i), min(vec3<i32>(6786i, -1i, global2[_wgslsmith_index_u32(u_input.d, 12u)]), vec3<i32>(-63168i, u_input.a.x, global2[_wgslsmith_index_u32(5607u, 12u)]))) & ~1i), !(!global1.x), (global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, u_input.c.x), 4u)] ^ _wgslsmith_add_u32(4294967295u, func_1(vec3<f32>(703f, 520f, -180f), vec2<u32>(u_input.b, 4294967295u)))) < 79938u);
    let var_0 = ~(~((global0[_wgslsmith_index_u32(u_input.d, 4u)] ^ 8629u) << (u_input.d % 32u))) == firstTrailingBit(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 1u, 4294967295u), vec3<u32>(1u, 122164u, global0[_wgslsmith_index_u32(51408u, 4u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(126285u, 4u)], 4u)] ^ u_input.c.x));
    var var_1 = _wgslsmith_mult_vec3_u32(reverseBits(select(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], 1u, global0[_wgslsmith_index_u32(u_input.b, 4u)]) ^ (vec3<u32>(global0[_wgslsmith_index_u32(11815u, 4u)], 6389u, global0[_wgslsmith_index_u32(1u, 4u)]) & vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 18149u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)], 4294967295u, 0u), vec3<u32>(78104u, global0[_wgslsmith_index_u32(5279u, 4u)], u_input.b)), select(!global1.zzz, global1.yzy, global1.zzy))), vec3<u32>(_wgslsmith_add_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 4u)], 4u)]), _wgslsmith_div_u32(~4294967295u, 1u)), 1u, countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(19037u, 4u)], 4294967295u), vec2<u32>(4294967295u, 1u)) >> (select(u_input.c.x, 11919u, true) % 32u), 4u)])));
    global1 = select(vec4<bool>(any(global1.zw) & any(!vec4<bool>(true, true, global1.x, true)), any(select(!vec4<bool>(var_0, true, false, true), !vec4<bool>(false, var_0, true, global1.x), false)), true, global1.x), vec4<bool>(!all(vec3<bool>(global1.x, global1.x, true)), global1.x, true, var_0), var_0 || true);
    global2 = array<i32, 12>();
    var var_2 = all(!global1.zyx);
    global0 = array<u32, 4>();
    var var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(400f))), 2327f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(-550f + -401f), all(global1.zzy))) - _wgslsmith_f_op_f32(step(1407f, _wgslsmith_f_op_f32(996f + 1000f))))));
}

