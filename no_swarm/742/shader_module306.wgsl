struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(66151i, 2147483647i, 0i, 0i), vec4<i32>(i32(-2147483648), 2610i, 0i, -15162i), vec4<i32>(18852i, -37256i, 1i, 20877i), vec4<i32>(2147483647i, 14972i, 1i, -1i), vec4<i32>(1i, -51486i, 0i, -8942i), vec4<i32>(-6913i, -53368i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 38839i, -64087i, 9073i), vec4<i32>(258i, -1i, -31345i, 18328i), vec4<i32>(-1523i, -19377i, 2147483647i, 0i), vec4<i32>(-1i, -1i, 56287i, -11305i), vec4<i32>(i32(-2147483648), 0i, -35982i, 0i), vec4<i32>(9161i, 1i, -22159i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 0i, -7276i));

var<private> global1: array<i32, 24> = array<i32, 24>(i32(-2147483648), 34791i, 1i, -19796i, -1i, -1i, -32644i, -16363i, 3377i, 2147483647i, 2147483647i, 49753i, -31310i, i32(-2147483648), 36239i, -45271i, -1i, 2147483647i, 36475i, 2274i, -80513i, 18444i, 4798i, 2147483647i);

var<private> global2: i32;

var<private> global3: array<f32, 7> = array<f32, 7>(1937f, -1386f, -1390f, -1567f, -1477f, -976f, 1499f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    global2 = u_input.b.x >> (~(~firstTrailingBit(u_input.c)) % 32u);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(702f * 258f), global3[_wgslsmith_index_u32(~1687u, 7u)], global3[_wgslsmith_index_u32(u_input.c, 7u)], _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(1u, 7u)], -1671f)))))), vec2<f32>(489f, _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(~u_input.c, 7u)], _wgslsmith_f_op_f32(-1216f + -757f), any(vec3<bool>(true, true, true))))), !vec2<bool>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(16374u, 7u)], -1518f)) == _wgslsmith_f_op_f32(max(627f, global3[_wgslsmith_index_u32(23837u, 7u)])), (u_input.c << (4294967295u % 32u)) != ~u_input.c));
    let var_1 = !(all(var_0.c) || (4294967295u <= u_input.c));
    var var_2 = 1077f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1252f, -713f, global3[_wgslsmith_index_u32(u_input.c, 7u)]) + _wgslsmith_f_op_vec4_f32(var_0.a - var_0.a)))), _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(select(-213f, -1000f, false)), 184f, _wgslsmith_f_op_f32(1290f * 213f))))), _wgslsmith_f_op_vec2_f32(step(var_0.b, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(ceil(var_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], -642f)))))), vec2<bool>(var_1, var_0.c.x));
    return false;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<vec4<i32>, 13>();
    let var_0 = select(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(!func_3(), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), false), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))) & true), vec3<bool>(true, !(~55865u != (u_input.c >> (70945u % 32u))), true), all(select(vec4<bool>(true, u_input.c != 56863u, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), false)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 7u)], global3[_wgslsmith_index_u32(2814u, 7u)], global3[_wgslsmith_index_u32(u_input.c, 7u)], global3[_wgslsmith_index_u32(u_input.c, 7u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(311f, global3[_wgslsmith_index_u32(u_input.c, 7u)], 482f, 1488f) - vec4<f32>(global3[_wgslsmith_index_u32(21506u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)], -658f, global3[_wgslsmith_index_u32(u_input.c, 7u)])))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], -724f, -427f, global3[_wgslsmith_index_u32(u_input.c, 7u)])), vec4<f32>(-1301f, global3[_wgslsmith_index_u32(0u, 7u)], -936f, global3[_wgslsmith_index_u32(1u, 7u)]), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-868f, global3[_wgslsmith_index_u32(u_input.c, 7u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1474u, 7u)]), -340f)), select(!vec4<bool>(var_0.x, false, true, var_0.x), select(vec4<bool>(false, true, false, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), any(vec3<bool>(var_0.x, var_0.x, true))), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1717f, -816f) * vec2<f32>(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(u_input.c, 7u)])), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-778f, 1208f)))))))), !select(var_0.yx, var_0.xz, var_0.x));
    let var_2 = Struct_1(vec4<f32>(global3[_wgslsmith_index_u32(9575u, 7u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1486f, var_1.a.x, global1[_wgslsmith_index_u32(1412u, 24u)] <= u_input.a)), -1567f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c, 7u)]))), _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f - 2028f))))), _wgslsmith_f_op_vec2_f32(exp2(var_1.a.yy)), select(select(!var_0.zx, select(!vec2<bool>(true, var_1.c.x), select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_1.c.x), var_0.x), vec2<bool>(var_1.c.x, var_0.x)), all(vec4<bool>(var_1.c.x, var_0.x, var_1.c.x, false))), select(var_1.c, vec2<bool>(var_1.c.x, true), vec2<bool>(false, !var_1.c.x)), !vec2<bool>(!var_1.c.x, var_0.x)));
    global2 = -5454i << (_wgslsmith_clamp_u32(~0u, _wgslsmith_add_u32(u_input.c, 0u), ((u_input.c ^ u_input.c) ^ ~u_input.c) | 1u) % 32u);
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = u_input.b.yxx;
    var var_2 = all(!(!vec4<bool>(any(vec3<bool>(arg_1.c.x, arg_1.c.x, true)), !arg_2.c.x, all(vec3<bool>(true, true, var_0.c.x)), true)));
    global3 = array<f32, 7>();
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~1u, 1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c), arg_2.c), vec2<u32>(u_input.c, 4294967295u) >> (vec2<u32>(u_input.c, 1766u) % vec2<u32>(32u)))) | min(vec2<u32>(u_input.c, u_input.c) << ((vec2<u32>(60872u, 0u) >> (vec2<u32>(39855u, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)), min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 47306u))), vec2<u32>(0u, ~1u | _wgslsmith_add_u32(~61089u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 23811u), vec2<u32>(10615u, u_input.c)))));
    return var_0;
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 24>();
    let var_0 = u_input.c;
    global3 = array<f32, 7>();
    let var_1 = func_4(333f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(abs(u_input.c), 7u)], global3[_wgslsmith_index_u32(26756u, 7u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(20852u, 7u)]), _wgslsmith_div_f32(928f, -333f))), vec2<f32>(-225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1874f)))), vec2<bool>(true, false)), func_2(-1i));
    var var_2 = global1[_wgslsmith_index_u32(9912u | u_input.c, 24u)];
    return func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(50744u, 7u)]) * _wgslsmith_f_op_f32(-386f - var_1.a.x)) - var_1.a.x))), var_1, func_4(_wgslsmith_f_op_f32(trunc(-808f)), func_2(global1[_wgslsmith_index_u32(var_0, 24u)]), Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(1574f, global3[_wgslsmith_index_u32(75818u, 7u)], 379f, -987f)), _wgslsmith_f_op_vec2_f32(var_1.a.zw * var_1.a.zz), var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = select(_wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(reverseBits(u_input.c)), ~_wgslsmith_sub_u32(u_input.c, u_input.c), firstTrailingBit(1u) ^ ~u_input.c), vec3<u32>(select(~1u, u_input.c, var_0.c.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(44568u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u))), u_input.c)), ~_wgslsmith_div_vec3_u32(select(reverseBits(vec3<u32>(u_input.c, u_input.c, 4429u)), vec3<u32>(1u, u_input.c, 35839u) ^ vec3<u32>(u_input.c, 0u, 0u), true), vec3<u32>(1u, u_input.c, 4294967295u)), select(select(select(!vec3<bool>(var_0.c.x, true, false), !vec3<bool>(true, var_0.c.x, false), var_0.c.x), vec3<bool>(all(vec2<bool>(var_0.c.x, var_0.c.x)), 1000f <= var_0.b.x, var_0.c.x), !select(vec3<bool>(var_0.c.x, true, false), vec3<bool>(false, false, var_0.c.x), var_0.c.x)), !(!select(vec3<bool>(true, var_0.c.x, var_0.c.x), vec3<bool>(true, true, false), false)), !(!var_0.c.x != any(vec4<bool>(false, var_0.c.x, true, false)))));
    let var_2 = var_0.c;
    var var_3 = ~_wgslsmith_add_vec2_i32(u_input.b.wx, vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.b.zw), firstLeadingBit(0i)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-679f + 188f), 1454f, !func_3())), var_0.a.x, _wgslsmith_f_op_f32(369f * var_0.b.x), var_0.b.x);
    let var_5 = var_0.c;
    var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x - global3[_wgslsmith_index_u32(~(~28537u), 7u)]), func_2(_wgslsmith_div_i32(8414i << (var_1.x % 32u), _wgslsmith_dot_vec2_i32(u_input.b.wz, vec2<i32>(u_input.a, 9583i)))).b.x, -1500f, global3[_wgslsmith_index_u32(62936u >> (1u % 32u), 7u)]) + _wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1478f * 205f), _wgslsmith_f_op_f32(-1000f + var_0.b.x), -159f, _wgslsmith_f_op_f32(1801f * var_0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(step(1993f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.x - -1575f), _wgslsmith_f_op_f32(-var_0.a.x)))))), _wgslsmith_f_op_vec3_f32(-var_4.zxy));
}

