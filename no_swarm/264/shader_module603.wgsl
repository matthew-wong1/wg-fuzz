struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(210f, -652f, -1032f, -1259f), vec4<f32>(-361f, -2360f, 1000f, 1700f), vec4<f32>(-1765f, -1521f, 523f, 1665f), vec4<f32>(-284f, -1614f, -1439f, -1281f), vec4<f32>(1673f, -956f, -796f, -640f), vec4<f32>(133f, -763f, -159f, -205f), vec4<f32>(1581f, 736f, 1057f, 2195f), vec4<f32>(1064f, 736f, -1582f, 767f), vec4<f32>(1599f, -1490f, 1483f, -762f), vec4<f32>(1006f, -299f, 620f, -306f), vec4<f32>(605f, -953f, -262f, -1882f), vec4<f32>(-416f, 1197f, -935f, -1000f), vec4<f32>(777f, 1831f, 783f, 1096f), vec4<f32>(514f, 479f, 295f, -838f), vec4<f32>(-571f, 1014f, 585f, -1562f), vec4<f32>(-642f, -151f, -372f, -808f), vec4<f32>(-1007f, -952f, -675f, 1031f), vec4<f32>(-1918f, 830f, 1100f, 271f));

var<private> global3: Struct_3 = Struct_3(i32(-2147483648), false, vec2<u32>(90u, 1u));

var<private> global4: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(0i, 1i), vec2<i32>(35481i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, -1i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    var var_0 = i32(-1i) * -(0i ^ arg_0.a);
    let var_1 = -1000f;
    global3 = arg_0;
    let var_2 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(select(u_input.e | 55434u, u_input.b, false && arg_0.b), ~global1.c.x >> (~global3.c.x % 32u), arg_0.c.x, global1.c.x << (~0u % 32u)), ~(~vec4<u32>(arg_0.c.x, global3.c.x, arg_1.d.a, u_input.b)), ~max(vec4<u32>(arg_0.c.x, 4294967295u, 1u, global1.c.x), vec4<u32>(global1.c.x, 23345u, global1.c.x, 4294967295u) << (vec4<u32>(4294967295u, 53317u, 1u, global3.c.x) % vec4<u32>(32u))));
    var var_3 = arg_1.d;
    return -arg_0.a;
}

fn func_2() -> vec3<i32> {
    global0 = array<vec4<bool>, 32>();
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, select(func_3(Struct_3(-2147483647i, true, vec2<u32>(5380u, u_input.b)), Struct_2(vec3<i32>(1i, global1.a, u_input.c), 4728i, Struct_1(global3.c.x, global2[_wgslsmith_index_u32(59236u, 18u)]), Struct_1(14827u, global2[_wgslsmith_index_u32(global3.c.x, 18u)]), vec4<f32>(430f, -364f, -837f, -658f))), _wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(global3.c.x, 4u)], global4[_wgslsmith_index_u32(global1.c.x, 4u)]), !global1.b), -(19585i | global1.a), 47089i ^ func_3(Struct_3(-1i, global3.b, global3.c), Struct_2(vec3<i32>(u_input.c, global3.a, -2147483647i), global1.a, Struct_1(57621u, vec4<f32>(865f, 320f, 1154f, 535f)), Struct_1(23624u, vec4<f32>(-1221f, 245f, 493f, 1411f)), vec4<f32>(-812f, 135f, 526f, 563f)))), vec4<i32>(u_input.a, ~min(global3.a, global1.a), ~6731i, 32396i)), u_input.d, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, ~global3.a), _wgslsmith_dot_vec4_i32(~vec4<i32>(global3.a, 0i, u_input.c, global3.a), vec4<i32>(firstTrailingBit(-14333i), global1.a, -2147483647i, u_input.d))), ~(~(-global3.a)));
    let var_1 = _wgslsmith_mod_vec3_i32(var_0.wwz, _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(var_0.xxy, _wgslsmith_mult_vec3_i32(vec3<i32>(global1.a, 261i, global3.a), vec3<i32>(22697i, global1.a, var_0.x))), vec3<i32>(var_0.x, 51500i << (global1.c.x % 32u), select(var_0.x, global1.a, false)))) & abs(var_0.xxw);
    global1 = Struct_3(u_input.d, global3.b, vec2<u32>(~u_input.b, 1u));
    global4 = array<vec2<i32>, 4>();
    return firstTrailingBit(abs(vec3<i32>(var_0.x, 1i, max(var_1.x, -20347i)) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 74804u, u_input.e), vec3<u32>(global3.c.x, 11439u, 1u)) % vec3<u32>(32u))));
}

