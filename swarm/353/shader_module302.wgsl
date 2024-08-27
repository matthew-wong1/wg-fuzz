struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(16848i, -1i, -12482i), vec3<i32>(-36343i, 49465i, 2147483647i), vec3<i32>(1i, -627i, 2147483647i), vec3<i32>(-93020i, 42799i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 0i), vec3<i32>(16178i, -1i, -9435i), vec3<i32>(-7633i, 0i, 23531i), vec3<i32>(0i, 48953i, 39595i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(-1i, 0i, 21828i), vec3<i32>(20912i, -4356i, 28687i), vec3<i32>(-23218i, -61368i, 39535i), vec3<i32>(24491i, -37762i, -1i), vec3<i32>(-38657i, 16532i, -1i), vec3<i32>(7194i, -41194i, -35210i), vec3<i32>(-72431i, -15696i, -27200i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), -54218i), vec3<i32>(2147483647i, -16694i, 5858i), vec3<i32>(0i, -2956i, 1i), vec3<i32>(1i, 0i, -24232i), vec3<i32>(-75607i, 60771i, -30330i), vec3<i32>(-67649i, -28213i, 1i), vec3<i32>(-48911i, 0i, -94219i), vec3<i32>(31992i, i32(-2147483648), -42753i), vec3<i32>(1i, 1i, 1i), vec3<i32>(i32(-2147483648), 53795i, i32(-2147483648)), vec3<i32>(0i, 0i, -50247i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = -2147483647i;
    var_0 = u_input.d;
    var var_1 = 81970u;
    var_1 = 4294967295u;
    var_0 = arg_0;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1689f, -1507f)))))), _wgslsmith_div_f32(-1305f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(186f + -1828f) - 316f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f)), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(-18367i & u_input.b.x)), -1219f)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.e, u_input.e), u_input.c.wxx) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~arg_2.a, _wgslsmith_div_vec3_u32(u_input.c.ywz, vec3<u32>(14766u, arg_0.x, 4531u))), arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.c.zy)) % 32u), 52403u);
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(arg_2.d - -1265f));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = select(!vec2<bool>(false, arg_3.x), arg_3.yx, true);
    let var_1 = ~54290u;
    var_0 = !select(!arg_3.zy, select(!(!vec2<bool>(var_0.x, arg_0)), !arg_3.yy, vec2<bool>(true, !arg_3.x)), select(!arg_3.yz, vec2<bool>(true, true), arg_0));
    let var_2 = any(vec4<bool>(all(select(!vec2<bool>(var_0.x, true), vec2<bool>(true, true), !arg_0)), true, any(vec2<bool>(all(vec4<bool>(false, arg_0, true, false)), arg_0)), arg_3.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f + arg_1) * _wgslsmith_f_op_f32(286f - arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) + -1537f)))));
    return Struct_3(Struct_1(vec3<u32>(arg_2, _wgslsmith_mod_u32(abs(u_input.e.x), reverseBits(1u)), ~(~4294967295u)), vec4<i32>(reverseBits(u_input.b.x), -11033i, 48261i ^ u_input.a.x, abs(2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(var_1, u_input.e.x, false), 21582u) | (var_1 | (u_input.e.x & arg_2)), 28u)], 533f, vec4<bool>(!var_2, true, false, !(2147483647i != u_input.d))), _wgslsmith_div_f32(1f, arg_1), select(!select(arg_3.xz, select(vec2<bool>(false, var_0.x), arg_3.xz, arg_3.x), all(vec4<bool>(true, arg_0, var_2, arg_3.x))), select(select(vec2<bool>(false, true), select(vec2<bool>(var_0.x, false), arg_3.yx, var_0.x), !var_2), !arg_3.yz, _wgslsmith_f_op_f32(arg_1 * 388f) >= var_3), vec2<bool>(!(true & var_0.x), !arg_0)), Struct_2(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(1000f + var_3))));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    var var_0 = _wgslsmith_f_op_f32(-arg_2.d);
    var var_1 = Struct_3(Struct_1(vec3<u32>(1u, ~arg_1.a.a.x, 0u), vec4<i32>(~arg_2.c.x, select(31657i, u_input.b.x, !arg_1.c.x), arg_1.a.c.x, ~arg_1.a.b.x), vec3<i32>(~_wgslsmith_mult_i32(arg_1.a.c.x, 10725i), _wgslsmith_dot_vec4_i32(arg_1.a.b, arg_2.b) << (_wgslsmith_mult_u32(arg_2.a.x, 1u) % 32u), -u_input.a.x), arg_1.b, arg_2.e), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d)) + func_4(true | arg_2.e.x, _wgslsmith_f_op_f32(floor(631f)), countOneBits(4746u), vec3<bool>(arg_1.a.e.x, arg_2.e.x, arg_2.e.x)).b))), !(!vec2<bool>(true, arg_1.a.c.x < 0i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.a)) * _wgslsmith_f_op_f32(-403f + arg_1.d.a)))));
    var var_2 = vec3<bool>(true, any(vec4<bool>(func_4(false, _wgslsmith_f_op_f32(trunc(arg_0)), ~var_1.a.a.x, !vec3<bool>(var_1.a.e.x, arg_2.e.x, var_1.c.x)).a.e.x, var_1.a.e.x, ~var_1.a.c.x < _wgslsmith_mult_i32(u_input.b.x, u_input.a.x), true || any(vec4<bool>(true, false, arg_1.a.e.x, true)))), false);
    return min(_wgslsmith_sub_vec3_u32(~select(vec3<u32>(var_1.a.a.x, arg_2.a.x, u_input.e.x), arg_1.a.a, arg_1.c.x), arg_1.a.a) & arg_2.a, vec3<u32>(4333u, firstLeadingBit(1u), ~u_input.e.x));
}

