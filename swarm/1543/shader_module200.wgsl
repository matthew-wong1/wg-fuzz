struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: array<bool, 3>;

var<private> global2: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = all(select(!select(!global2.wy, vec2<bool>(true, true), true), global2.wz, true));
    var var_1 = select(select(vec2<bool>(global1[_wgslsmith_index_u32(max(0u, 1u), 3u)] & !arg_0.b, true), global2.wx, !select(vec2<bool>(true, false), !global2.yx, any(vec2<bool>(global2.x, global2.x)))), vec2<bool>(false, global1[_wgslsmith_index_u32(23386u, 3u)]), global2.xz);
    var var_2 = arg_0;
    var var_3 = arg_1;
    global0 = array<vec3<f32>, 19>();
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = !global2.yzw;
    let var_1 = Struct_1(~(-u_input.a), global1[_wgslsmith_index_u32(arg_1, 3u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 19u)]);
    global2 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(round(arg_2))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, -1142f) * _wgslsmith_f_op_f32(-arg_2))) > -103f, all(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1, 3u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(231f * -2038f) - arg_2) > _wgslsmith_f_op_f32(-arg_2), func_3(Struct_1(vec4<i32>(abs(70759i), ~u_input.a.x, -1i, u_input.a.x), _wgslsmith_mult_u32(33459u, arg_1) <= 4294967295u, var_0.x, vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 + 1311f), var_1.d.x)), var_1));
    global2 = select(select(!(!select(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(37245u, 3u)]), vec4<bool>(false, true, true, var_1.b), false)), !(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], true))), !vec4<bool>(any(vec2<bool>(true, false)), var_0.x, !var_1.b, var_1.b || true)), !(!vec4<bool>(false || var_0.x, true, 4294967295u == u_input.e, !global2.x)), true);
    var var_2 = abs(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 0u), vec2<u32>(u_input.d.x, 0u), u_input.d.zx) & abs(~u_input.d.yx)));
    return Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, -_wgslsmith_mod_i32(var_1.a.x, arg_0.x), -2147483647i, 1i ^ _wgslsmith_div_i32(9631i, arg_0.x)), firstTrailingBit(firstTrailingBit(~vec4<i32>(u_input.a.x, 15066i, -2147483647i, 13244i))), vec4<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.b.x, var_1.a.x & var_1.a.x), -(~(-27366i)), var_1.a.x)), false, var_1.d.x >= -203f, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(firstTrailingBit(51183u), select(reverseBits(68893u), reverseBits(arg_1), var_1.c & false)), 19u)]);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.d.zy));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))))));
    var var_1 = func_2(arg_2.a.zzz | vec3<i32>(2147483647i, arg_2.a.x, abs(arg_0.a.x)), ~62432u, _wgslsmith_f_op_f32(sign(-894f)));
    var var_2 = u_input.c;
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_3.x, i32(-1i) * -2147483647i), 1i), reverseBits(~1i), 4423i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(17222i, var_1.a.x, 2147483647i), vec3<i32>(arg_3.x, -1i, arg_2.a.x)))), (_wgslsmith_div_f32(-1386f, _wgslsmith_f_op_f32(trunc(-1330f))) >= 1205f) & any(!vec3<bool>(global2.x, false, false)), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.d))));
    return 1000f;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-981f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(140f, _wgslsmith_f_op_f32(-1000f - -1414f), !global2.x)), _wgslsmith_f_op_f32(func_4(func_2(u_input.a.yyy, 0u, -752f), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], true, false, false), func_2(u_input.b, 0u, 977f), max(u_input.b.zz, u_input.a.wz)))) - 279f));
    var var_1 = Struct_1(vec4<i32>(-_wgslsmith_add_i32(_wgslsmith_add_i32(1i, u_input.a.x), 0i), 33356i, u_input.b.x, ~u_input.a.x), true, func_2(u_input.b, 1u, var_0).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(85606u, 19u)] - vec3<f32>(var_0, 528f, var_0)) * _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.c, 19u)]))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1000f, 1000f) * global0[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1020f, var_0, -521f))))));
    var var_2 = Struct_1(var_1.a, global1[_wgslsmith_index_u32(u_input.e >> (17672u % 32u), 3u)], any(!select(global2.xyz, select(global2.xzx, global2.wyz, vec3<bool>(global2.x, global2.x, global1[_wgslsmith_index_u32(u_input.d.x, 3u)])), all(global2.wwz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.d, global0[_wgslsmith_index_u32(~4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.d.x, 3u)]))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1026f * var_2.d.x) + 769f);
    var var_4 = 83399u;
    return StorageBuffer(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_2.a.x, var_2.a.x >> (0u % 32u), u_input.b.x), ~_wgslsmith_div_i32(-2147483647i, var_1.a.x)), var_1.d.x, ~u_input.d.x, vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.e, 51094u), (_wgslsmith_dot_vec4_u32(vec4<u32>(111205u, 1u, 4294967295u, 1u), vec4<u32>(u_input.c, 0u, u_input.e, u_input.e)) & u_input.e) ^ 24184u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, u_input.d.x, u_input.c), 1u & u_input.d.x) << (~u_input.c % 32u)), _wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(~(u_input.c | 1u), 19u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_add_vec4_i32(select(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(0i, 1i, u_input.a.x, 0i)), vec4<i32>(u_input.b.x, u_input.a.x, -7891i, -1i), true), vec4<i32>(70884i, -8284i, ~u_input.a.x, u_input.b.x)) | ~(~(~u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(-678f * -974f);
    var var_2 = 437f;
    let x = u_input.a;
    s_output = func_1();
}

