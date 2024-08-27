struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: array<bool, 9> = array<bool, 9>(true, true, false, false, false, false, false, false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2289f, -1000f, -1055f, 314f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1848f, 1000f, -763f, -706f) - vec4<f32>(-633f, 1141f, 778f, 1619f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(350f, -1606f, -1304f, 116f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-500f, -1000f, 303f, -463f)))))), firstLeadingBit(~(~vec3<u32>(36875u, u_input.a, u_input.d) & abs(vec3<u32>(u_input.d, 20989u, u_input.a)))));
    global0 = array<Struct_1, 12>();
    var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a.x, -1416f)), _wgslsmith_f_op_f32(2800f * 879f)), _wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(-821f - var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -355f)), countOneBits(var_0.b));
    global1 = array<vec2<bool>, 11>();
    global0 = array<Struct_1, 12>();
    return ~85492i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = vec4<bool>(func_3() < 2147483647i, !select(global2[_wgslsmith_index_u32(max(u_input.a, u_input.a), 9u)], true, any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 9u)], false, global2[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(46259u, 9u)], false, false), global2[_wgslsmith_index_u32(1u, 9u)]))), true, global2[_wgslsmith_index_u32(1u, 9u)]);
    var var_1 = abs(vec3<u32>(abs(u_input.a) | ~26101u, min(~16888u, 18175u ^ u_input.d), firstTrailingBit(u_input.d)) & ~(~vec3<u32>(1u, 1u, u_input.d)));
    let var_2 = false;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + 819f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x)))));
    var var_4 = select(select(!(!vec4<bool>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(u_input.d, 9u)], true)), select(!select(vec4<bool>(true, var_2, false, var_2), vec4<bool>(var_0.x, false, var_0.x, var_2), false), vec4<bool>(u_input.a == u_input.d, var_1.x > u_input.a, any(var_0.zyy), false), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.x), vec2<i32>(-27879i, arg_0.x)) != -arg_0.x), !select(global2[_wgslsmith_index_u32(~var_1.x, 9u)], all(vec2<bool>(true, var_0.x)), var_2)), select(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(299u, 9u)], true, var_0.x, false))), vec4<bool>(var_3.x > _wgslsmith_f_op_f32(var_3.x + var_3.x), false, all(vec4<bool>(global2[_wgslsmith_index_u32(2048u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], true, false)), false), all(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), 11u)])), vec4<bool>(!(!var_0.x) && var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, 880f, var_0.x)) * _wgslsmith_f_op_f32(min(arg_1.x, -1964f))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-131f, arg_1.x) + _wgslsmith_f_op_f32(1208f * 1000f)), any(select(vec4<bool>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(u_input.a, 9u)], var_2), vec4<bool>(true, true, var_0.x, var_2), global2[_wgslsmith_index_u32(69513u, 9u)] && false)), all(select(!vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(53662u, 9u)], false, var_2), select(vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(63590u, 9u)]), vec4<bool>(global2[_wgslsmith_index_u32(62193u, 9u)], var_2, true, false), false), var_0.x))));
    return !(!(!vec4<bool>(all(vec3<bool>(true, false, true)), all(var_0.xxx), var_2, var_2 || false)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    global1 = array<vec2<bool>, 11>();
    let var_0 = -(~(-51619i));
    global0 = array<Struct_1, 12>();
    let var_1 = select(select(!vec4<bool>(true, false, !global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)] && global2[_wgslsmith_index_u32(3849u, 9u)]), func_2(_wgslsmith_add_vec2_i32(vec2<i32>(-6228i, u_input.c) & vec2<i32>(var_0, 10238i), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-6621i, u_input.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x))), !(global2[_wgslsmith_index_u32(~u_input.a, 9u)] || !global2[_wgslsmith_index_u32(u_input.a, 9u)])), select(vec4<bool>(!global2[_wgslsmith_index_u32(~18355u, 9u)], true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 9u)] | !global2[_wgslsmith_index_u32(arg_1.b.x, 9u)], _wgslsmith_mult_u32(0u, arg_1.b.x) <= 1u), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(21490u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)]))), all(vec3<bool>(arg_0.x < arg_0.x, global2[_wgslsmith_index_u32(firstLeadingBit(26896u), 9u)], u_input.b == u_input.c))), !(!vec4<bool>(!global2[_wgslsmith_index_u32(4294967295u, 9u)], all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 9u)], true, global2[_wgslsmith_index_u32(1u, 9u)], false)), global2[_wgslsmith_index_u32(4294967295u, 9u)], any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 9u)], false, global2[_wgslsmith_index_u32(34236u, 9u)])))));
    let var_2 = ~(~countOneBits(~vec2<i32>(u_input.b, u_input.c) ^ max(vec2<i32>(-30962i, var_0), vec2<i32>(var_0, u_input.b))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(exp2(arg_1.a.x)), arg_1.a.x), arg_2.a, select(select(var_1, var_1, var_1), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 9u)], var_1.x, global2[_wgslsmith_index_u32(arg_2.b.x, 9u)]), var_1)))), vec4<i32>(1i, _wgslsmith_div_i32(-803i << (u_input.d % 32u), -2147483647i), select(-1i, _wgslsmith_clamp_i32(var_2.x, 2147483647i, 37813i), false | any(var_1.zxy)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(43454i, -2147483647i, var_2.x), vec3<i32>(u_input.b, -2147483647i, var_2.x)), var_0, -40138i & _wgslsmith_mod_i32(2147483647i, var_2.x))), vec3<u32>((arg_0.x | _wgslsmith_mult_u32(23274u, 0u)) ^ 35062u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, 4294967295u, 4294967295u, arg_1.b.x)), min(vec4<u32>(arg_0.x, arg_1.b.x, arg_1.b.x, 0u), vec4<u32>(0u, 4294967295u, u_input.a, arg_1.b.x))), ~abs(vec4<u32>(arg_1.b.x, u_input.a, u_input.d, 4294967295u))), _wgslsmith_mod_u32(2713u, arg_0.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, 518f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a.x, 259f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(134f, arg_2.a.x) * arg_1.a.yx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_1.a.x) + vec2<f32>(arg_2.a.x, 1158f))), false)))), select(max(vec4<i32>(min(1i, var_0), select(48771i, var_0, true), -2147483647i, -28299i), (vec4<i32>(-1i, -1i, 0i, var_2.x) | vec4<i32>(var_0, var_2.x, -44102i, 12663i)) << (~vec4<u32>(arg_1.b.x, arg_0.x, u_input.a, 1u) % vec4<u32>(32u))), min(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, 6889i), vec3<i32>(var_0, 0i, u_input.c)), _wgslsmith_clamp_i32(var_0, var_0, var_2.x), 2147483647i, 2147483647i), select(-vec4<i32>(var_2.x, u_input.c, -21238i, 2147483647i), ~vec4<i32>(1i, u_input.c, var_0, var_0), !var_1.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstLeadingBit(_wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 30388u))), _wgslsmith_sub_vec2_u32(vec2<u32>(38028u, u_input.a) << (vec2<u32>(4294967295u, u_input.d) % vec2<u32>(32u)), ~vec2<u32>(41279u, u_input.d)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -499f, 770f, 412f), vec4<f32>(463f, -621f, 1053f, 1079f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1206f, -397f, 1510f, 141f)))), vec3<u32>(u_input.a, ~select(u_input.d, 1u, global2[_wgslsmith_index_u32(7393u, 9u)]), _wgslsmith_clamp_u32(u_input.d, ~u_input.a, 59632u))), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f + -653f), _wgslsmith_f_op_f32(round(-1324f)), _wgslsmith_f_op_f32(f32(-1f) * -1305f), -1562f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(205f, -228f, -2093f, 257f) - vec4<f32>(-609f, 557f, 445f, -118f)))), vec3<u32>(firstTrailingBit(u_input.d), ~(~8923u), reverseBits(u_input.d << (u_input.a % 32u)))));
}

