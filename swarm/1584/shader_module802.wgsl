struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(1u, 34176u, 4294967295u, 5406u, 1u, 4294967295u, 0u, 8295u, 4294967295u, 4294967295u, 1u, 4294967295u, 4294967295u, 1u, 4294967295u, 6621u, 0u, 63961u, 65014u, 54188u, 136916u, 21648u, 51828u, 0u, 4294967295u, 0u, 1u, 0u, 2338u, 14410u);

var<private> global1: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(43400u, 4294967295u, 29507u, 4294967295u), vec4<u32>(1u, 46739u, 4294967295u, 0u), vec4<u32>(60678u, 0u, 20061u, 35913u), vec4<u32>(1u, 4294967295u, 818u, 12852u), vec4<u32>(35817u, 1u, 51581u, 26368u), vec4<u32>(40126u, 4294967295u, 0u, 51617u), vec4<u32>(12099u, 1u, 16709u, 0u), vec4<u32>(78872u, 9842u, 99458u, 23370u), vec4<u32>(0u, 40359u, 32620u, 5570u), vec4<u32>(0u, 13232u, 0u, 22402u), vec4<u32>(22594u, 4294967295u, 72026u, 1u), vec4<u32>(30836u, 0u, 0u, 51946u), vec4<u32>(61714u, 81098u, 73132u, 1u), vec4<u32>(4294967295u, 28505u, 1u, 790u), vec4<u32>(504u, 4294967295u, 3306u, 0u), vec4<u32>(23807u, 1u, 85471u, 4294967295u));

var<private> global2: array<f32, 10> = array<f32, 10>(-1068f, -837f, 1214f, 419f, -719f, -1079f, 477f, -768f, -310f, -1014f);