fn func_1() -> u32 {
    let var_0 = vec3<i32>(~(~(-15099i)), abs(abs(-28353i)), u_input.b.x) << (~func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1463f, 1000f))), func_4(true, _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.e.x, 0u, 29001u), vec4<f32>(1340f, -1283f, 455f, -1663f), Struct_4(u_input.e, 41557i, u_input.e.x, 379f))), ~6413u, vec3<bool>(true, true, true)), func_4(true, -770f, u_input.e.x >> (u_input.c.x % 32u), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)).a, Struct_2(-377f)) % vec3<u32>(32u));
    var var_1 = !any(vec4<bool>((1i < u_input.a.x) & true, true, true, true));
    return 17833u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 28>();
    var var_0 = true;
    let var_1 = ~26460u;
    var_0 = true;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, _wgslsmith_f_op_f32(f32(-1f) * -426f), -622f, _wgslsmith_f_op_f32(906f + 380f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-768f, 288f, 635f, 115f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1092f, -1273f, -1028f, -1169f) - vec4<f32>(-496f, 1760f, 491f, -333f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-813f, 1059f, 290f, -1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(512f, -1038f, -603f, -952f) * vec4<f32>(-1000f, 124f, -501f, -937f))))));
    let var_3 = func_1();
    var var_4 = true;
    var var_5 = ~vec2<u32>(44027u, ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-616f, var_2.x, var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-564f, -1018f, 1226f, var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-340f, var_2.x, -140f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, -311f, 2321f, var_2.x))), vec4<f32>(var_2.x, var_2.x, 798f, 1000f))), select((-422f == var_2.x) & true, 1u <= u_input.c.x, _wgslsmith_f_op_f32(-var_2.x) != var_2.x))), func_5(_wgslsmith_f_op_f32(f32(-1f) * -943f), func_4(!all(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(111f - var_2.x)), var_5.x, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(countOneBits(var_5.x), var_5.x, ~42037u), vec4<i32>(_wgslsmith_mod_i32(2147483647i, 38809i), u_input.d, u_input.b.x ^ 3458i, u_input.b.x << (var_3 % 32u)), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 270f) * _wgslsmith_div_f32(-1253f, var_2.x)), vec4<bool>(true, true, true, true)), func_4(!any(vec4<bool>(true, true, false, true)), var_2.x, func_5(_wgslsmith_f_op_f32(max(-403f, -769f)), Struct_3(Struct_1(u_input.c.yzz, u_input.b, vec3<i32>(1i, u_input.d, -4817i), var_2.x, vec4<bool>(false, false, true, false)), var_2.x, vec2<bool>(false, true), Struct_2(var_2.x)), func_4(true, -827f, 69024u, vec3<bool>(false, false, true)).a, Struct_2(-709f)).x, vec3<bool>(func_4(true, var_2.x, var_5.x, vec3<bool>(true, true, true)).a.e.x, false, true)).d).x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, var_2.x))), _wgslsmith_f_op_f32(select(-517f, -1613f, false))) + var_2.yww), var_1);
}

