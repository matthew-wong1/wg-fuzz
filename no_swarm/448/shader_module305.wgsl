struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 4>;

var<private> global2: array<bool, 14>;

var<private> global3: array<i32, 4> = array<i32, 4>(2147483647i, 12417i, -8569i, 14321i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = vec4<u32>(57102u, 88834u, 1u, ~1u);
    let var_1 = _wgslsmith_add_u32(~var_0.x, ~20848u | _wgslsmith_div_u32(u_input.a, var_0.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f - -133f) + _wgslsmith_f_op_f32(ceil(-1000f))))))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(ceil(1621f)), !(_wgslsmith_f_op_f32(select(-294f, 640f, true)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-743f)), _wgslsmith_f_op_f32(-724f * 1303f), !global2[_wgslsmith_index_u32(var_1, 14u)]))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, -477f, 1201f, 1463f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2344f, -432f, -975f, 901f))), abs(~var_1)), !((var_1 >= u_input.a) == any(vec4<bool>(true, false, arg_2.x, global1[_wgslsmith_index_u32(73401u, 4u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2232f, -715f, 1654f, -1562f) + vec4<f32>(1396f, -918f, 1026f, -663f))), _wgslsmith_div_u32(56635u, 46011u))));
    let var_4 = _wgslsmith_sub_i32(~(~(-1i)), global3[_wgslsmith_index_u32(var_0.x | var_0.x, 4u)]);
    return select(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(0u, 0u, var_1, var_3.c.a.b)) & vec4<u32>(var_1, u_input.b.x, _wgslsmith_clamp_u32(4294967295u, u_input.b.x, var_0.x), _wgslsmith_sub_u32(4294967295u, 29874u))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(13304u, 4294967295u, u_input.a, 4294967295u)) ^ vec4<u32>(u_input.a >> (var_1 % 32u), ~u_input.b.x, ~var_0.x, var_1), _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(325u, 1u, var_0.x, var_1)), ~abs(vec4<u32>(79881u, var_0.x, var_0.x, var_0.x)), vec4<u32>(~var_1, ~0u, firstTrailingBit(var_0.x), u_input.a))), !all(vec3<bool>(arg_2.x, !global2[_wgslsmith_index_u32(var_0.x, 14u)], !global2[_wgslsmith_index_u32(1u, 14u)])));
}

