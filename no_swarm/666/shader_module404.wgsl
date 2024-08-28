struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: bool;

var<private> global2: array<Struct_4, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * arg_1.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1092f)))), arg_1.b);
    var var_1 = arg_2.a.a.zz;
    let var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(~countOneBits(1436u)), 19u)];
    global1 = true;
    let var_3 = var_2.a.yy;
    return arg_3;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = vec4<f32>(878f, -1243f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, arg_1.b)))), arg_1.b);
    var var_1 = ~abs(~(~arg_0));
    var var_2 = ~_wgslsmith_div_vec3_i32(vec3<i32>(abs(max(-61394i, arg_0)), ~21312i >> (arg_1.c % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(7781i, u_input.a.x), ~vec2<i32>(u_input.a.x, u_input.a.x))), max(vec3<i32>(~19847i, max(u_input.a.x, arg_0), 0i), u_input.a.zwy));
    global1 = !any(select(!vec3<bool>(false, arg_1.d, arg_1.d), select(select(vec3<bool>(arg_1.d, true, global0[_wgslsmith_index_u32(21225u, 29u)]), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), false & global0[_wgslsmith_index_u32(arg_1.c, 29u)]), !(!vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a, 29u)], global0[_wgslsmith_index_u32(21426u, 29u)], global0[_wgslsmith_index_u32(arg_1.e.x, 29u)]))));
    return vec3<bool>(true, false, select(59098u, arg_1.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e.x, arg_1.e.x, 56720u, arg_1.c), vec4<u32>(39955u, 20584u, 1u, arg_1.e.x)) % 32u), arg_1.d) <= 18634u);
}

fn func_2() -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(func_4(var_0, Struct_1(1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec2<i32>(0i, 1i), Struct_1(0u, 1083f, 1u, global0[_wgslsmith_index_u32(4294967295u, 29u)], vec3<u32>(0u, 0u, 1u)), Struct_3(Struct_2(vec3<bool>(false, true, global0[_wgslsmith_index_u32(46259u, 29u)]))), 1215f)))), _wgslsmith_add_u32(54108u, _wgslsmith_dot_vec2_u32(vec2<u32>(11612u, 0u), vec2<u32>(0u, 4294967295u))), false, vec3<u32>(1u, ~127153u, _wgslsmith_dot_vec2_u32(vec2<u32>(54521u, 0u), vec2<u32>(0u, 22776u))))));
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, -(i32(-1i) * -u_input.a.x)), ~(_wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i) << (1u % 32u)), 38319i & -max(_wgslsmith_mod_i32(var_0, u_input.a.x), u_input.a.x));
    global1 = false;
    var var_3 = Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(313f, _wgslsmith_f_op_f32(f32(-1f) * -301f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.zz, Struct_1(27200u, -729f, 10950u, false, vec3<u32>(126429u, 4294967295u, 47041u)), Struct_3(var_1), 1465f))))), firstTrailingBit(47405u), true, ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, 1u), ~0u), 5737u, ~4294967295u));
    return var_3.e.x;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> vec3<u32> {
    let var_0 = firstLeadingBit(1i >> (firstTrailingBit(func_2()) % 32u));
    let var_1 = Struct_2(select(select(!vec3<bool>(arg_0.b.x, global0[_wgslsmith_index_u32(arg_0.a.x, 29u)], true), select(!vec3<bool>(false, arg_0.b.x, false), !vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), global0[_wgslsmith_index_u32(1u, 29u)]), false), vec3<bool>(!(!arg_0.b.x), false, true), vec3<bool>(true, true, true)));
    global1 = !any(func_4(var_0, Struct_1(arg_0.a.x, arg_2, arg_0.a.x, var_1.a.x, arg_0.a))) & true;
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~(~max(vec2<u32>(arg_0.a.x, 49132u), arg_0.a.yz)), countOneBits(vec2<u32>(arg_0.a.x, ~arg_0.a.x)), select(vec2<bool>(false, false || arg_0.b.x), select(vec2<bool>(global0[_wgslsmith_index_u32(40987u, 29u)], false), !var_1.a.xz, vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 29u)], global0[_wgslsmith_index_u32(arg_0.a.x, 29u)])), !(!arg_0.b.zx))), vec2<u32>(max(abs(arg_0.a.x), ~arg_0.a.x), 57874u) | _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.x, 10685u), vec2<u32>(arg_0.a.x, arg_0.a.x))), ~(~vec2<u32>(arg_0.a.x, arg_0.a.x)))), 29u)];
    let var_2 = ~vec3<u32>(~1u, ~(~1u), _wgslsmith_add_u32(4294967295u, arg_0.a.x));
    return ~vec3<u32>(_wgslsmith_sub_u32(arg_0.a.x, max(1u, ~var_2.x)), ~arg_0.a.x | arg_0.a.x, ~arg_0.a.x);
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: bool) -> vec4<u32> {
    global1 = all(vec4<bool>(arg_2.b.x, true | (-1472f > _wgslsmith_f_op_f32(arg_1.x - arg_1.x)), all(!(!vec4<bool>(arg_3, global0[_wgslsmith_index_u32(91256u, 29u)], false, global0[_wgslsmith_index_u32(arg_2.a.x, 29u)]))), firstTrailingBit(arg_0) <= arg_0));
    var var_0 = _wgslsmith_dot_vec4_i32(min(vec4<i32>(-14430i, u_input.a.x, arg_0, 25430i), -u_input.a) << (vec4<u32>(arg_2.a.x, 0u, ~arg_2.a.x, 4294967295u) % vec4<u32>(32u)), u_input.a ^ (abs(u_input.a) & u_input.a)) >> (arg_2.a.x % 32u);
    return ~vec4<u32>(min(4294967295u, 0u), arg_2.a.x, abs(~(~arg_2.a.x)), ~_wgslsmith_sub_u32(58990u, firstTrailingBit(22091u)));
}

