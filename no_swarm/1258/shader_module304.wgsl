struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(46418i, 18086i), vec2<i32>(i32(-2147483648), 93607i), vec2<i32>(19972i, 1i), vec2<i32>(2147483647i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = array<vec2<i32>, 7>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    global1 = array<vec2<i32>, 7>();
    let var_0 = _wgslsmith_sub_u32(u_input.b, abs(u_input.a.x));
    return !(!select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 3u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, true)), vec3<bool>(true, all(vec4<bool>(false, false, global0[_wgslsmith_index_u32(58724u, 3u)], true)), true), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 3u)]));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = ~vec2<u32>(4294967295u, 4769u);
    let var_1 = Struct_2(Struct_1(~vec2<i32>(_wgslsmith_mult_i32(2147483647i, -1i), select(16139i, -4206i, true)), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)], false), select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 3u)], true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], false, global0[_wgslsmith_index_u32(0u, 3u)])), global0[_wgslsmith_index_u32(28176u, 3u)] || global0[_wgslsmith_index_u32(1u, 3u)], !global0[_wgslsmith_index_u32(41751u, 3u)])), !all(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)], true, global0[_wgslsmith_index_u32(var_0.x, 3u)]))), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i << (arg_0.x % 32u), abs(-71130i)), global1[_wgslsmith_index_u32(~reverseBits(arg_0.x), 7u)]), func_3(), true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, -1742f, -135f))))));
    var var_2 = abs(~(-(vec4<i32>(var_1.a.a.x, 66939i, var_1.b.a.x, -2147483647i) ^ vec4<i32>(var_1.a.a.x, -2147483647i, var_1.b.a.x, var_1.b.a.x)) ^ ~max(vec4<i32>(var_1.b.a.x, -1i, 0i, var_1.a.a.x), vec4<i32>(2147483647i, 1i, 2147483647i, -18005i))));
    let var_3 = -_wgslsmith_div_i32(~(~(-375i)), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(386i, -3132i, -64519i, -618i) | vec4<i32>(40738i, 10868i, var_2.x, var_2.x), -vec4<i32>(0i, var_1.a.a.x, var_2.x, var_1.a.a.x))));
    var var_4 = Struct_4(-147f, Struct_3(var_1.b.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.c.yz, vec2<f32>(var_1.c.x, var_1.c.x), var_1.b.b.xz))) + var_1.c.yz), global0[_wgslsmith_index_u32(u_input.c, 3u)], Struct_2(var_1.b, var_1.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c.x, -311f, -1000f))))))));
    return var_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    return -37430i;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: u32) -> vec3<u32> {
    global0 = array<bool, 3>();
    global1 = array<vec2<i32>, 7>();
    let var_0 = func_4(Struct_2(Struct_1(max(global1[_wgslsmith_index_u32(func_2(vec4<u32>(97865u, 1u, u_input.b, arg_3)), 7u)], -global1[_wgslsmith_index_u32(59753u, 7u)]), !func_3(), global0[_wgslsmith_index_u32(54259u, 3u)]), Struct_1(~_wgslsmith_mod_vec2_i32(arg_2.yx, vec2<i32>(arg_2.x, -1i)), !select(vec3<bool>(false, true, arg_1), vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false), true), any(select(vec2<bool>(true, true), vec2<bool>(false, false), arg_1))), _wgslsmith_div_vec3_f32(vec3<f32>(-1660f, -2203f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 513f, 395f)))), Struct_1(~select(_wgslsmith_div_vec2_i32(arg_2.xy, vec2<i32>(arg_2.x, 2147483647i)), global1[_wgslsmith_index_u32(func_2(vec4<u32>(arg_3, 4294967295u, u_input.b, 4294967295u)), 7u)], !arg_1), !(!(!vec3<bool>(false, true, arg_1))), false));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(abs(arg_0.x)), Struct_3(_wgslsmith_mult_i32(1i, arg_2.x) <= 3492i, _wgslsmith_f_op_vec2_f32(arg_0.yx * vec2<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), -1286f)), true, Struct_2(Struct_1(vec2<i32>(18918i, 51397i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], false, false, arg_1))), Struct_1(vec2<i32>(0i, -1i), select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_3, 3u)], global0[_wgslsmith_index_u32(arg_3, 3u)]), vec3<bool>(true, arg_1, global0[_wgslsmith_index_u32(0u, 3u)]), global0[_wgslsmith_index_u32(4294967295u, 3u)]), global0[_wgslsmith_index_u32(30914u, 3u)]), arg_0.yyw)));
    var var_2 = var_1;
    return vec3<u32>(~(~0u), ~arg_3, ~(~(_wgslsmith_add_u32(u_input.b, arg_3) ^ (u_input.b << (u_input.c % 32u)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool) -> StorageBuffer {
    global0 = array<bool, 3>();
    let var_0 = vec4<bool>(select(all(vec4<bool>(true, true, true, true)) && arg_1, !any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], true, true, true)), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.a.x, 33288u), 3u)]), !arg_1, true, all(!select(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 3u)], arg_1, true), vec4<bool>(global0[_wgslsmith_index_u32(16024u, 3u)], true, global0[_wgslsmith_index_u32(27360u, 3u)], false), true)));
    let var_1 = select(select(vec4<bool>(!global0[_wgslsmith_index_u32(~arg_0.x, 3u)], false, arg_1, true), var_0, vec4<bool>(true, select(!var_0.x, func_3().x, all(var_0)), false, var_0.x)), select(select(!vec4<bool>(false, false, var_0.x, false), select(var_0, var_0, !vec4<bool>(arg_1, false, true, true)), true), !var_0, var_0), vec4<bool>(!(u_input.b > func_2(vec4<u32>(1u, 26315u, 37264u, 5312u))), var_0.x, all(select(select(var_0.zz, vec2<bool>(false, false), vec2<bool>(var_0.x, arg_1)), select(var_0.xx, vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(17553u, 3u)], arg_1)), !global0[_wgslsmith_index_u32(921u, 3u)])), !any(var_0.zx) || !any(var_0)));
    global1 = array<vec2<i32>, 7>();
    let var_2 = true;
    return StorageBuffer(abs(arg_0.x) ^ ~(~_wgslsmith_div_u32(u_input.a.x, 76264u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(floor(626f))) + 1187f) - 781f), vec3<i32>(1i, 1i, 1i), ~(~vec2<u32>(select(arg_0.x, 34384u, false), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_div_vec3_u32(~select(vec3<u32>(4294967295u, 17509u, 0u) ^ vec3<u32>(1u, 0u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, u_input.a.x), vec3<u32>(36902u, u_input.c, u_input.b)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], false)), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-194f, 406f, 303f, 350f)), (1307u << (1u % 32u)) >= firstTrailingBit(0u), _wgslsmith_mod_vec4_i32(-vec4<i32>(3958i, 1i, -1i, 2147483647i), vec4<i32>(43975i, -45043i, -30446i, 51550i) >> (vec4<u32>(u_input.a.x, 0u, 0u, u_input.c) % vec4<u32>(32u))), 10518u >> (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.c, 5962u)) % 32u))), true);
}

