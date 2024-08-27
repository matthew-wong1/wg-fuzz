struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global2: array<vec2<bool>, 4>;

var<private> global3: array<i32, 30> = array<i32, 30>(1i, -1i, 1i, 0i, -1i, 26584i, i32(-2147483648), 15442i, -2893i, i32(-2147483648), 0i, i32(-2147483648), -23919i, -1i, -40457i, 44233i, i32(-2147483648), i32(-2147483648), -10358i, 23574i, 2147483647i, 2147483647i, 1394i, 0i, i32(-2147483648), -1i, 2147483647i, 13887i, 45464i, -55146i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> vec2<bool> {
    global2 = array<vec2<bool>, 4>();
    global1 = array<vec2<bool>, 5>();
    let var_0 = !(-select(global0.x, 2147483647i, true) > ~countOneBits(_wgslsmith_div_i32(arg_0, u_input.c)));
    global2 = array<vec2<bool>, 4>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(-109f)), vec3<bool>(!(!(true | var_0)), any(global1[_wgslsmith_index_u32(u_input.a.x, 5u)]) == var_0, arg_1.d.b.x));
    return !vec2<bool>(!arg_1.d.b.x, false);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> bool {
    var var_0 = (~_wgslsmith_div_u32(1u, 4294967295u) | ((58259u & u_input.b) ^ 7389u)) < arg_1.x;
    var var_1 = !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, arg_1.x), 5u)];
    var var_2 = select(func_3(global0.x, Struct_2(-vec2<i32>(75225i, -13361i), arg_0.yy, vec3<bool>(all(vec4<bool>(true, var_1.x, true, false)), var_1.x, any(global2[_wgslsmith_index_u32(0u, 4u)])), Struct_1(_wgslsmith_f_op_f32(min(709f, -1519f)), vec3<bool>(true, var_1.x, true)), vec3<f32>(_wgslsmith_f_op_f32(371f - 1168f), _wgslsmith_f_op_f32(min(594f, 834f)), -1541f)), 458f), !func_3(u_input.c, Struct_2(-arg_0.zy, -arg_0.xx, !vec3<bool>(var_1.x, false, false), Struct_1(1252f, vec3<bool>(var_1.x, false, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(679f, 2152f, 757f) * vec3<f32>(-1190f, 699f, -735f))), _wgslsmith_f_op_f32(select(496f, _wgslsmith_f_op_f32(floor(337f)), true))), func_3(_wgslsmith_div_i32(select(-1i, arg_0.x & arg_0.x, var_1.x), global3[_wgslsmith_index_u32(48991u, 30u)]), Struct_2(arg_0.yw, arg_0.xz, vec3<bool>(var_1.x, var_1.x, true), Struct_1(-1411f, select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-245f, -790f, -425f) * vec3<f32>(1480f, -143f, 666f)))), 501f));
    let var_3 = ~abs(max(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 533u, arg_1.x), ~vec3<u32>(39533u, 24363u, u_input.a.x)), (vec3<u32>(1u, u_input.b, u_input.b) << (vec3<u32>(1u, 1u, u_input.a.x) % vec3<u32>(32u))) ^ vec3<u32>(0u, 142483u, arg_1.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-287f))), !select(!vec3<bool>(var_1.x, var_2.x, var_2.x), !select(vec3<bool>(false, false, true), vec3<bool>(false, var_2.x, true), vec3<bool>(false, var_1.x, true)), select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, false, var_2.x)), !vec3<bool>(var_1.x, var_2.x, var_1.x), false & var_2.x)));
    return true;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = firstLeadingBit(-reverseBits(firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(1u, 30u)], global0.x, u_input.c, u_input.c))));
    global0 = var_0.wz >> (select(min(vec2<u32>(~arg_0.x, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(6487u, 0u), vec2<u32>(arg_0.x, 44988u))), arg_0.yz, true && func_3(var_0.x, Struct_2(vec2<i32>(8623i, -6064i), vec2<i32>(1i, u_input.c), vec3<bool>(true, true, true), Struct_1(arg_1.a, arg_1.b), vec3<f32>(arg_2.x, 761f, -522f)), 896f).x) % vec2<u32>(32u));
    global3 = array<i32, 30>();
    let var_1 = _wgslsmith_sub_vec3_u32(arg_0.xww, countOneBits(arg_0.wzw));
    var var_2 = arg_1.a;
    return vec4<f32>(arg_2.x, -648f, arg_1.a, arg_2.x);
}

