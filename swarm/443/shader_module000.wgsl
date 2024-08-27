struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, false, false, false, false, false, true, true, false, false, false, false, true, false, false, false, true, true, false, false, true);

var<private> global1: bool;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(4294967295u, Struct_2(vec2<f32>(2149f, 133f)), 1227f), Struct_3(17704u, Struct_2(vec2<f32>(-171f, -1265f)), -1534f), Struct_3(0u, Struct_2(vec2<f32>(-1000f, -1447f)), -500f), Struct_3(19837u, Struct_2(vec2<f32>(413f, -1000f)), -366f), Struct_3(26459u, Struct_2(vec2<f32>(-867f, 388f)), 1339f), Struct_3(21342u, Struct_2(vec2<f32>(759f, -228f)), -2275f), Struct_3(1u, Struct_2(vec2<f32>(851f, 806f)), 2396f), Struct_3(43293u, Struct_2(vec2<f32>(-802f, -983f)), -268f), Struct_3(34207u, Struct_2(vec2<f32>(227f, -1442f)), 1167f), Struct_3(0u, Struct_2(vec2<f32>(-1000f, -1439f)), -1000f), Struct_3(26369u, Struct_2(vec2<f32>(967f, -150f)), 601f), Struct_3(0u, Struct_2(vec2<f32>(-313f, -1314f)), 1555f), Struct_3(39591u, Struct_2(vec2<f32>(262f, -1611f)), 1622f), Struct_3(0u, Struct_2(vec2<f32>(286f, 172f)), 958f), Struct_3(1u, Struct_2(vec2<f32>(179f, -2062f)), 785f), Struct_3(20402u, Struct_2(vec2<f32>(-244f, -1711f)), -287f), Struct_3(0u, Struct_2(vec2<f32>(1193f, 758f)), 1000f), Struct_3(0u, Struct_2(vec2<f32>(-219f, 1153f)), -405f), Struct_3(0u, Struct_2(vec2<f32>(-824f, 1000f)), -135f), Struct_3(1u, Struct_2(vec2<f32>(1707f, -2022f)), -2408f));

var<private> global3: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: f32) -> Struct_4 {
    global3 = arg_0;
    let var_0 = u_input.a.x;
    let var_1 = vec2<u32>((_wgslsmith_clamp_u32(0u, u_input.a.x | 0u, ~1u) ^ var_0) << (2010u % 32u), u_input.a.x | (52688u ^ firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, 35618u))));
    let var_2 = all(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(~u_input.a.x, 22u)]));
    var var_3 = 2147483647i;
    return Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1342f), _wgslsmith_f_op_f32(1478f + 727f))));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(~u_input.a.x << (~u_input.a.x % 32u), u_input.a.x, u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 75414u), u_input.a.yw), 468u, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    var var_0 = ~u_input.a.zx;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a.a.x, arg_1), -835f, true));
    let var_2 = !(!vec3<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(47102u, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), false, !global0[_wgslsmith_index_u32(80745u, 22u)]));
    global3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_1)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(482f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-382f)))))).a.a.x;
    let var_3 = arg_0;
    return global2[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(~545u << (~var_0.x % 32u), _wgslsmith_div_u32(u_input.a.x & var_0.x, func_3(vec3<f32>(arg_0.a.a.x, 983f, arg_0.a.a.x))), _wgslsmith_sub_u32(~var_0.x, 0u | u_input.a.x))), 20u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, arg_0.c, arg_0.c)) + vec3<f32>(arg_0.c, arg_0.b.a.x, -1000f))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x & 91942u, 0u), 22u)] && func_4(func_2(func_1(-596f), _wgslsmith_div_f32(-562f, 579f)), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 22u)] & true, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1203f, 416f, 395f))), vec3<u32>(16753u, 40245u, u_input.a.x), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), ~1u), vec3<f32>(_wgslsmith_f_op_f32(func_2(func_1(1108f), -167f).b.a.x + _wgslsmith_div_f32(-988f, _wgslsmith_f_op_f32(f32(-1f) * -175f))), 1532f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1732f)), _wgslsmith_f_op_f32(f32(-1f) * -1346f)))), reverseBits(u_input.a.ywz), vec3<bool>(!all(select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true, false), global0[_wgslsmith_index_u32(97774u, 22u)])), false, global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy)), 22u)]));
    let var_1 = i32(-1i) * -_wgslsmith_mod_i32(i32(-1i) * -16772i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 2147483647i), abs(vec2<i32>(2147483647i, 3218i))));
    var var_2 = Struct_1(~u_input.a.x < _wgslsmith_sub_u32(var_0.c.x, reverseBits(1u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, -393f, _wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_f_op_vec3_f32(select(var_0.b, var_0.b, u_input.a.x <= var_0.c.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(var_0.b, var_0.b))))))), var_0.c, vec3<bool>(select(true, !(!global0[_wgslsmith_index_u32(var_0.c.x, 22u)]), any(select(vec4<bool>(false, true, var_0.a, global0[_wgslsmith_index_u32(var_0.c.x, 22u)]), vec4<bool>(var_0.a, global0[_wgslsmith_index_u32(var_0.c.x, 22u)], var_0.a, true), false))), true, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]));
    var var_3 = func_2(Struct_4(Struct_2(_wgslsmith_div_vec2_f32(var_0.b.yz, _wgslsmith_f_op_vec2_f32(var_0.b.xx - vec2<f32>(var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_f32(-var_0.b.x));
    var var_4 = true;
    var var_5 = func_2(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x))), -761f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f)));
    let var_6 = Struct_1(_wgslsmith_mult_u32(firstLeadingBit(4294967295u & u_input.a.x), 1u) > ~(~1u), var_2.b, ~_wgslsmith_add_vec3_u32(vec3<u32>(min(0u, 4384u), _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(var_5.a, 1u)), var_2.c.x ^ var_5.a), var_0.c | (u_input.a.zyy << (vec3<u32>(49205u, 36507u, var_5.a) % vec3<u32>(32u)))), !vec3<bool>(all(!vec4<bool>(var_0.d.x, false, false, false)), false, -430f == var_0.b.x));
    var var_7 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) - func_2(Struct_4(Struct_2(vec2<f32>(1469f, -1276f))), -2052f).b.a.x), 1441f);
    global1 = global0[_wgslsmith_index_u32(var_0.c.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_6.b.x - func_1(-804f).a.a.x), _wgslsmith_f_op_f32(-1494f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.c, 952f))), var_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1761f)), vec2<f32>(func_2(func_1(_wgslsmith_f_op_f32(var_6.b.x + var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.c, var_6.b.x))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_7.x - var_0.b.x), var_5.b.a.x, var_6.d.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.b.a.x + var_3.c) + func_2(Struct_4(Struct_2(vec2<f32>(var_5.c, 236f))), var_3.b.a.x).b.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-893f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) - 1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1272f + var_2.b.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, var_0.b.x, -658f)))))), func_2(Struct_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -882f)).a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.b.a.x)) * _wgslsmith_f_op_f32(select(-765f, 386f, false)))))).c);
}

