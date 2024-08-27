struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<bool, 30> = array<bool, 30>(false, true, true, false, false, true, false, true, false, false, true, false, true, true, true, true, false, true, true, false, false, false, false, true, false, false, true, false, true, false);

var<private> global2: Struct_2;

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(-29193i, Struct_1(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), 4294967295u, vec4<u32>(4294967295u, 56936u, 34580u, 0u), vec4<bool>(false, true, false, false), vec2<bool>(false, false))), Struct_3(1i, Struct_1(vec4<u32>(1u, 1u, 19243u, 0u), 0u, vec4<u32>(0u, 46259u, 0u, 22439u), vec4<bool>(false, false, true, false), vec2<bool>(false, false))), Struct_3(-26546i, Struct_1(vec4<u32>(14558u, 19626u, 16020u, 98925u), 27469u, vec4<u32>(4294967295u, 0u, 10710u, 4294967295u), vec4<bool>(true, true, true, true), vec2<bool>(false, false))), Struct_3(-1i, Struct_1(vec4<u32>(25292u, 0u, 58433u, 4294967295u), 3000u, vec4<u32>(4294967295u, 43615u, 1u, 8746u), vec4<bool>(true, false, false, false), vec2<bool>(true, false))), Struct_3(-52844i, Struct_1(vec4<u32>(4294967295u, 16743u, 42392u, 40959u), 43394u, vec4<u32>(0u, 1u, 1u, 1u), vec4<bool>(true, false, true, true), vec2<bool>(false, true))), Struct_3(84871i, Struct_1(vec4<u32>(94935u, 4294967295u, 0u, 39931u), 1u, vec4<u32>(1u, 1u, 0u, 19679u), vec4<bool>(true, false, true, true), vec2<bool>(true, true))), Struct_3(-5165i, Struct_1(vec4<u32>(9881u, 4294967295u, 0u, 2711u), 18229u, vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<bool>(false, true, false, true), vec2<bool>(true, true))), Struct_3(0i, Struct_1(vec4<u32>(0u, 4294967295u, 0u, 0u), 1u, vec4<u32>(59491u, 4294967295u, 45339u, 65570u), vec4<bool>(true, true, true, false), vec2<bool>(true, false))), Struct_3(0i, Struct_1(vec4<u32>(33326u, 25381u, 0u, 64944u), 27559u, vec4<u32>(1u, 9640u, 4294967295u, 1u), vec4<bool>(true, false, true, false), vec2<bool>(true, false))), Struct_3(-6438i, Struct_1(vec4<u32>(1u, 26007u, 4294967295u, 0u), 60297u, vec4<u32>(1u, 19308u, 4294967295u, 17639u), vec4<bool>(true, true, true, false), vec2<bool>(false, false))), Struct_3(35399i, Struct_1(vec4<u32>(14037u, 7374u, 4294967295u, 78255u), 1u, vec4<u32>(25659u, 1u, 42311u, 4294967295u), vec4<bool>(true, true, false, false), vec2<bool>(true, false))), Struct_3(21182i, Struct_1(vec4<u32>(25872u, 4294967295u, 0u, 62819u), 1u, vec4<u32>(38358u, 4294967295u, 49754u, 1u), vec4<bool>(false, true, false, false), vec2<bool>(false, true))), Struct_3(13083i, Struct_1(vec4<u32>(0u, 1u, 30803u, 53738u), 1u, vec4<u32>(20516u, 0u, 1u, 5260u), vec4<bool>(false, false, true, true), vec2<bool>(true, false))), Struct_3(1i, Struct_1(vec4<u32>(1u, 69634u, 4294967295u, 0u), 29374u, vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<bool>(false, true, true, false), vec2<bool>(true, false))));

var<private> global4: array<f32, 12> = array<f32, 12>(-961f, -813f, -1034f, -738f, 132f, 719f, -791f, 473f, -719f, 216f, 562f, 1167f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.a, 12u)], 1185f)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 12u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(853f, 523f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(1u, 12u)], -283f) * vec2<f32>(156f, global4[_wgslsmith_index_u32(4294967295u, 12u)])))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c, 12u)] * global4[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global2.a.b, 12u)]) + 124f))));
    var var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(~(~global2.b.b)), 14u)];
    var var_3 = -select(countOneBits(vec2<i32>(-2147483647i, global2.c.x | arg_1.x)), min(vec2<i32>(firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_i32(arg_1, arg_1)), vec2<i32>(countOneBits(arg_0), -1750i)), vec2<bool>(false, !select(false, global2.b.e.x, false)));
    let var_4 = !var_0;
    return !global2.b.d.xw;
}