fn func_1() -> vec4<f32> {
    global0 = vec2<i32>(~select(-53979i, global3[_wgslsmith_index_u32(u_input.a.x, 30u)], any(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec3_i32((abs(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], 1i, global0.x)) ^ vec3<i32>(u_input.c, global3[_wgslsmith_index_u32(7209u, 30u)], global3[_wgslsmith_index_u32(u_input.b, 30u)])) << (_wgslsmith_add_vec3_u32(vec3<u32>(19988u, 1u, 0u) >> (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(u_input.b, 70133u, 10221u)) % vec3<u32>(32u)), -(~vec3<i32>(u_input.c, 2147483647i, -2147483647i)) << (~vec3<u32>(u_input.b, u_input.a.x, u_input.b) % vec3<u32>(32u))));
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1356f)));
    global3 = array<i32, 30>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f + -747f)), 321f, _wgslsmith_f_op_f32(select(-459f, _wgslsmith_f_op_f32(f32(-1f) * -280f), all(vec4<bool>(true, true, true, false)))), -1210f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(728f, 1670f)), -248f, _wgslsmith_f_op_f32(-772f - -1080f), _wgslsmith_f_op_f32(1598f - -767f)))) * vec4<f32>(118f, _wgslsmith_f_op_f32(floor(-1790f)), -329f, 1643f));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 14134u, 48472u, 21668u), vec4<u32>(42123u, var_0.x, var_0.x, 402u)), ~vec4<u32>(u_input.b, 1u, 4294967295u, var_0.x)), ~(vec4<u32>(u_input.a.x, var_0.x, 54392u, 0u) | vec4<u32>(78667u, var_0.x, 1u, u_input.b)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(98422u, var_0.x, 1u, var_0.x)), vec4<u32>(4294967295u, var_0.x, 0u, 11718u) ^ vec4<u32>(4294967295u, var_0.x, 4294967295u, 0u))), Struct_1(-1839f, vec3<bool>(true, func_2(vec4<i32>(0i, 10388i, 1i, 7870i), vec2<u32>(10252u, var_0.x)), true)), vec4<f32>(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x * 1673f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f + 454f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) + _wgslsmith_div_f32(-258f, var_2.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1405f, -1511f, -1162f, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-3334f, var_2.x, var_2.x, -176f) + vec4<f32>(var_2.x, var_2.x, var_2.x, -262f)))), vec4<f32>(_wgslsmith_f_op_f32(min(var_2.x, 202f)), var_2.x, 668f, -512f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(15688u, 30u)]), global0.x);
    global1 = array<vec2<bool>, 5>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_mult_i32(33433i, global0.x), _wgslsmith_dot_vec4_i32(abs(firstLeadingBit(vec4<i32>(66433i, 2147483647i, 0i, -1i)) & ~vec4<i32>(global0.x, -37046i, global0.x, -1i)), ~(-vec4<i32>(8523i, 0i, u_input.c, -1160i)) << (~vec4<u32>(u_input.b, 0u, u_input.b, u_input.a.x) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.c, global3[_wgslsmith_index_u32(u_input.a.x, 30u)])), ~vec2<i32>(global3[_wgslsmith_index_u32(5355u, 30u)], -16810i), vec2<i32>(41894i, global3[_wgslsmith_index_u32(u_input.b, 30u)]) >> (u_input.a % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -22034i), vec2<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], global0.x)))));
}

