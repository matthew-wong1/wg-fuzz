struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: array<f32, 29> = array<f32, 29>(-1000f, 540f, 722f, 385f, 319f, -779f, 416f, 1715f, -545f, -220f, -1017f, 1161f, -1788f, -1013f, 1852f, 261f, -455f, 1794f, 686f, 2466f, -699f, -1498f, -1416f, -1168f, -768f, -201f, -892f, 351f, -316f);

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-2655f, 1130f, 175f, 559f), vec4<f32>(371f, -728f, -475f, -118f), vec4<f32>(1000f, -1328f, -1199f, -1035f), vec4<f32>(1000f, -110f, 811f, 1279f), vec4<f32>(-2704f, 2035f, 459f, 217f), vec4<f32>(-362f, 1000f, 1079f, 1046f), vec4<f32>(-1170f, -746f, 1000f, -597f), vec4<f32>(-930f, -1737f, 1252f, 1389f), vec4<f32>(115f, 1128f, 766f, -282f), vec4<f32>(1000f, 111f, 263f, -1000f), vec4<f32>(1048f, 338f, -1129f, 1034f), vec4<f32>(340f, -372f, 2263f, -387f), vec4<f32>(-1038f, -2402f, 371f, -2558f), vec4<f32>(1771f, -1086f, -126f, -142f), vec4<f32>(-547f, -168f, 1702f, -486f), vec4<f32>(-250f, -978f, 1504f, 2521f));

var<private> global4: vec2<f32> = vec2<f32>(-401f, 2428f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> i32 {
    let var_0 = Struct_2(Struct_1(2045f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-817f)))), -_wgslsmith_sub_i32(global2.c & global2.c, arg_3 & -1i)));
    let var_1 = 220f;
    let var_2 = firstTrailingBit(arg_0.x ^ (6429i | arg_0.x));
    let var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(floor(2587f)), var_0.a.a, _wgslsmith_f_op_f32(-global2.a)), Struct_3(_wgslsmith_clamp_i32(arg_0.x, i32(-1i) * -28097i, var_2), var_0), Struct_1(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(global4.x * -896f), 64307i));
    var var_4 = var_3;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(select(2147483647i, -_wgslsmith_div_i32(45817i, arg_3), (u_input.a != u_input.a) != (arg_2.x && true)), -2147483647i), _wgslsmith_mod_vec2_i32(arg_0.zx, max(arg_0.xx, arg_0.yz | vec2<i32>(1i, var_3.b.a))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x | u_input.a, u_input.a ^ 29644u, arg_2.x), ~vec3<u32>(u_input.a, u_input.a, arg_2.x)), 45232u);
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(29416i, 73592i, func_3(arg_0, false, vec3<bool>(false, false, true), -2147483647i), 0i) | vec4<i32>(global2.c | -469i, _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(global2.c, 1i, arg_0.x)), 2147483647i, _wgslsmith_dot_vec2_i32(arg_0.zz, arg_0.zx)), firstTrailingBit(~select(vec4<i32>(68338i, -8451i, 79252i, -6472i), vec4<i32>(arg_0.x, arg_0.x, 1i, global2.c), vec4<bool>(false, true, true, false)))), -firstTrailingBit(~firstLeadingBit(vec4<i32>(-1i, 2147483647i, -4911i, 37017i))));
    global0 = array<vec2<bool>, 14>();
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(11244u, 29u)], 601f, 597f, global4.x) + vec4<f32>(global1[_wgslsmith_index_u32(var_0, 29u)], -192f, global2.b, arg_1.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(511f, global4.x, arg_1.x, arg_1.x), global3[_wgslsmith_index_u32(var_0, 16u)])))))));
    return Struct_1(1618f, -222f, ~(firstTrailingBit(_wgslsmith_mult_i32(global2.c, 39371i)) << (_wgslsmith_div_u32(5670u, _wgslsmith_add_u32(arg_2.x, 0u)) % 32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = Struct_2(arg_3);
    let var_1 = vec2<bool>(select(!(!all(vec4<bool>(true, true, false, true))), false, !(16543u >= arg_0.x)), all(vec4<bool>(true, true, true, true)));
    global3 = array<vec4<f32>, 16>();
    global1 = array<f32, 29>();
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-914f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1171f + -615f)), global4.x))), Struct_3(arg_2.c, Struct_2(var_0.a)), var_0.a);
    return select(all(vec4<bool>(func_2(vec3<i32>(-30154i, 22234i, global2.c), vec3<f32>(-1293f, -233f, global4.x), arg_0.zx).a != _wgslsmith_f_op_f32(-global4.x), true, true, select(1u, u_input.a, var_1.x) >= arg_0.x)), var_1.x, true);
}

