struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 25> = array<f32, 25>(1560f, -280f, -147f, -1229f, -129f, 959f, 497f, 104f, 543f, -1284f, 196f, -224f, -291f, -717f, -920f, -859f, 740f, 1000f, -1291f, 1410f, -1955f, 493f, -799f, 2037f, -1000f);

var<private> global2: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global3: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-539f, -193f, -124f, -1978f), vec4<f32>(970f, -588f, -882f, -306f), vec4<f32>(121f, -1000f, 540f, -1000f), vec4<f32>(-704f, 115f, -1216f, -912f), vec4<f32>(-362f, 1215f, -224f, -930f), vec4<f32>(726f, -1705f, -102f, -1158f), vec4<f32>(949f, 158f, 1135f, 1064f), vec4<f32>(365f, -565f, 329f, -1735f), vec4<f32>(448f, 1994f, -1000f, 731f), vec4<f32>(640f, 1373f, -1236f, -548f), vec4<f32>(1009f, -650f, -1130f, -102f), vec4<f32>(1639f, -766f, -200f, -1317f), vec4<f32>(231f, -897f, -359f, -509f), vec4<f32>(1505f, 722f, 1043f, 1411f), vec4<f32>(-244f, 351f, -421f, 304f), vec4<f32>(-982f, -318f, -545f, -162f), vec4<f32>(850f, -190f, 223f, -843f), vec4<f32>(916f, -160f, -1393f, -1624f), vec4<f32>(1645f, 555f, 852f, 1000f), vec4<f32>(578f, -1423f, 1428f, 135f), vec4<f32>(-1000f, 538f, 1457f, 1799f), vec4<f32>(344f, 926f, 896f, -400f), vec4<f32>(280f, -1249f, 779f, -919f), vec4<f32>(-451f, 1000f, 762f, 1256f), vec4<f32>(-122f, 1010f, -457f, -391f), vec4<f32>(2303f, 1065f, -717f, -686f));

var<private> global4: bool;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = !(_wgslsmith_sub_i32(~1i, ~(~u_input.a.x)) < u_input.a.x);
    var var_1 = u_input.a.x;
    var_1 = min(u_input.a.x, u_input.a.x);
    let var_2 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec2<bool>(false, false))));
    var_1 = u_input.a.x;
    return Struct_1(-1589f, var_2.x, 1i >> (countOneBits(~(global2.x ^ 5681u)) % 32u), -19514i);
}

