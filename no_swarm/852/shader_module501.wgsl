struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(3525i, -27156i, -5816i, 0i), vec4<i32>(-24934i, 1i, -1i, 32093i), vec4<i32>(-8956i, -26849i, -35417i, 0i), vec4<i32>(1i, -1i, 25119i, -30496i), vec4<i32>(-31008i, -30371i, 0i, 869i), vec4<i32>(31065i, 26337i, -45253i, -12495i), vec4<i32>(23166i, 2147483647i, -37472i, 2147483647i), vec4<i32>(16553i, -86022i, 0i, 0i), vec4<i32>(-34866i, 32121i, -15389i, i32(-2147483648)), vec4<i32>(10601i, -28500i, i32(-2147483648), -20936i), vec4<i32>(1i, 0i, 0i, 1i));

var<private> global1: array<u32, 4>;

var<private> global2: array<f32, 22> = array<f32, 22>(-579f, 122f, 1304f, 858f, -1000f, 679f, 1864f, -706f, 350f, -373f, -136f, 1291f, 285f, -995f, -1160f, 1496f, 671f, -1561f, -1254f, 1151f, 660f, 1000f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<u32> {
    let var_0 = abs(abs(vec3<i32>(u_input.a, select(u_input.a, u_input.a, false) | (u_input.a << (11928u % 32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, 13476i), u_input.a))));
    global2 = array<f32, 22>();
    let var_1 = Struct_5(~((_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(-22159i, -26875i)) | vec2<i32>(var_0.x, var_0.x)) >> (~vec2<u32>(34660u, 4294967295u) % vec2<u32>(32u))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)));
    global1 = array<u32, 4>();
    global1 = array<u32, 4>();
    return select(~min(abs(vec4<u32>(39921u, u_input.b, u_input.b, 33611u)), vec4<u32>(4844u, 4294967295u, 43538u, abs(u_input.b))), _wgslsmith_add_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 4u)], u_input.b), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(12628u, 4u)], u_input.b, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 4u)], 115710u, 0u), vec4<u32>(1u, 0u, 1u, 4294967295u)), min(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13808u, 4u)], 4u)], 4u)], u_input.b, 1u, 0u), vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(35052u, 4u)], 4294967295u, u_input.b)))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 21944u, 26199u)), vec4<u32>(31898u, u_input.b, 0u, 13107u) << (vec4<u32>(u_input.b, 61506u, 4294967295u, u_input.b) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(110578u, 4u)], 4u)]), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3349u, 4u)], 4u)], 5440u, u_input.b, global1[_wgslsmith_index_u32(1u, 4u)]), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(0u, 4u)], 4294967295u, u_input.b, 1u))))), !vec4<bool>(false, true, all(!vec3<bool>(var_1.b.x, true, false)), var_1.b.x));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_add_vec4_u32(~(~vec4<u32>(66443u, 1u, 1u, 4294967295u)), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36280u, 4u)], 4u)], 4u)]), ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], 1u, u_input.b, global1[_wgslsmith_index_u32(18347u, 4u)])), func_3(), !vec4<bool>(false, arg_0, arg_0, arg_0))), Struct_1(true, _wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, 545f, 641f, -1518f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(255f, -1999f, -484f, global2[_wgslsmith_index_u32(19239u, 22u)]))))), _wgslsmith_dot_vec4_i32((global0[_wgslsmith_index_u32(4294967295u, 11u)] & global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 11u)]) ^ ~vec4<i32>(arg_3, -2147483647i, -9510i, -1i), reverseBits(vec4<i32>(arg_1.x, 18456i, arg_1.x, 1i)) & vec4<i32>(-37752i, u_input.a, arg_3, arg_1.x))), ~964i, select(select(select(!vec4<bool>(true, false, false, arg_0), vec4<bool>(false, arg_0, true, arg_0), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(false, arg_0, arg_0, arg_0)), arg_0 & true, any(vec4<bool>(false, arg_0, arg_0, arg_0))), select(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(false, true, false, false), vec4<bool>(arg_0, arg_0, false, true)), vec4<bool>(arg_0, false, true, arg_0), arg_0)), vec4<bool>(false, !(!arg_0), true, any(vec2<bool>(true, false))), vec4<bool>((arg_0 || false) | false, ~(-12636i) <= (arg_3 | 1i), true, false)), Struct_1(arg_0, 1203f, vec4<f32>(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_div_f32(arg_2, 457f)), 1f, _wgslsmith_f_op_f32(948f * -1452f), -177f), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_1.x, -25824i), _wgslsmith_mult_i32(arg_3, -2147483647i)), -5416i, -52087i)));
    global2 = array<f32, 22>();
    let var_1 = Struct_5(_wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(-18176i, -7446i)), _wgslsmith_dot_vec2_i32(arg_1, arg_1) >> (96066u % 32u)), arg_1), select(var_0.d.xz, var_0.d.zw, var_0.d.x));
    let var_2 = arg_1;
    var_0 = Struct_2(vec4<u32>(u_input.b, 11370u, 44431u << (_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], u_input.b) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 1u) | var_0.a.wz, ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 3782u))) ^ _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~var_0.a, vec4<u32>(1u, 81353u, 0u, global1[_wgslsmith_index_u32(16777u, 4u)]) & vec4<u32>(u_input.b, 0u, 0u, 1u)), _wgslsmith_clamp_vec4_u32(var_0.a, ~vec4<u32>(7060u, u_input.b, u_input.b, 91660u), ~var_0.a)), Struct_1(arg_0, _wgslsmith_f_op_f32(sign(-1269f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(var_0.e.c)), _wgslsmith_f_op_vec4_f32(-var_0.b.c))), _wgslsmith_mult_i32(abs(0i & arg_1.x), -min(-6037i, -2147483647i))), -34178i, var_0.d, Struct_1(global2[_wgslsmith_index_u32(~countOneBits(global1[_wgslsmith_index_u32(85497u, 4u)]), 22u)] != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 22u)] + 685f), var_0.e.b, _wgslsmith_f_op_f32(f32(-1f) * -504f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], arg_2, -628f, global2[_wgslsmith_index_u32(4294967295u, 22u)]) + var_0.b.c))), arg_1.x));
    return arg_3;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: f32) -> vec3<bool> {
    var var_0 = reverseBits(vec2<i32>(func_2(true, vec2<i32>(u_input.a, u_input.a) >> (max(vec2<u32>(0u, 0u), vec2<u32>(global1[_wgslsmith_index_u32(21838u, 4u)], 57415u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(arg_1.x)), abs(u_input.a) << (8108u % 32u)), -firstTrailingBit(u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_div_f32(1186f, 995f))), arg_1)), _wgslsmith_f_op_vec2_f32(ceil(arg_1))));
    global1 = array<u32, 4>();
    var var_2 = vec3<bool>(-272f >= var_1.x, false, !(!any(vec3<bool>(true, true, true))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(531f, 1000f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)), _wgslsmith_f_op_f32(arg_2 * global2[_wgslsmith_index_u32(2336u, 22u)])) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 22u)], -1000f))))));
    return !(!(!vec3<bool>(select(false, var_2.x, var_2.x), any(var_2.xz), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 4>();
    let var_0 = select(!(!vec3<bool>(any(vec2<bool>(false, false)), true, true)), !func_1(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 4u)], 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 22u)], 1067f) - vec2<f32>(1000f, -1128f))), _wgslsmith_f_op_f32(f32(-1f) * -212f)), func_1(_wgslsmith_mult_u32(func_3().x, ~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 1u), 4u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(53704u, 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)]))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(920f, 462f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 22u)], 1000f)), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)]), 22u)] * 624f)))).x);
    let var_1 = Struct_3(u_input.a);
    let var_2 = (_wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(var_1.a, var_1.a) >> (~global1[_wgslsmith_index_u32(0u, 4u)] % 32u), ~2147483647i) | ~(i32(-1i) * -15839i)) > 29520i;
    global0 = array<vec4<i32>, 11>();
    var var_3 = Struct_4(vec2<i32>(u_input.a, abs(select(~(-2147483647i), abs(-2147483647i), any(vec4<bool>(false, var_0.x, var_0.x, false))))), Struct_3(select(min(var_1.a, ~0i), ~var_1.a, var_0.x)), Struct_3(u_input.a), -2147483647i);
    let var_4 = countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(16225u, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], 4u)]), ~vec3<u32>(0u, 17586u, u_input.b)), vec3<u32>(1u, ~u_input.b, firstTrailingBit(u_input.b))) | ~(func_3().xyz ^ _wgslsmith_mod_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.b), vec3<u32>(50878u, u_input.b, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, global2[_wgslsmith_index_u32(var_4.x, 22u)], vec3<i32>(0i, min(var_1.a, var_1.a) << (abs(u_input.b) % 32u), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 11u)], select(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], vec4<bool>(false, var_2, var_2, true)))) >> (var_4 % vec3<u32>(32u)));
}