fn func_4(arg_0: Struct_5) -> u32 {
    let var_0 = u_input.a;
    let var_1 = firstTrailingBit(-firstLeadingBit(~vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 4u)], 30720i, global3[_wgslsmith_index_u32(1u, 4u)])));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1224f, 760f, -763f, -492f) * vec4<f32>(-497f, -351f, -508f, 749f)) * _wgslsmith_div_vec4_f32(vec4<f32>(648f, -249f, -1051f, 930f), vec4<f32>(-532f, 927f, 952f, 423f))) - vec4<f32>(-1257f, _wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_div_f32(-545f, 726f), 571f)), select(1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0, 1u, 86760u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 5160u, u_input.b.x), vec4<u32>(8082u, u_input.a, 65608u, 1u), vec4<u32>(1u, var_0, var_0, 46720u))), global2[_wgslsmith_index_u32(arg_0.a.x, 14u)])), arg_0.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2102f) + _wgslsmith_f_op_f32(abs(1302f))), _wgslsmith_f_op_f32(409f * _wgslsmith_f_op_f32(abs(813f))), 442f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(348f, 247f), _wgslsmith_f_op_f32(floor(1587f)), true))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~arg_0.a.x, var_0), u_input.b.x)));
    var var_3 = var_2.a;
    global2 = array<bool, 14>();
    return u_input.b.x;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global2 = array<bool, 14>();
    global3 = array<i32, 4>();
    let var_0 = Struct_4(-546f, func_4(Struct_5(abs(vec3<u32>(u_input.b.x, arg_1.c.b, arg_1.c.b)), all(vec4<bool>(global2[_wgslsmith_index_u32(98677u, 14u)], global1[_wgslsmith_index_u32(1u, 4u)], true, arg_1.b)), func_3(24501i, vec2<i32>(global3[_wgslsmith_index_u32(82178u, 4u)], arg_0), vec3<bool>(true, global1[_wgslsmith_index_u32(37910u, 4u)], arg_1.b)))) == u_input.b.x, arg_1);
    let var_1 = Struct_3(~(~(~global3[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.c.a.wy)), arg_1.a.a.zw))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.a.x, -370f)))));
    let var_2 = vec3<bool>(any(select(select(vec2<bool>(var_0.b, false), select(vec2<bool>(false, global1[_wgslsmith_index_u32(4255u, 4u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 4u)], global2[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<bool>(false, true)), vec2<bool>(false, arg_1.b)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(var_0.b, false)), select(select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.c.c.b, 4u)], global2[_wgslsmith_index_u32(var_0.c.c.b, 14u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], var_0.b), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true & global1[_wgslsmith_index_u32(63413u, 4u)]))), arg_1.b, !(!arg_1.b));
    return var_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    global3 = array<i32, 4>();
    let var_0 = Struct_3(countOneBits(-global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 4u)]) << (func_2(_wgslsmith_div_i32(2147483647i, firstTrailingBit(global3[_wgslsmith_index_u32(0u, 4u)])), Struct_2(Struct_1(vec4<f32>(arg_2, arg_0.a.a.x, 1000f, arg_2), 22993u), true, func_2(global3[_wgslsmith_index_u32(arg_0.c.b, 4u)], arg_0).c)).c.b % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.a.xw))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_2(global3[_wgslsmith_index_u32(func_2(14849i, Struct_2(arg_0.a, false, arg_0.c)).a.b, 4u)], Struct_2(func_2(global3[_wgslsmith_index_u32(1u, 4u)], arg_0).a, arg_0.b, func_2(arg_1.x, Struct_2(Struct_1(vec4<f32>(-1865f, arg_0.a.a.x, -447f, 1299f), arg_0.c.b), false, Struct_1(vec4<f32>(-1266f, -1468f, arg_0.a.a.x, 1086f), u_input.b.x))).a)).c.a.x)));
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    return func_2(countOneBits(arg_1.x), Struct_2(arg_0.c, !arg_3, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a.a.x, 518f, global2[_wgslsmith_index_u32(arg_0.a.b, 14u)])), _wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(561f - -1577f), -669f), abs(arg_0.a.b)))).a;
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(sign(340f)), false, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 446f, -1153f, -377f))), 48538u), any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 14u)], false)), func_5(func_2(2147483647i & arg_0, Struct_2(Struct_1(vec4<f32>(-464f, 329f, -405f, -621f), 4294967295u), global2[_wgslsmith_index_u32(u_input.a, 14u)], Struct_1(vec4<f32>(898f, -567f, -232f, -624f), u_input.a))), _wgslsmith_add_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], 9535i, 0i, global3[_wgslsmith_index_u32(81790u, 4u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 1935i, arg_0, -2147483647i), vec4<i32>(-33949i, arg_0, arg_0, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -1277f), 2147483647i > -global3[_wgslsmith_index_u32(0u, 4u)])));
    var var_1 = var_0.c;
    let var_2 = Struct_3(4793i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a.x), var_0.a)), var_1.c.a.yy, !vec2<bool>(!global2[_wgslsmith_index_u32(var_0.c.c.b, 14u)], true))));
    global2 = array<bool, 14>();
    let var_3 = Struct_5(func_3(~1i, vec2<i32>(62542i, ~max(14807i, var_2.a)), !vec3<bool>(global1[_wgslsmith_index_u32(62667u, 4u)] && true, true, true)).zxx, var_0.b, ~vec4<u32>(~(u_input.b.x | 1u), _wgslsmith_clamp_u32(24002u, ~79133u, 2916u), var_1.c.b, _wgslsmith_dot_vec2_u32(~u_input.b, u_input.b)));
    return Struct_4(1000f, !global1[_wgslsmith_index_u32(66712u, 4u)], func_2(_wgslsmith_mult_i32(-1i, -arg_0 | ~global3[_wgslsmith_index_u32(var_0.c.a.b, 4u)]), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = vec3<f32>(-741f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-196f))), -315f);
    var var_2 = global3[_wgslsmith_index_u32(u_input.a, 4u)];
    global2 = array<bool, 14>();
    var var_3 = !(!vec3<bool>(0u != u_input.b.x, all(vec3<bool>(false, false, false)), false));
    global0 = var_1.x;
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -206f))))), _wgslsmith_f_op_f32(-1012f - var_1.x)));
    var var_5 = func_1(1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.a.b, _wgslsmith_f_op_f32(-var_5.a), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(38185i, 0i), vec2<i32>(global3[_wgslsmith_index_u32(var_5.c.c.b, 4u)], global3[_wgslsmith_index_u32(34213u, 4u)])), ~vec2<i32>(global3[_wgslsmith_index_u32(var_5.c.c.b, 4u)], global3[_wgslsmith_index_u32(0u, 4u)]), global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<i32>(abs(-42089i), global3[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(1i, global3[_wgslsmith_index_u32(u_input.a, 4u)], 0i), -46686i), max(vec2<i32>(global3[_wgslsmith_index_u32(8410u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global3[_wgslsmith_index_u32(var_5.c.c.b, 4u)]), vec2<i32>(0i, 2147483647i), vec2<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(1u, 4u)]))))), vec4<i32>(_wgslsmith_sub_i32(12205i, countOneBits(-global3[_wgslsmith_index_u32(8821u, 4u)])), abs(_wgslsmith_sub_i32(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(11267u, 4u)], 2147483647i), vec2<i32>(-2147483647i, 643i)))), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(var_5.c.a.b, 4u)], _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_mult_i32(20876i, 9853i))), ~1i), var_5.c.c.a);
}