fn func_3(arg_0: bool) -> Struct_1 {
    global1 = array<f32, 25>();
    var var_0 = global0.xwz;
    global4 = any(!vec4<bool>(arg_0, arg_0, arg_0, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global2.x, 25u)])) != -471f));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(74142u, 26u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(794f, var_0.x, var_0.x, 3176f), vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 25u)], -1288f, global1[_wgslsmith_index_u32(50761u, 25u)], -581f), vec4<bool>(true, arg_0, false, arg_0)))))) - global3[_wgslsmith_index_u32(global2.x, 26u)]), -(select(u_input.a.yyy, vec3<i32>(u_input.a.x, u_input.a.x, -33680i), arg_0) | abs(vec3<i32>(1i, u_input.a.x, -1i))) | abs(vec3<i32>(~0i, _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, 37759i), u_input.a.x)), func_2(global0.yz, global0.www, -410f), func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx)), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.x, 25u)] + global0.x), _wgslsmith_f_op_f32(f32(-1f) * -825f))), global0.yww, global1[_wgslsmith_index_u32(~global2.x, 25u)]), Struct_1(var_0.x, true, _wgslsmith_sub_i32(max(~u_input.a.x, ~32701i), 0i), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(390f, 996f) * var_0.xy)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(171f, global1[_wgslsmith_index_u32(1101u, 25u)], -1064f), vec3<f32>(-2117f, global0.x, global0.x))))), 1475f).c));
    var var_2 = vec4<i32>(1i, ~(_wgslsmith_add_i32(3640i ^ var_1.e.d, -10804i) >> (4294967295u % 32u)), u_input.a.x, -24218i);
    return var_1.d;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = !select(select(vec2<bool>(arg_1.d.b, true), vec2<bool>(true, true), any(vec3<bool>(arg_1.d.b, arg_1.e.b, true)) || !arg_1.d.b), vec2<bool>(any(vec2<bool>(true, false)), all(!vec3<bool>(true, arg_1.e.b, true))), !vec2<bool>(true, arg_1.e.b));
    let var_1 = 21338u;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global2.x, 25u)], arg_2))))))), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, arg_1.c.c), u_input.a), 0i)), abs(select(u_input.a.xy, countOneBits(arg_1.b.yx), !vec2<bool>(false, arg_1.e.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.a, 484f) * vec2<f32>(global1[_wgslsmith_index_u32(global2.x, 25u)], -224f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1660f, 718f))) + vec2<f32>(arg_1.c.a, arg_0)))) + _wgslsmith_f_op_vec2_f32(-arg_1.a.yw)), arg_1, arg_0);
    var var_3 = ~(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(22461u, 1u, 1u)) << (vec3<u32>(abs(112691u), reverseBits(global2.x), 873u) % vec3<u32>(32u))) | vec3<u32>(var_1, (9748u | _wgslsmith_dot_vec2_u32(vec2<u32>(12673u, 883u), vec2<u32>(15141u, 5750u))) & 11549u, var_1);
    var var_4 = select(select(vec2<bool>(true, arg_1.c.b), select(var_0, !var_0, arg_1.e.b), var_0), vec2<bool>(true, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-650f, -650f)), vec3<f32>(var_2.d.a.x, arg_2, global1[_wgslsmith_index_u32(4294967295u, 25u)]), var_2.e).b & all(select(vec4<bool>(var_2.d.d.b, arg_1.c.b, var_2.d.d.b, var_0.x), vec4<bool>(false, arg_1.e.b, var_0.x, false), arg_1.c.b))), select(!(!(!var_0)), select(select(var_0, !var_0, !vec2<bool>(true, var_0.x)), vec2<bool>(true, all(vec4<bool>(false, false, true, var_2.d.d.b))), var_0.x), select(vec2<bool>(var_0.x, false), select(var_0, !vec2<bool>(arg_1.c.b, true), any(var_0)), ~global2.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, var_1), vec3<u32>(var_3.x, 0u, global2.x)))));
    return func_2(global0.wy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)))), -1000f), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(var_2.e + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(1158f, arg_1.d.a)))))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> i32 {
    var var_0 = vec3<u32>(global2.x, global2.x, ~(~global2.x & countOneBits(global2.x)) & (global2.x ^ (global2.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 0u, 0u), vec4<u32>(global2.x, 1u, 1u, 1u)))));
    let var_1 = !all(vec3<bool>(any(!vec3<bool>(arg_2, false, arg_3.d.b)), !any(vec3<bool>(arg_2, arg_2, false)), arg_1.c.b));
    var var_2 = all(select(select(vec3<bool>(arg_3.e.b, true, arg_1.e.b), !select(vec3<bool>(arg_1.d.b, false, true), vec3<bool>(true, arg_2, false), false), arg_3.d.b), !vec3<bool>(func_3(false).b, true, false), select(vec3<bool>(func_3(false).b, true, true), !vec3<bool>(false, arg_1.d.b, arg_1.e.b), false)));
    global2 = vec2<u32>(~(~(~43328u)), ~(~12205u));
    global1 = array<f32, 25>();
    return -1i;
}