fn func_2() -> vec3<i32> {
    let var_0 = global3[_wgslsmith_index_u32(global2.a.c.x, 14u)];
    var var_1 = Struct_2(Struct_1(global2.e.a, var_0.b.c.x, ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.a.x, u_input.c, u_input.a, var_0.b.a.x), vec4<u32>(var_0.b.a.x, u_input.d, var_0.b.a.x, 22056u)) & global2.b.a, var_0.b.d, select(select(var_0.b.e, global2.d.zy, func_3(6686i, u_input.e.xzw)), vec2<bool>(!global1[_wgslsmith_index_u32(global2.a.a.x, 30u)], true & global1[_wgslsmith_index_u32(20906u, 30u)]), false)), global2.e, vec2<i32>(0i | u_input.b, -43603i), vec3<bool>(false, min(var_0.a, u_input.b >> (u_input.c % 32u)) < countOneBits(-1i >> (var_0.b.a.x % 32u)), true), Struct_1(~global2.e.c, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.b.a.xxw), global2.e.c.xww), reverseBits(vec4<u32>(_wgslsmith_mult_u32(u_input.a, var_0.b.b), 1u, 1u, min(53151u, 30482u))), select(select(select(global2.b.d, vec4<bool>(false, var_0.b.d.x, var_0.b.e.x, global2.e.d.x), global2.e.d.x), var_0.b.d, true), select(global2.b.d, global2.a.d, false != var_0.b.e.x), vec4<bool>(var_0.b.e.x, true || global1[_wgslsmith_index_u32(68806u, 30u)], !global1[_wgslsmith_index_u32(var_0.b.c.x, 30u)], true)), vec2<bool>(true, any(func_3(var_0.a, u_input.e.wwz)))));
    let var_2 = Struct_1(~(~(~(global2.a.a ^ vec4<u32>(4294967295u, 0u, 27190u, var_1.b.a.x)))), 37748u, abs(var_0.b.c), var_1.b.d, select(var_0.b.e, vec2<bool>(func_3(i32(-1i) * -2147483647i, ~vec3<i32>(-66011i, 77601i, 16324i)).x, any(vec2<bool>(var_0.b.e.x, var_1.d.x))), false));
    var var_3 = -1172f;
    let var_4 = vec2<u32>(78497u, var_1.b.a.x);
    return u_input.e.yyx >> (abs(~(~vec3<u32>(5249u, 7370u, u_input.c))) % vec3<u32>(32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1907f)) - _wgslsmith_div_f32(arg_1, -815f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_2.a.b, 12u)]) * _wgslsmith_div_f32(global4[_wgslsmith_index_u32(9397u, 12u)], 594f))))));
    var var_1 = -max(~func_2() ^ (u_input.e.ywx ^ _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, 1i, 0i), u_input.e.wzz)), -abs(vec3<i32>(-4398i, global2.c.x, global2.c.x)));
    var var_2 = arg_2;
    var var_3 = -(global2.c.x & arg_2.c.x);
    let var_4 = global3[_wgslsmith_index_u32(~firstTrailingBit(0u), 14u)];
    return firstTrailingBit(var_4.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(Struct_1(~global2.b.a, ~(~(6997u >> (u_input.a % 32u))), select(global2.e.a, _wgslsmith_mod_vec4_u32(global2.a.a, vec4<u32>(4294967295u, 1u, 9850u, 79434u)) | func_1(vec2<i32>(1i, u_input.b), global4[_wgslsmith_index_u32(u_input.d, 12u)], Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a, global2.b.a.x, 4294967295u), 44662u, vec4<u32>(u_input.d, global2.a.c.x, global2.e.c.x, u_input.d), vec4<bool>(true, global1[_wgslsmith_index_u32(global2.e.c.x, 30u)], true, false), vec2<bool>(global2.a.d.x, false)), global2.a, vec2<i32>(0i, global2.c.x), global2.a.d.zzx, global2.a)), true), select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(global2.b.c.x, 30u)], global2.b.e.x, global1[_wgslsmith_index_u32(global2.e.c.x, 30u)])), global2.a.d, true), select(func_3(0i >> (u_input.c % 32u), abs(u_input.e.wwy)), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 30u)]), !any(vec3<bool>(true, global2.d.x, false)))), Struct_1(_wgslsmith_sub_vec4_u32(global2.b.c, ~reverseBits(global2.a.c)), 60353u, ~(~global2.a.a), vec4<bool>(global2.b.d.x, false, any(global2.b.d), global2.a.d.x), !global2.b.e), ~vec2<i32>(global2.c.x, ~_wgslsmith_add_i32(0i, u_input.b)), global2.d, global2.e);
    global1 = array<bool, 30>();
    var var_0 = false;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1135f, global4[_wgslsmith_index_u32(global2.b.b, 12u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global2.e.b, 12u)], -569f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(global2.a.b, 12u)], -1127f)) * vec2<f32>(630f, 1160f)))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-906f, -1079f)))))));
    let var_3 = 1865u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, abs(-9787i), var_2.x);
}

