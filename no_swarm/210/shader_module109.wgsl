struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 21> = array<u32, 21>(0u, 16878u, 1u, 26867u, 6772u, 144849u, 0u, 19400u, 8729u, 4294967295u, 1u, 1u, 42706u, 4294967295u, 28993u, 7171u, 3639u, 66294u, 23890u, 1739u, 0u);

var<private> global2: array<u32, 8>;

var<private> global3: bool = true;

var<private> global4: array<vec4<f32>, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global4 = array<vec4<f32>, 13>();
    global0 = !(true & any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))) & all(vec2<bool>(true, true));
    global3 = all(vec4<bool>(any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true)), select(true | all(vec4<bool>(false, false, false, false)), true, false), all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !any(vec2<bool>(true, false))));
    var var_0 = -114f;
    let var_1 = reverseBits(vec2<i32>(76051i, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -24761i), vec2<i32>(41124i, u_input.a)) | _wgslsmith_clamp_i32(34802i, 7733i, u_input.a))));
    return global2[_wgslsmith_index_u32(max(4294967295u, ~min(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24816u, 8u)], 21u)], (global1[_wgslsmith_index_u32(arg_0.x, 21u)] >> (global2[_wgslsmith_index_u32(arg_0.x, 8u)] % 32u)) | ~arg_0.x)), 8u)];
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = select(arg_0.e.x, arg_0.a.x <= (func_3(abs(arg_0.d)) << (1u % 32u)), false);
    let var_0 = _wgslsmith_sub_i32(u_input.a, -2147483647i);
    let var_1 = vec4<bool>(true, all(select(select(!arg_0.e.yx, !arg_0.e.zx, true), select(arg_0.e.xx, select(vec2<bool>(false, arg_0.e.x), arg_0.e.zx, arg_0.e.yy), !arg_0.e.x), all(arg_0.e))), true, arg_0.b == _wgslsmith_f_op_f32(750f * _wgslsmith_f_op_f32(f32(-1f) * -217f)));
    var var_2 = var_1;
    let var_3 = select(~vec2<u32>(~1u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(56418u, arg_0.d.x), 8u)] << (select(13184u, 25398u, false) % 32u)), firstTrailingBit(countOneBits(~vec2<u32>(global2[_wgslsmith_index_u32(arg_0.a.x, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49543u, 21u)], 21u)])) & ~arg_0.d.yx), !var_2.x);
    return _wgslsmith_f_op_f32(-334f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -687f))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = arg_2;
    global2 = array<u32, 8>();
    let var_1 = select(vec4<bool>(false, var_0.e.x, ~arg_1.a.x < (min(global1[_wgslsmith_index_u32(var_0.a.x, 21u)], global1[_wgslsmith_index_u32(arg_2.d.x, 21u)]) >> (arg_2.d.x % 32u)), true), vec4<bool>(arg_0, all(!(!vec4<bool>(arg_2.e.x, arg_1.e.x, true, arg_2.e.x))), arg_0, true), -828f == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1148f, arg_3.x)) - _wgslsmith_f_op_f32(round(arg_1.b))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(412f, 1584f), arg_3.x)) - -754f), 453f)), arg_3.x, var_0.b);
    var_0 = arg_2;
    return Struct_1(firstLeadingBit(_wgslsmith_clamp_vec3_u32(firstLeadingBit(var_0.a), (arg_1.a >> (arg_2.a % vec3<u32>(32u))) ^ vec3<u32>(26332u, arg_1.a.x, 0u), ~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(57508u, 21u)], 51478u))), arg_3.x, vec3<i32>(24008i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(arg_1.c.x & 37687i, ~15508i)), -2147483647i), firstTrailingBit(vec4<u32>(~9132u & global1[_wgslsmith_index_u32(1u, 21u)], var_0.d.x, 4294967295u, min(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 8u)] & 0u, 21u)], _wgslsmith_clamp_u32(arg_1.a.x, 4294967295u, global2[_wgslsmith_index_u32(arg_1.a.x, 8u)])))), !vec3<bool>(true, var_0.e.x, arg_0));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = ~vec2<i32>(u_input.b, arg_1.c.x);
    var var_1 = Struct_1(~arg_2.a, 674f, vec3<i32>(var_0.x << (global1[_wgslsmith_index_u32(~arg_1.d.x, 21u)] % 32u), 2147483647i, -68070i), arg_1.d, !select(vec3<bool>(all(arg_1.e.yy), true, any(vec4<bool>(arg_2.e.x, false, false, true))), arg_2.e, func_1(arg_1.e.x, arg_1, Struct_1(arg_0.wzw, 422f, vec3<i32>(arg_2.c.x, -35265i, var_0.x), vec4<u32>(arg_3, 67440u, global1[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(57152u, 8u)]), vec3<bool>(arg_1.e.x, false, false)), vec3<f32>(-1387f, 491f, -781f)).e));
    var var_2 = arg_2.c.x;
    global2 = array<u32, 8>();
    var var_3 = u_input.b;
    return 26962u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(firstTrailingBit(func_4(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1692u, 8u)], 8u)], 7125u, 37767u, global1[_wgslsmith_index_u32(55417u, 21u)]) ^ vec4<u32>(global2[_wgslsmith_index_u32(22813u, 8u)], 79214u, global2[_wgslsmith_index_u32(628u, 8u)], 0u), Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 21u)], 21u)], 21u)], 37701u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29908u, 21u)], 21u)], 8u)]), 1000f, vec3<i32>(u_input.a, 0i, 1i), vec4<u32>(39484u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 21u)], 18599u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13490u, 21u)], 8u)], 8u)], 8u)]), vec3<bool>(false, false, false)), func_1(true, Struct_1(vec3<u32>(29142u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 9236u), -1405f, vec3<i32>(-2147483647i, 2147483647i, -1i), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 8u)], 21u)], 26284u, 4294967295u), vec3<bool>(false, false, true)), Struct_1(vec3<u32>(0u, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(19405u, 8u)]), 653f, vec3<i32>(-16247i, 21076i, -2147483647i), vec4<u32>(global1[_wgslsmith_index_u32(11743u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59255u, 8u)], 8u)], 21u)], 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 21u)]), vec3<bool>(true, true, false)), vec3<f32>(-494f, -1882f, -575f)), 4294967295u)), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33798u, 21u)], 8u)], 21u)], 8u)], 13702u), 764f, -(~select(vec3<i32>(u_input.a, 11876i, u_input.a), vec3<i32>(u_input.b, u_input.b, 2147483647i), true)) ^ vec3<i32>(2147483647i, -33402i, 17282i), vec4<u32>(872u, ~(~1u), _wgslsmith_div_u32(4294967295u, abs(countOneBits(global2[_wgslsmith_index_u32(0u, 8u)]))), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(39289u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 8u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40419u, 21u)], 8u)], 8u)], 21u)], 8u)], 21u)], 8u)], 31004u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(1u, 21u)], 1u, global2[_wgslsmith_index_u32(100893u, 8u)])), vec4<u32>(~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 8u)], 1u, global2[_wgslsmith_index_u32(~846u, 8u)], ~global2[_wgslsmith_index_u32(43245u, 8u)])), 8u)], 8u)]), vec3<bool>(func_1((0u <= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5551u, 8u)], 8u)], 8u)], 21u)], 21u)]) && true, Struct_1(~vec3<u32>(global2[_wgslsmith_index_u32(14736u, 8u)], 1u, 6201u), 493f, _wgslsmith_add_vec3_i32(vec3<i32>(-55395i, 0i, 23030i), vec3<i32>(-2147483647i, u_input.a, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11521u, 21u)], 21u)], 8u)], 21u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 8u)], 1u), vec4<u32>(global2[_wgslsmith_index_u32(79328u, 8u)], 1u, 26844u, 37491u), vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 8u)], 21u)], 8u)], 21u)], global2[_wgslsmith_index_u32(71832u, 8u)])), vec3<bool>(true, true, true)), Struct_1(firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37768u, 21u)], 21u)], 21u)], 8u)], 1u, 4294967295u)), _wgslsmith_f_op_f32(sign(-132f)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b, 2147483647i), vec3<i32>(u_input.a, -67528i, u_input.b)), select(vec4<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 8u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 14203u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(10171u, 21u)], global2[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40613u, 21u)], 21u)], 113504u), vec4<bool>(false, true, false, false)), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, 781f, 115f)))).e.x, any(vec3<bool>(true, true, true)), true));
    let var_1 = Struct_1(abs(var_0.d.xyy), 1902f, countOneBits(vec3<i32>(~_wgslsmith_dot_vec2_i32(var_0.c.yy, var_0.c.yz), u_input.a, _wgslsmith_mod_i32(var_0.c.x, -13127i))), vec4<u32>(reverseBits(firstTrailingBit(abs(4294967295u))), 4294967295u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(69649u, global2[_wgslsmith_index_u32(45006u, 8u)]), vec2<u32>(global1[_wgslsmith_index_u32(59996u, 21u)], 4294967295u)), var_0.a.yz) & var_0.a.x, global2[_wgslsmith_index_u32(~25576u, 8u)]), vec3<bool>(false, var_0.e.x, var_0.e.x || true));
    let var_2 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(66019u, _wgslsmith_div_u32(var_0.d.x ^ 6539u, func_3(vec4<u32>(var_0.a.x, 3173u, 0u, 146626u)))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.d, var_1.d), ~var_1.d));
    let var_3 = ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(~var_1.c.x, _wgslsmith_add_i32(11322i, var_0.c.x), u_input.a, u_input.b), _wgslsmith_div_vec4_i32(-vec4<i32>(var_1.c.x, u_input.a, 5008i, -24957i), ~vec4<i32>(u_input.a, var_1.c.x, 9657i, u_input.a)), false), select(firstLeadingBit(~vec4<i32>(var_1.c.x, -42767i, -16337i, var_1.c.x)), abs(vec4<i32>(2147483647i, -29223i, var_0.c.x, -1i)) ^ reverseBits(vec4<i32>(var_0.c.x, var_0.c.x, 0i, var_0.c.x)), !select(vec4<bool>(var_0.e.x, var_1.e.x, var_0.e.x, false), vec4<bool>(false, var_0.e.x, false, true), var_0.e.x)));
    global1 = array<u32, 21>();
    var var_4 = func_1(-70590i != var_1.c.x, var_1, Struct_1(~vec3<u32>(abs(17876u), firstTrailingBit(global2[_wgslsmith_index_u32(var_2, 8u)]), _wgslsmith_mult_u32(var_0.d.x, var_0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<u32>(var_1.a.x, 4294967295u, 25335u), var_1.b, vec3<i32>(-2147483647i, var_0.c.x, var_0.c.x), vec4<u32>(var_0.d.x, var_1.a.x, 1u, var_2), vec3<bool>(var_0.e.x, false, true)))), var_0.b), -_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.c, var_1.c), var_0.c), var_0.d, var_1.e), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * var_1.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) - _wgslsmith_f_op_f32(sign(var_1.b))), 592f)), var_1.b));
    let var_5 = !(!(_wgslsmith_div_f32(-1185f, _wgslsmith_f_op_f32(-var_1.b)) > 875f));
    let x = u_input.a;
    s_output = StorageBuffer(-130f, var_1.c.x, countOneBits(i32(-1i) * -48814i));
}