fn func_1() -> i32 {
    global3 = Struct_3(global3.a, all(vec2<bool>(select(global3.b, false, global3.b), true)) && any(!select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(global1.b, global1.b, true), vec3<bool>(global3.b, global3.b, false))), ~vec2<u32>(global1.c.x, _wgslsmith_dot_vec2_u32(global3.c >> (vec2<u32>(46601u, 56101u) % vec2<u32>(32u)), ~vec2<u32>(global3.c.x, u_input.b))));
    var var_0 = Struct_3(-1i, false, abs(_wgslsmith_mod_vec2_u32(~global1.c, global1.c) >> (global1.c % vec2<u32>(32u))));
    let var_1 = countOneBits(_wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(global3.a, -31250i, -1040i) & vec3<i32>(-28416i, 1i, 2147483647i)), _wgslsmith_add_vec3_i32(-vec3<i32>(38644i, global1.a, 18571i), func_2())));
    global2 = array<vec4<f32>, 18>();
    global3 = Struct_3(0i, true, firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.x, 30169u), global3.c)));
    return _wgslsmith_mod_i32(func_2().x, global1.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    let var_0 = !(!(!(global3.b != global1.b)));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1.c, reverseBits(~global1.c) ^ _wgslsmith_add_vec2_u32(global1.c | global1.c, min(vec2<u32>(global3.c.x, 1u), vec2<u32>(5334u, global3.c.x)))), global1.c.x);
    var var_2 = -(~(~_wgslsmith_div_vec2_i32(-vec2<i32>(global3.a, arg_0.b), arg_0.a.zz)));
    let var_3 = Struct_2(vec3<i32>(func_1(), abs(-(~var_2.x)), global3.a), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, -26673i), _wgslsmith_mult_i32(var_2.x, u_input.a)), i32(-1i) * -2147483647i), arg_0.d, Struct_1(global1.c.x, arg_0.d.b), arg_0.e);
    let var_4 = _wgslsmith_mult_i32(func_1() ^ _wgslsmith_sub_i32(-firstLeadingBit(2399i), 2147483647i & (arg_0.a.x >> (var_1 % 32u))), -28818i);
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(Struct_2(vec3<i32>(23404i >> (global1.c.x % 32u), global3.a, func_1()), global3.a, Struct_1(0u, _wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(u_input.e, 18u)]))), Struct_1(1u, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1892f, -109f, 108f, -953f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -573f, 1337f, -1260f) - global2[_wgslsmith_index_u32(global1.c.x, 18u)])))), vec2<f32>(1f, 1f)), any(vec3<bool>(true, global1.b, all(select(global0[_wgslsmith_index_u32(0u, 32u)], vec4<bool>(global1.b, global3.b, global1.b, true), global0[_wgslsmith_index_u32(0u, 32u)])))), global1.c);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1457f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * 1454f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1541f, 361f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f) * _wgslsmith_f_op_f32(select(-555f, _wgslsmith_f_op_f32(f32(-1f) * -760f), false)))));
    let var_2 = ~vec4<u32>(0u, firstTrailingBit(min(30037u, global1.c.x)), 0u, u_input.b) & ~(min(vec4<u32>(global1.c.x, var_0.c.x, 0u, 4294967295u) | vec4<u32>(4294967295u, var_0.c.x, 4294967295u, global1.c.x), min(vec4<u32>(var_0.c.x, 0u, 39553u, global3.c.x), vec4<u32>(u_input.e, global1.c.x, u_input.e, 1u))) | (_wgslsmith_clamp_vec4_u32(vec4<u32>(45192u, global3.c.x, 83069u, global1.c.x), vec4<u32>(1u, 1u, global1.c.x, 686u), vec4<u32>(global1.c.x, u_input.b, 0u, 5185u)) << (reverseBits(vec4<u32>(var_0.c.x, u_input.e, 0u, global3.c.x)) % vec4<u32>(32u))));
    let var_3 = Struct_2(vec3<i32>(global1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(min(16937i, global3.a), u_input.d), ~select(vec2<i32>(var_0.a, global1.a), vec2<i32>(-67471i, -1i), vec2<bool>(true, true))), ~u_input.d), -1i, Struct_1(var_0.c.x, _wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(var_2.x, 18u)], vec4<f32>(1031f, 1284f, -1283f, -288f))), vec4<f32>(504f, -1000f, 130f, -841f))), all(select(vec2<bool>(global1.b, global1.b), vec2<bool>(false, true), true))))), Struct_1(global3.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-985f, 618f, -480f, -1061f)) - global2[_wgslsmith_index_u32(firstTrailingBit(44862u), 18u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-125f)), _wgslsmith_div_f32(-756f, -396f), 1758f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(114f, -895f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~global1.c.x, 18u)]))));
    var var_4 = Struct_2(var_3.a, -_wgslsmith_add_i32(global3.a, global1.a), Struct_1(14919u, vec4<f32>(-163f, 1451f, var_3.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-805f, var_3.e.x, global1.b))))), Struct_1(~(~global1.c.x) >> (1u % 32u), vec4<f32>(var_3.e.x, var_3.c.b.x, _wgslsmith_f_op_f32(trunc(253f)), -111f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-399f, var_3.e.x, var_3.c.b.x, -241f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(28920u, 18u)] - vec4<f32>(-774f, -709f, var_3.e.x, var_3.c.b.x)) + _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(12013u, 18u)] - vec4<f32>(763f, var_3.c.b.x, var_3.c.b.x, var_3.c.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.e) + _wgslsmith_f_op_vec4_f32(var_3.d.b + global2[_wgslsmith_index_u32(0u, 18u)])) - vec4<f32>(_wgslsmith_f_op_f32(884f * var_3.e.x), var_3.d.b.x, _wgslsmith_f_op_f32(-var_3.c.b.x), _wgslsmith_f_op_f32(max(var_3.c.b.x, var_3.e.x))))));
    var var_5 = var_3;
    let var_6 = any(vec2<bool>(global1.b, !(!var_0.b) & (global1.b && global1.b)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-506f))), _wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(var_5.e.x + -662f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_5.a, countOneBits(vec3<i32>(1i, u_input.a, var_0.a)) ^ _wgslsmith_div_vec3_i32(-var_4.a, var_3.a), !select(true, true, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.d.b.x - var_4.e.x))));
}