fn func_5(arg_0: vec3<bool>, arg_1: i32) -> Struct_5 {
    global2 = func_2(firstLeadingBit(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.c, arg_1, arg_1), vec3<i32>(arg_1, -25026i, global2.c), vec3<i32>(0i, arg_1, -1i)), ~vec3<i32>(global2.c, 1i, global2.c))) ^ _wgslsmith_mod_vec3_i32(~(vec3<i32>(global2.c, arg_1, arg_1) | vec3<i32>(36680i, global2.c, global2.c)), ~vec3<i32>(global2.c, 2147483647i, arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1136f, global2.b, _wgslsmith_div_f32(-397f, 534f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1602f, global4.x, global2.b) + vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 1055f, global2.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 1484f, -711f)))), abs(vec2<u32>(~u_input.a, 4294967295u)));
    let var_0 = ~reverseBits(vec3<i32>(2147483647i, -_wgslsmith_sub_i32(arg_1, global2.c), arg_1));
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_div_f32(-630f, global2.a), global4.x, _wgslsmith_f_op_f32(trunc(func_2(var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], global4.x, -865f) + vec3<f32>(-910f, global4.x, -1279f)), vec2<u32>(0u, u_input.a)).a))), Struct_3(var_0.x, Struct_2(func_2(vec3<i32>(var_0.x, arg_1, var_0.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-258f, global4.x, global1[_wgslsmith_index_u32(1u, 29u)]), vec3<f32>(global2.b, global2.a, global4.x))), vec2<u32>(u_input.a, 12944u)))), Struct_1(1259f, global4.x, global2.c));
    global2 = func_2(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-2147483647i, 18568i), firstTrailingBit(var_0.x), -global2.c), ~vec3<i32>(var_0.x, -2147483647i, arg_1) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(70719u, u_input.a, 18571u), vec3<u32>(u_input.a, u_input.a, 48885u)) % vec3<u32>(32u))), var_0 & vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.zy, var_0.zx), global2.c, ~(-1i))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, global4.x, -449f) - vec3<f32>(1094f, var_1.b.b.a.a, 1469f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-654f, 625f, -193f), var_1.a, vec3<bool>(arg_0.x, arg_0.x, true))))))), ~(~(~vec2<u32>(u_input.a, 0u))) << (vec2<u32>(~(u_input.a & u_input.a), ~(~u_input.a)) % vec2<u32>(32u)));
    let var_2 = global0[_wgslsmith_index_u32(max(48312u, (((u_input.a >> (u_input.a % 32u)) ^ 32543u) & countOneBits(30889u)) | 1u), 14u)];
    return Struct_5(var_1.a.zz, !arg_0.yx, u_input.a, 1000f, Struct_3(~firstLeadingBit(var_1.b.a << (1u % 32u)), var_1.b.b));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    let var_0 = func_5(select(vec3<bool>(func_4(vec3<u32>(u_input.a, u_input.a, u_input.a), global2.b, func_2(vec3<i32>(31864i, 8443i, -23367i), vec3<f32>(global2.b, global2.b, -1458f), vec2<u32>(4294967295u, u_input.a)), Struct_1(global4.x, -905f, -22397i)), true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(u_input.a <= u_input.a, true, arg_0.b >= -384f))), -27147i);
    var var_1 = var_0.e.b;
    var var_2 = vec3<f32>(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * -833f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(min(87807u, 0u), 29u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(910f)))), select(true, !var_0.b.x, all(vec3<bool>(true, false, true)))))));
    let var_3 = Struct_2(func_5(select(!(!vec3<bool>(var_0.b.x, false, var_0.b.x)), !select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(false, true, var_0.b.x), vec3<bool>(false, true, var_0.b.x)), select(vec3<bool>(var_0.b.x, var_0.b.x, false), select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.b.x, false), var_0.b.x), select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(false, var_0.b.x, true), var_0.b.x))), min(_wgslsmith_sub_i32(arg_1, 37305i), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.a.c, var_0.e.b.a.c, var_1.a.c), ~vec3<i32>(-2147483647i, var_1.a.c, 2147483647i)))).e.b.a);
    var var_4 = select(select(vec2<u32>(u_input.a, var_0.c | 4294967295u), vec2<u32>(_wgslsmith_div_u32(~u_input.a, u_input.a & 36629u), ~(~31514u)), select(func_5(vec3<bool>(false, false, false), 2147483647i).b, select(vec2<bool>(false, var_0.b.x), select(vec2<bool>(true, false), vec2<bool>(var_0.b.x, true), false), func_5(vec3<bool>(var_0.b.x, true, true), -30258i).b), func_5(vec3<bool>(true, true, true), ~global2.c).b)), abs(~countOneBits(~vec2<u32>(0u, 58646u))), var_0.b.x);
    return ~(~(vec2<u32>(min(var_4.x, var_0.c), var_4.x) << (~vec2<u32>(var_4.x, var_4.x) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(~1i, global2.c, 1i), firstLeadingBit(vec3<i32>(11062i, global2.c, global2.c) << (vec3<u32>(u_input.a, 0u, 25197u) % vec3<u32>(32u)))), reverseBits(global2.c));
    var var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(50849u, 1u) | vec2<u32>(u_input.a, 3810u), ~vec2<u32>(0u, u_input.a)), ~(countOneBits(vec2<u32>(0u, u_input.a)) >> (func_1(Struct_1(global2.a, 664f, global2.c), global2.c) % vec2<u32>(32u)))) | abs(firstTrailingBit(_wgslsmith_add_u32(37630u, u_input.a)));
    global3 = array<vec4<f32>, 16>();
    global2 = func_5(vec3<bool>(true, !all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)) | (func_5(vec3<bool>(true, true, true), 2147483647i).b.x && (u_input.a > 41620u))), 27325i).e.b.a;
    global0 = array<vec2<bool>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.x, _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), min(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(4294967295u, u_input.a, 38159u) ^ vec3<u32>(u_input.a, u_input.a, 21016u))) << (vec3<u32>(select(0u, ~0u, true), ~100278u, u_input.a) % vec3<u32>(32u)));
}