fn func_1() -> u32 {
    var var_0 = func_5(u_input.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(global2.x, 26u)]) * global3[_wgslsmith_index_u32(global2.x, 26u)]) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(27173u, 25u)], -1235f) + vec4<f32>(-639f, -1003f, global1[_wgslsmith_index_u32(global2.x, 25u)], 1246f))))), countOneBits(u_input.a.yyx), Struct_1(-375f, true, -2147483647i, u_input.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 25u)]) * _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 25u)], global0.x))), any(vec2<bool>(true, true)), -_wgslsmith_dot_vec3_i32(u_input.a.zzz, u_input.a.ywx), 41603i), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 215f) * global0.wy)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1961f), 605f, -586f), 1138f)), true, Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(8049u, 26u)]) + _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(36754u, 26u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 25u)], global0.x, -1320f, global0.x))))), vec3<i32>(-37971i, ~(-u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x), _wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(2147483647i, u_input.a.x)))), Struct_1(_wgslsmith_f_op_f32(round(982f)), true, u_input.a.x, -12421i), func_4(func_2(vec2<f32>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(27996u, 25u)]), global0.www, global0.x).a, Struct_2(_wgslsmith_f_op_vec4_f32(step(global3[_wgslsmith_index_u32(14247u, 26u)], global3[_wgslsmith_index_u32(global2.x, 26u)])), u_input.a.zyw, func_3(true), func_3(true), func_3(true)), 139f), Struct_1(_wgslsmith_f_op_f32(-546f * global1[_wgslsmith_index_u32(max(global2.x, 80174u), 25u)]), true, -u_input.a.x >> (~global2.x % 32u), i32(-1i) * -2147483647i)));
    var_0 = func_5(u_input.a.x, Struct_2(global3[_wgslsmith_index_u32(~firstTrailingBit(~36546u), 26u)], select(min(u_input.a.zyx ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), -u_input.a.zwx), u_input.a.yzy, !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), func_3(true), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 25u)], global0.x, 814f, global1[_wgslsmith_index_u32(global2.x, 25u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, -5543i, u_input.a.x)), Struct_1(global1[_wgslsmith_index_u32(1u, 25u)], false, u_input.a.x, u_input.a.x), Struct_1(global0.x, true, u_input.a.x, u_input.a.x), func_2(vec2<f32>(global0.x, 116f), vec3<f32>(global0.x, global1[_wgslsmith_index_u32(61845u, 25u)], 449f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 25u)]))), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13863u, global2.x, 1u, 58733u), vec4<u32>(15738u, 0u, 63274u, global2.x)), 25u)], _wgslsmith_div_u32(global2.x, global2.x) >= (global2.x ^ 0u), u_input.a.x, 1i)), !(!(52848u >= ~global2.x)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1124f, global1[_wgslsmith_index_u32(global2.x, 25u)], -717f, -293f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -354f, global1[_wgslsmith_index_u32(global2.x, 25u)], global1[_wgslsmith_index_u32(global2.x, 25u)])))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(global2.x, 26u)], global3[_wgslsmith_index_u32(3268u, 26u)]) - vec4<f32>(-2550f, global0.x, 585f, 1227f))), u_input.a.xzw, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(918f - global0.x)), true, -40542i, -3973i), func_3(true), func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), Struct_2(_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(global2.x, 26u)], vec4<f32>(global0.x, global0.x, 767f, 331f)), vec3<i32>(u_input.a.x, -2147483647i, 28952i), Struct_1(global1[_wgslsmith_index_u32(global2.x, 25u)], false, -2147483647i, 963i), func_3(true), func_4(-1423f, Struct_2(vec4<f32>(global0.x, 1816f, -170f, -275f), vec3<i32>(u_input.a.x, u_input.a.x, 0i), Struct_1(439f, true, -2147483647i, u_input.a.x), Struct_1(-260f, true, u_input.a.x, 25588i), Struct_1(-1282f, true, u_input.a.x, 1i)), -523f)), _wgslsmith_f_op_f32(f32(-1f) * -331f))));
    var_0 = _wgslsmith_dot_vec3_i32(u_input.a.zwz, u_input.a.wzx);
    var_0 = u_input.a.x;
    global4 = true;
    return ~_wgslsmith_add_u32(firstTrailingBit(2632u), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global2.x, 36437u), ~vec2<u32>(global2.x, global2.x), ~vec2<u32>(global2.x, 84263u)) | vec2<u32>(1u, func_1())));
    global1 = array<f32, 25>();
    var var_0 = vec4<bool>(true, -((u_input.a.x | -21061i) | -28265i) <= (i32(-1i) * -u_input.a.x), true, countOneBits(0u) <= (global2.x << (~global2.x % 32u)));
    var_0 = select(select(!select(select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, true)), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<bool>(false, true, var_0.x, true)), vec4<bool>(!all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), false, !(u_input.a.x >= u_input.a.x), func_4(1496f, Struct_2(global3[_wgslsmith_index_u32(global2.x, 26u)], vec3<i32>(-7393i, 90965i, -3118i), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 25u)], var_0.x, u_input.a.x, -1i), Struct_1(global0.x, false, 0i, u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(global2.x, 25u)], false, -1i, 1i)), -810f).b), !(!(!var_0.x))), select(vec4<bool>(false, true & !var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 0u, 0u), vec3<u32>(0u, global2.x, global2.x)) > global2.x, func_4(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global2.x, 25u)], -440f), Struct_2(global3[_wgslsmith_index_u32(global2.x, 26u)], u_input.a.zww, Struct_1(-141f, true, u_input.a.x, -38383i), Struct_1(-302f, var_0.x, u_input.a.x, u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(16367u, 25u)], var_0.x, -31650i, u_input.a.x)), 1567f).b), !select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, var_0.x, false, var_0.x)), vec4<bool>(var_0.x, false, true, false), select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(false, true, var_0.x, var_0.x), var_0.x)), select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(func_2(global0.zw, vec3<f32>(global0.x, -276f, -228f), -828f).b, !var_0.x, var_0.x | var_0.x, false), !vec4<bool>(var_0.x, false, var_0.x, var_0.x))), true);
    var var_1 = Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(~4294967295u, 25u)], _wgslsmith_f_op_f32(642f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + -378f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(func_4(1000f, Struct_2(vec4<f32>(-542f, global0.x, -185f, -370f), vec3<i32>(u_input.a.x, u_input.a.x, -28689i), Struct_1(global1[_wgslsmith_index_u32(global2.x, 25u)], var_0.x, -14829i, 1i), Struct_1(global1[_wgslsmith_index_u32(1377u, 25u)], var_0.x, 13141i, u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(global2.x, 25u)], true, u_input.a.x, u_input.a.x)), 1989f).a)))), _wgslsmith_div_f32(func_3(true).a, global1[_wgslsmith_index_u32(global2.x, 25u)])), -(~u_input.a.wzw), Struct_1(global1[_wgslsmith_index_u32(max(max(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 0u, 1u), vec3<u32>(55371u, 39764u, 65856u)), _wgslsmith_div_u32(global2.x, 0u)), global2.x), 25u)], !var_0.x & false, u_input.a.x, abs(u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-954f, -998f))), false, _wgslsmith_add_i32(_wgslsmith_div_i32(-7253i, min(u_input.a.x, u_input.a.x)), 1i), _wgslsmith_dot_vec3_i32(u_input.a.xyx, vec3<i32>(_wgslsmith_sub_i32(-60106i, 36598i), ~2147483647i, u_input.a.x & 8993i))), func_4(global1[_wgslsmith_index_u32(4294967295u, 25u)], Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, 31693u), 26u)], vec3<i32>(max(u_input.a.x, u_input.a.x), i32(-1i) * -8691i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), func_4(695f, Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], 572f, global1[_wgslsmith_index_u32(7674u, 25u)]), u_input.a.yyz, Struct_1(global1[_wgslsmith_index_u32(63239u, 25u)], false, 0i, -1i), Struct_1(global0.x, var_0.x, 10162i, -235i), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 25u)], var_0.x, 1i, u_input.a.x)), -231f), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-928f, 620f), global0.yx), global0.zxw, global0.x), func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -117f))), global0.yxx, global0.x)), global1[_wgslsmith_index_u32(4294967295u, 25u)]));
    let var_2 = Struct_1(global1[_wgslsmith_index_u32(~global2.x, 25u)], var_0.x, -abs(var_1.c.c), ~select(_wgslsmith_sub_i32(-var_1.b.x, var_1.d.c), _wgslsmith_mult_i32(abs(2147483647i), 1i), all(var_0.xwz) & (var_1.d.b && var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, 40556u), vec3<u32>(global2.x, global2.x, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 26663u, global2.x, 3851u), vec4<u32>(1u, 1u, 37447u, 9807u)), 4294967295u)) | ~vec3<u32>(_wgslsmith_div_u32(global2.x, 1u), ~45288u, min(global2.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.a, -446f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1707f), -144f, 1556f) - _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(~global2.x ^ global2.x, 26u)] - vec4<f32>(var_2.a, _wgslsmith_f_op_f32(abs(596f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(var_1.c.a + global0.x)))), vec2<i32>(37791i, var_1.c.d));
}

