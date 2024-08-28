struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<i32, 16>;

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 15889i, -28460i);

var<private> global3: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    var var_0 = !vec3<bool>(arg_0.e.x, true, any(arg_0.e.zw));
    global2 = _wgslsmith_mult_vec3_i32(arg_0.a, vec3<i32>(-(global2.x ^ -1i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, global2.x, arg_0.a.x), vec3<i32>(global0[_wgslsmith_index_u32(arg_0.b.a, 3u)], -94456i, arg_3.x)), 11193i)) ^ ~_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_dot_vec2_i32(arg_3, global2.xx), 10022i), ~(~vec3<i32>(arg_3.x, global2.x, 2147483647i)));
    var var_1 = vec3<i32>(-1i) * -max(vec3<i32>(global1[_wgslsmith_index_u32(~50956u, 16u)], _wgslsmith_mod_i32(global2.x, global2.x), global0[_wgslsmith_index_u32(~u_input.a.x, 3u)]), arg_0.a);
    global3 = firstTrailingBit(1u) << (u_input.b.x % 32u);
    let var_2 = select(vec3<bool>(var_0.x, true, arg_0.e.x), vec3<bool>(!(!(0i != arg_3.x)), var_0.x, true), false);
    return select(-14695i | ~_wgslsmith_dot_vec4_i32(-vec4<i32>(15148i, -6690i, arg_3.x, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 16u)], var_1.x, global1[_wgslsmith_index_u32(23107u, 16u)], 0i), vec4<i32>(var_1.x, var_1.x, 2021i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), ~(~arg_3.x), (_wgslsmith_f_op_f32(arg_0.c.b.x * 1179f) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2)))) || (((false & arg_0.e.x) && true) && ((15570u ^ arg_0.c.a) > _wgslsmith_dot_vec4_u32(arg_0.d, arg_0.d))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    global2 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_3(Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(81395u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(arg_2, 16u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(57413u, 3u)])), Struct_1(u_input.a.x, vec4<f32>(arg_1, arg_1, -1371f, 687f)), Struct_1(arg_2, arg_0), vec4<u32>(arg_2, 93953u, u_input.a.x, u_input.b.x), vec4<bool>(true, true, true, true)), Struct_1(abs(1u), _wgslsmith_div_vec4_f32(vec4<f32>(-917f, -1084f, arg_1, 139f), arg_0)), arg_0.x, _wgslsmith_mod_vec2_i32(vec2<i32>(22309i, 2147483647i), -vec2<i32>(0i, global1[_wgslsmith_index_u32(u_input.b.x, 16u)]))), 0i, ~global0[_wgslsmith_index_u32(~arg_2 & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7263u, 78426u), u_input.b), 3u)]), vec3<i32>(~(i32(-1i) * -global0[_wgslsmith_index_u32(arg_2, 3u)]), _wgslsmith_add_i32(func_3(Struct_2(vec3<i32>(global0[_wgslsmith_index_u32(1843u, 3u)], global1[_wgslsmith_index_u32(arg_2, 16u)], -2147483647i), Struct_1(19245u, vec4<f32>(arg_1, 146f, 465f, 1000f)), Struct_1(6261u, arg_0), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 1u), vec4<bool>(true, false, true, false)), Struct_1(30642u, vec4<f32>(arg_1, arg_1, 553f, arg_1)), arg_1, select(vec2<i32>(-2147483647i, 20078i), global2.xy, false)), global2.x), _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 0i, global2.x), vec3<i32>(-2147483647i, 19759i, -1i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global2.x)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, -2147483647i, 2147483647i)), firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(arg_2, 16u)], 2147483647i, 62638i))))));
    var var_0 = global2.zx;
    var var_1 = Struct_1(~min(arg_2, countOneBits(_wgslsmith_clamp_u32(0u, u_input.a.x, 79077u))), arg_0);
    var var_2 = _wgslsmith_f_op_f32(select(-2447f, _wgslsmith_f_op_f32(f32(-1f) * -1228f), select(!(_wgslsmith_sub_i32(-1i, global2.x) == _wgslsmith_mult_i32(-3226i, global2.x)), true, true)));
    let var_3 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(~global0[_wgslsmith_index_u32(var_1.a, 3u)], 0i, _wgslsmith_mod_i32(42731i, -2147483647i)), select(vec3<i32>(global2.x, global0[_wgslsmith_index_u32(0u, 3u)], 2147483647i) ^ vec3<i32>(-1i, global2.x, global1[_wgslsmith_index_u32(54583u, 16u)]), -vec3<i32>(-17426i, -14709i, global1[_wgslsmith_index_u32(37275u, 16u)]), true)) & _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], 1i), vec3<i32>(-25414i, -33562i, global0[_wgslsmith_index_u32(4294967295u, 3u)])), 2147483647i, _wgslsmith_sub_i32(var_0.x, global2.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(arg_2, 3u)]) | vec3<i32>(-8670i, -6125i, global0[_wgslsmith_index_u32(var_1.a, 3u)]), ~vec3<i32>(global2.x, global0[_wgslsmith_index_u32(arg_2, 3u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]))), Struct_1(~min(~42499u, arg_2 << (42381u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b.x, 371f, var_1.b.x, var_1.b.x), vec4<f32>(295f, arg_0.x, var_1.b.x, 1442f)))))), Struct_1(_wgslsmith_clamp_u32(1u, u_input.a.x, select(var_1.a, var_1.a, true) & (21962u ^ u_input.b.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_1.b, var_1.b), vec4<f32>(2630f, -2644f, -145f, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1039f, arg_0.x, 1340f, var_1.b.x))), all(vec3<bool>(true, false, false)) && true))), firstTrailingBit(vec4<u32>(~(~arg_2), ~0u, ~_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_dot_vec3_u32(~u_input.a, u_input.b))), !select(vec4<bool>(true, false, true, all(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
    return var_3.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> Struct_2 {
    global3 = _wgslsmith_sub_u32(13525u, _wgslsmith_add_u32(79855u, max(arg_1.a, u_input.b.x)));
    var var_0 = arg_0;
    global1 = array<i32, 16>();
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_0.b.ww + arg_1.b.xz);
    let var_2 = true;
    return Struct_2(~_wgslsmith_add_vec3_i32(arg_2.wzz & (arg_2.wxx << (u_input.b % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(arg_2.x, global1[_wgslsmith_index_u32(21032u, 16u)], 1i)), func_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1572f + -186f), _wgslsmith_f_op_f32(step(628f, arg_3)))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1921f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -986f))), ~(~arg_1.a)), Struct_1(1u, _wgslsmith_f_op_vec4_f32(arg_1.b - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(1000f, -1176f, var_0.b.x, arg_0.b.x)))))), ~(~vec4<u32>(var_0.a, 111208u, 61477u, ~u_input.a.x)), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(false, var_2, var_2, var_2), select(!vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(true, var_2, true, true), select(vec4<bool>(true, false, var_2, false), vec4<bool>(true, var_2, var_2, var_2), var_2)), vec4<bool>(false, var_2, var_2, var_2)), ~(~global1[_wgslsmith_index_u32(22327u, 16u)]) < 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.yy;
    let var_1 = false;
    global3 = ~(~u_input.a.x);
    var var_2 = func_1(Struct_1(firstTrailingBit(~u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1447f, 1095f, -2551f, -1051f) + vec4<f32>(-619f, 1000f, 377f, -912f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 661f, 964f, -1499f))))), Struct_1(u_input.b.x ^ min(0u, 6627u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-803f, 1062f, -1233f, -782f) * _wgslsmith_div_vec4_f32(vec4<f32>(699f, -161f, 1549f, -424f), vec4<f32>(170f, -445f, -170f, 1634f))))), ~(~select(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], var_0.x, var_0.x, 35385i)), ~vec4<i32>(2147483647i, 17155i, 0i, global2.x), vec4<bool>(var_1, var_1, false, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) * 439f));
    let var_3 = Struct_1(u_input.b.x, vec4<f32>(1329f, func_1(var_2.b, var_2.b, vec4<i32>(~(-21868i), ~(-2147483647i), _wgslsmith_clamp_i32(-2147483647i, global2.x, var_2.a.x), global1[_wgslsmith_index_u32(min(var_2.d.x, var_2.c.a), 16u)]), _wgslsmith_f_op_f32(var_2.b.b.x - -1241f)).c.b.x, var_2.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.b.x + _wgslsmith_f_op_f32(var_2.b.b.x + -677f)) + _wgslsmith_f_op_f32(max(1005f, var_2.b.b.x)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.zyx));
    let var_5 = select(select(!var_2.e.www, select(vec3<bool>(var_2.e.x, var_2.e.x, true), var_2.e.xxx, var_1), !vec3<bool>(var_2.e.x, var_1, all(var_2.e.zw))), var_2.e.xyz, var_2.e.yww);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_f_op_vec3_f32(var_2.b.b.yxx * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_3.b.wzy, var_3.b.zzz, true)) - _wgslsmith_f_op_vec3_f32(var_3.b.yxx - var_3.b.yzy)), vec3<f32>(func_2(vec4<f32>(var_2.c.b.x, var_3.b.x, var_2.b.b.x, -1373f), var_4.x, 1u).b.x, _wgslsmith_f_op_f32(min(-448f, var_2.c.b.x)), _wgslsmith_f_op_f32(608f + -445f)), var_5))), _wgslsmith_dot_vec4_i32(-abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.x, 1931i, var_0.x, 5973i), vec4<i32>(global2.x, -35011i, global2.x, var_2.a.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.a, vec3<i32>(30228i, 0i, global1[_wgslsmith_index_u32(10223u, 16u)])), global2.x, func_1(func_1(var_2.c, Struct_1(var_3.a, vec4<f32>(-2301f, -952f, 1327f, -1000f)), vec4<i32>(37450i, global1[_wgslsmith_index_u32(0u, 16u)], 0i, 1i), var_2.c.b.x).c, func_1(var_3, Struct_1(0u, var_3.b), vec4<i32>(41512i, var_2.a.x, global0[_wgslsmith_index_u32(var_2.d.x, 3u)], global2.x), var_4.x).c, select(vec4<i32>(global2.x, global1[_wgslsmith_index_u32(var_2.b.a, 16u)], -2147483647i, global2.x), vec4<i32>(-2822i, global1[_wgslsmith_index_u32(4294967295u, 16u)], global2.x, global1[_wgslsmith_index_u32(var_3.a, 16u)]), true), -701f).a.x, 2147483647i)));
}