fn func_6(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    global0 = array<bool, 29>();
    let var_0 = Struct_3(Struct_2(!vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, arg_0.x), 29u)], !global0[_wgslsmith_index_u32(arg_1, 29u)])));
    global0 = array<bool, 29>();
    let var_1 = u_input.a.x;
    global2 = array<Struct_4, 19>();
    return Struct_2(var_0.a.a);
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    var var_0 = Struct_1(~1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -843f))) + _wgslsmith_f_op_f32(step(617f, -637f))), arg_0.a.x, !arg_0.b.x, ~vec3<u32>(arg_0.a.x, max(~arg_0.a.x, min(arg_0.a.x, arg_0.a.x)), arg_0.a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2500f, var_0.b, -1107f), vec3<f32>(732f, -803f, var_0.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2085f, var_0.b, var_0.b) - vec3<f32>(319f, var_0.b, var_0.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b, var_0.b, var_0.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(499f, -150f, 782f), vec3<f32>(var_0.b, 804f, var_0.b)))), vec3<bool>(all(!arg_1.a.zx), any(!vec4<bool>(arg_0.b.x, arg_1.a.x, false, var_0.d)), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(177f * 287f))))));
    let var_2 = Struct_4(~var_0.e, !(!arg_0.b));
    let var_3 = var_1.yx;
    var var_4 = ~(~2147483647i);
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_0.e, vec3<u32>(62170u, 4936u, arg_0.a.x)) << (~4294967295u % 32u), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_4(vec3<u32>(abs(21075u), countOneBits(_wgslsmith_mod_u32(0u, 4294967295u)), abs(1u)), select(!select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(27152u, 29u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(8014u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(54052u, 29u)])), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(2338u, 1u)), 29u)], global0[_wgslsmith_index_u32(7245u, 29u)] | global0[_wgslsmith_index_u32(4294967295u, 29u)], !global0[_wgslsmith_index_u32(28936u, 29u)]), select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(40304u, 29u)], false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 29u)]), global0[_wgslsmith_index_u32(2957u, 29u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(83362u, 29u)], false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(52160u, 29u)], true)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 29u)], false), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(6549u, 29u)])))), func_6(func_5(-abs(-20339i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(706f, 1000f, 170f, 609f), _wgslsmith_div_vec4_f32(vec4<f32>(800f, -746f, -1625f, 1193f), vec4<f32>(-567f, -601f, 299f, -509f)))), Struct_4(func_1(global2[_wgslsmith_index_u32(0u, 19u)], vec2<f32>(-121f, 1591f), 1400f, 594f), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(9992u, 29u)]), global0[_wgslsmith_index_u32(1927u, 29u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(50814u, 29u)], global0[_wgslsmith_index_u32(61721u, 29u)], global0[_wgslsmith_index_u32(15312u, 29u)], global0[_wgslsmith_index_u32(12612u, 29u)]))), ~_wgslsmith_sub_u32(80242u, 44719u) >> (countOneBits(~2983u) % 32u), _wgslsmith_div_u32(firstTrailingBit(1u), ~func_1(Struct_4(vec3<u32>(4294967295u, 56990u, 20623u), vec3<bool>(false, false, false)), vec2<f32>(1561f, -169f), 255f, 299f).x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-791f - _wgslsmith_f_op_f32(func_3(u_input.a.wy, Struct_1(6399u, 951f, 4294967295u, var_0.b.x, vec3<u32>(27012u, 49858u, var_0.a.x)), Struct_3(Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)], false))), 2183f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1076f, 1212f, true)) - _wgslsmith_f_op_f32(max(-1924f, 120f))), _wgslsmith_div_f32(-988f, _wgslsmith_f_op_f32(-1499f - 1507f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-788f * -883f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-124f)), _wgslsmith_f_op_f32(floor(-519f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(-189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1025f, -1303f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1484f)), _wgslsmith_f_op_f32(f32(-1f) * -1099f))))));
    var var_2 = func_7(global2[_wgslsmith_index_u32(4294967295u, 19u)], func_6(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, func_2(), ~var_0.a.x, 92176u), vec4<u32>(_wgslsmith_sub_u32(var_0.a.x, var_0.a.x), min(35350u, var_0.a.x), var_0.a.x | var_0.a.x, ~6722u)), 17483u, 35358u));
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((u_input.a.wx >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 50411u), var_0.a.zx) % vec2<u32>(32u))) ^ vec2<i32>(abs(u_input.a.x), 1i), u_input.a.x, ~var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1190f)), true))), var_0.a.yx);
}