var<private> global3: array<u32, 6> = array<u32, 6>(4294967295u, 4095u, 0u, 6552u, 4294967295u, 37561u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<bool> {
    global2 = array<f32, 10>();
    global0 = array<u32, 30>();
    global2 = array<f32, 10>();
    var var_0 = all(vec3<bool>(!(!all(arg_1.b.a.yz)), any(select(select(vec4<bool>(true, arg_1.b.a.x, arg_1.b.a.x, false), vec4<bool>(true, false, true, false), vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, true)), !vec4<bool>(arg_1.b.a.x, true, arg_1.b.a.x, true), arg_1.b.a.x)), !all(vec4<bool>(false, true, false, arg_1.b.a.x))));
    let var_1 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1264f * arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]) - _wgslsmith_f_op_f32(step(-138f, 160f))))));
    return select(arg_1.b.a, !arg_1.b.a, arg_1.b.a.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~1u), max(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], _wgslsmith_div_u32(29845u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72688u, 30u)], 30u)], 30u)] & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 6u)], 6u)]))), 6u)], 10u)], Struct_1(vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true, any(func_3(global2[_wgslsmith_index_u32(4294967295u, 10u)], Struct_2(global2[_wgslsmith_index_u32(48611u, 10u)], Struct_1(vec3<bool>(true, true, true), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -44220i), global2[_wgslsmith_index_u32(16911u, 10u)], vec2<u32>(38579u, 28807u), -5942i), global2[_wgslsmith_index_u32(26991u, 10u)]), vec3<i32>(u_input.d.x, u_input.c, 2147483647i)))), vec4<i32>(5132i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d.x, u_input.d.x, -20711i), vec3<i32>(u_input.d.x, u_input.c, 32890i)), abs(u_input.d.x), select(u_input.d.x, 0i, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-171f, global2[_wgslsmith_index_u32(135214u, 10u)]) * global2[_wgslsmith_index_u32(211u ^ global0[_wgslsmith_index_u32(17872u, 30u)], 10u)])), select(vec2<u32>(u_input.a.x, ~7389u), u_input.a.zy, false), ~u_input.d.x), 713f);
    return var_0;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = select(select(select(vec4<bool>(false, any(vec3<bool>(var_0.b.a.x, false, false)), true, var_0.b.a.x), select(vec4<bool>(false, arg_0, false, false), !vec4<bool>(true, false, arg_0, false), vec4<bool>(var_0.b.a.x, true, false, arg_0)), !any(vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x))), vec4<bool>(arg_3.x <= 110132u, false, arg_0, _wgslsmith_div_i32(u_input.d.x, u_input.d.x) <= 48017i), select(!vec4<bool>(true, var_0.b.a.x, arg_0, false), !(!vec4<bool>(true, var_0.b.a.x, false, arg_0)), true)), !vec4<bool>(arg_0, func_3(-429f, var_0, var_0.b.b.xyw).x && false, false, -788f <= global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(74022u, 6u)] >> (4294967295u % 32u), 10u)]), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_3.x, 10u)], global2[_wgslsmith_index_u32(u_input.b, 10u)]) + vec2<f32>(-1641f, var_0.a)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a, 1342f)), _wgslsmith_div_f32(-1000f, 844f)))));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(var_0.b.d.x, 16u)], select(u_input.a, global1[_wgslsmith_index_u32(5151u, 16u)], var_0.b.a.x))), 1u ^ var_0.b.d.x);
    var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1549f + -536f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.b.c)), var_0.b.c))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c, var_0.a) + vec2<f32>(-336f, -1000f))) - vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 10u)], -1201f)))));
    return Struct_3(func_2().b, ~firstTrailingBit(u_input.a));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global1 = array<vec4<u32>, 16>();
    var var_0 = func_1(func_1(!(false & (arg_0.a.a.x && true)), firstTrailingBit(reverseBits(-u_input.c)), -15468i, vec2<u32>(~_wgslsmith_dot_vec4_u32(arg_0.b, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7785u, 6u)], 16u)]), _wgslsmith_div_u32(51314u, u_input.b))).a.a.x, _wgslsmith_sub_i32(-1i, ~arg_0.a.b.x), 31544i, arg_0.b.xx).a;
    global3 = array<u32, 6>();
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(func_1(true, _wgslsmith_sub_i32(1i, abs(u_input.d.x)), countOneBits(u_input.d.x), abs(vec2<u32>(81049u, 4294967295u)))), u_input.a);
    var var_1 = func_1(false, abs(u_input.c), 1i ^ _wgslsmith_dot_vec3_i32(~min(var_0.a.b.www, vec3<i32>(12056i, 11995i, u_input.d.x)), var_0.a.b.xzw), var_0.b.zy);
    var var_2 = 2637i;
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~(~var_1.a.d.x), 30u)], 0u), 94585u, var_1.a.d.x);
    var var_4 = func_1(all(!vec4<bool>(all(vec2<bool>(true, true)), true, var_0.a.a.x, func_2().b.a.x)), var_0.a.b.x, _wgslsmith_mult_i32(firstTrailingBit(-var_1.a.e), 9716i), func_4(Struct_3(Struct_1(!var_1.a.a, select(vec4<i32>(var_1.a.b.x, var_1.a.e, 4589i, var_0.a.e), var_1.a.b, vec4<bool>(false, var_1.a.a.x, false, true)), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(var_1.a.d.x, 10u)], 850f)), vec2<u32>(var_1.a.d.x, 116419u), -var_0.a.b.x), vec4<u32>(_wgslsmith_add_u32(var_0.b.x, global0[_wgslsmith_index_u32(var_0.b.x, 30u)]), 20865u, ~global3[_wgslsmith_index_u32(51340u, 6u)], abs(0u)))).d);
    var var_5 = abs(~vec3<u32>(~(~var_1.a.d.x), _wgslsmith_mod_u32(var_0.a.d.x, ~var_4.a.d.x), abs(global0[_wgslsmith_index_u32(countOneBits(u_input.b), 30u)])));
    var var_6 = var_0.a.c;
    var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -243f))) - var_0.a.c);
    var var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(308f)), var_4.a.c, global2[_wgslsmith_index_u32(~var_0.b.x, 10u)], -1047f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1110f, var_7.c, var_0.a.c, var_4.a.c)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(44532u, 10u)], var_1.a.c, var_1.a.c, -569f))))), vec4<f32>(var_0.a.c, var_4.a.c, _wgslsmith_f_op_f32(min(-1064f, 1000f)), var_0.a.c)), -u_input.c);
}

