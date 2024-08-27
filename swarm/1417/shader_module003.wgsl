struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-763f, 193f, -467f), -319f, vec3<f32>(-1162f, 741f, 1247f), vec2<bool>(false, true), 24483u);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(1592f, 1254f, -1171f), -1000f, vec3<f32>(-168f, -180f, 638f), vec2<bool>(true, true), 26995u);

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<f32>(-915f, -997f, -1040f), -650f, vec3<f32>(-329f, 2136f, -908f), vec2<bool>(false, false), 4294967295u), Struct_1(vec3<f32>(-592f, -1000f, 825f), 473f, vec3<f32>(-558f, -1000f, 928f), vec2<bool>(true, false), 53436u), Struct_1(vec3<f32>(-521f, -556f, 107f), 649f, vec3<f32>(588f, -1000f, 1599f), vec2<bool>(false, false), 88301u), Struct_1(vec3<f32>(-1496f, 104f, -242f), -353f, vec3<f32>(272f, -384f, 1159f), vec2<bool>(true, false), 22507u), Struct_1(vec3<f32>(869f, -377f, 216f), 1188f, vec3<f32>(1610f, -1598f, -670f), vec2<bool>(true, true), 4294967295u), Struct_1(vec3<f32>(-1354f, -161f, 169f), 318f, vec3<f32>(444f, -1091f, -1139f), vec2<bool>(true, true), 0u), Struct_1(vec3<f32>(1000f, -2162f, -1631f), -1676f, vec3<f32>(-1552f, -1000f, -1000f), vec2<bool>(true, false), 64721u), Struct_1(vec3<f32>(1871f, -511f, -1144f), 283f, vec3<f32>(-156f, -1042f, -433f), vec2<bool>(false, true), 15200u), Struct_1(vec3<f32>(272f, -808f, 268f), -2184f, vec3<f32>(-435f, -1129f, -692f), vec2<bool>(false, true), 4294967295u), Struct_1(vec3<f32>(274f, 459f, -817f), -1363f, vec3<f32>(-539f, -299f, -538f), vec2<bool>(false, false), 1u));

var<private> global4: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(22577u, 1961u, 14189u), vec3<u32>(13095u, 4294967295u, 54409u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 3453u, 56767u), vec3<u32>(11394u, 45574u, 18668u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 2561u, 35251u), vec3<u32>(0u, 26438u, 4294967295u), vec3<u32>(0u, 6338u, 0u), vec3<u32>(4294967295u, 2230u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(24884u, 0u, 26856u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 12458u, 41153u), vec3<u32>(27150u, 46774u, 4294967295u), vec3<u32>(1u, 45005u, 68139u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 103182u, 108011u), vec3<u32>(0u, 8944u, 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = vec4<bool>(true, all(select(select(global0.d, global1.d, vec2<bool>(false, global1.d.x)), vec2<bool>(all(vec2<bool>(true, true)), true), !global0.d.x)), all(select(select(vec3<bool>(true, false, global1.d.x), vec3<bool>(false, true, global0.d.x), vec3<bool>(global0.d.x, global0.d.x, true)), !vec3<bool>(global1.d.x, false, global1.d.x), !vec3<bool>(true, true, global1.d.x))), any(select(!(!vec3<bool>(true, global1.d.x, global0.d.x)), !select(vec3<bool>(true, global1.d.x, global0.d.x), vec3<bool>(global1.d.x, global0.d.x, global0.d.x), vec3<bool>(global1.d.x, false, global0.d.x)), select(select(vec3<bool>(false, false, global1.d.x), vec3<bool>(true, global1.d.x, global1.d.x), vec3<bool>(false, global1.d.x, false)), vec3<bool>(false, global1.d.x, global1.d.x), !vec3<bool>(true, global1.d.x, false)))));
    var var_1 = vec2<bool>(any(!(!select(var_0.zyx, vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, false)))), all(vec3<bool>(_wgslsmith_sub_u32(24043u, arg_0.x) <= ~arg_0.x, global0.d.x, true)));
    let var_2 = reverseBits(1i);
    global3 = array<Struct_1, 10>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1589f + _wgslsmith_f_op_f32(-2536f * global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(644f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.x, global0.a.x))), 1015f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1111f, -414f, global1.c.x, global1.b)))))) + vec4<f32>(_wgslsmith_f_op_f32(global1.b - -442f), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(global0.a.x, global0.b), _wgslsmith_f_op_f32(round(183f))));
    return select(_wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_add_u32(~global2.x, ~3213u)), reverseBits(~_wgslsmith_clamp_u32(0u, global2.x, 1u)) | 119536u, any(select(select(var_0.yyx, vec3<bool>(var_1.x, true, true), global0.d.x), select(vec3<bool>(global0.d.x, var_1.x, global1.d.x), select(var_0.ywz, var_0.wxz, true), vec3<bool>(var_1.x, false, true)), var_0.xzz)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<bool> {
    global2 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, ~func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.e, 536u, arg_2.x, global2.x), vec4<u32>(global2.x, 13159u, arg_0.e, 42707u)), global4[_wgslsmith_index_u32(0u, 19u)] ^ global4[_wgslsmith_index_u32(56589u, 19u)]), 92349u), select(~(select(vec3<u32>(global0.e, global0.e, 37009u), global4[_wgslsmith_index_u32(48465u, 19u)], vec3<bool>(global1.d.x, true, global1.d.x)) >> (vec3<u32>(4696u, global2.x, 3329u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(u_input.b.x), 1u, 1u), vec3<u32>(_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(20238u, 19u)], vec3<u32>(0u, global2.x, global1.e)), firstLeadingBit(u_input.a), arg_2.x & 69515u)), select(vec3<bool>(!arg_0.d.x, all(vec3<bool>(true, true, true)), arg_0.d.x), vec3<bool>(true, true, true), global0.d.x)));
    global4 = array<vec3<u32>, 19>();
    var var_0 = max(_wgslsmith_dot_vec2_i32(min(~(-vec2<i32>(u_input.c, u_input.c)), vec2<i32>(~u_input.c, _wgslsmith_add_i32(-885i, -34879i))), vec2<i32>((u_input.c ^ u_input.c) << (max(4294967295u, 6826u) % 32u), ~(-2147483647i))), u_input.c);
    var var_1 = !global1.d;
    var var_2 = min(~arg_0.e, _wgslsmith_mod_u32(min(reverseBits(~1u), 1u), _wgslsmith_sub_u32(reverseBits(u_input.b.x), ~select(arg_0.e, arg_2.x, false))));
    return !vec2<bool>(!(!(arg_1.d.x == arg_0.d.x)), arg_0.d.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(4294967295u, 19u)];
    let var_1 = ~global0.e;
    let var_2 = ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(u_input.c, 1i << (var_0.x % 32u))), _wgslsmith_mod_i32(max(u_input.c ^ u_input.c, _wgslsmith_div_i32(22949i, -23444i)), 3722i), ~_wgslsmith_clamp_i32(-2147483647i, min(u_input.c, u_input.c), abs(u_input.c)));
    var var_3 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.e, (~u_input.a & ~15282u) | _wgslsmith_clamp_u32(1u, global1.e, 0u)), 10u)], arg_0, ~min(~vec2<u32>(var_1, 1u), u_input.b));
    global0 = global3[_wgslsmith_index_u32(4294967295u, 10u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -238f)))), _wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) - vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(sign(global1.b)), global1.c.x))), vec2<bool>(any(select(select(arg_2.wyy, vec3<bool>(false, arg_1.x, global0.d.x), true), arg_2.zzx, arg_2.wyw)), false), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, var_0.x, u_input.b.x, global1.e), vec4<u32>(8200u, global2.x, u_input.b.x, 24326u)), global0.e), 1u));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec4_i32(-firstTrailingBit(select(max(vec4<i32>(-18536i, u_input.c, -9067i, 2147483647i), vec4<i32>(u_input.c, 1i, -32062i, 4657i)), -vec4<i32>(12953i, 27486i, -2147483647i, 0i), 3221u <= global0.e)), min(vec4<i32>(u_input.c, u_input.c, max(u_input.c, max(0i, -11329i)), ~5227i), countOneBits(~(~vec4<i32>(-1i, u_input.c, u_input.c, u_input.c)))));
    var var_1 = global4[_wgslsmith_index_u32(~8703u, 19u)];
    let var_2 = func_1(func_1(func_1(func_1(func_1(arg_2, vec2<bool>(true, arg_0), vec4<bool>(true, global1.d.x, true, true)), !global0.d, vec4<bool>(false, arg_0, false, true)), !select(vec2<bool>(false, true), vec2<bool>(global1.d.x, true), global0.d), !(!vec4<bool>(false, global0.d.x, global0.d.x, true))), func_2(Struct_1(arg_2.a, -707f, arg_3.a, vec2<bool>(true, global1.d.x), 35794u), arg_3, u_input.b), !(!vec4<bool>(arg_0, true, global1.d.x, global0.d.x))), vec2<bool>(arg_0, global1.d.x && arg_0), select(!vec4<bool>(arg_2.d.x, true, global0.d.x, !arg_3.d.x), !(!vec4<bool>(false, true, global1.d.x, global1.d.x)), select(vec4<bool>(true, global0.d.x, arg_2.d.x, !arg_2.d.x), vec4<bool>(0u <= global0.e, all(vec4<bool>(true, true, arg_0, arg_3.d.x)), arg_3.d.x && true, any(vec3<bool>(false, false, arg_0))), false)));
    global1 = func_1(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_2.e, _wgslsmith_mod_u32(arg_2.e, 14959u)) >> (~u_input.b.x % 32u), 10u)], select(global0.d, func_1(global3[_wgslsmith_index_u32(28854u, 10u)], !(!global0.d), select(select(vec4<bool>(global1.d.x, arg_3.d.x, false, arg_2.d.x), vec4<bool>(arg_0, true, arg_0, arg_2.d.x), vec4<bool>(true, arg_2.d.x, true, arg_2.d.x)), vec4<bool>(global0.d.x, false, false, true), select(vec4<bool>(var_2.d.x, true, true, global0.d.x), vec4<bool>(true, false, arg_2.d.x, false), vec4<bool>(arg_2.d.x, true, true, arg_3.d.x)))).d, arg_3.d.x), !(!vec4<bool>(any(vec3<bool>(false, true, false)), true, true, true)));
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 70672i, _wgslsmith_clamp_i32(reverseBits(firstLeadingBit(20904i)), ~(~(-27810i)), 1i), _wgslsmith_clamp_i32(8077i, abs(u_input.c), -var_0.x)), var_0);
    return func_2(func_1(arg_3, !vec2<bool>(arg_0, global1.d.x | arg_3.d.x), !select(select(vec4<bool>(arg_3.d.x, arg_2.d.x, true, true), vec4<bool>(var_2.d.x, false, arg_2.d.x, global1.d.x), vec4<bool>(global0.d.x, var_2.d.x, true, var_2.d.x)), vec4<bool>(arg_2.d.x, false, var_2.d.x, global0.d.x), true)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.a.x)), _wgslsmith_f_op_f32(arg_2.a.x - 1886f), _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a.x)) + -547f) + _wgslsmith_div_f32(global1.b, -1571f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1319f, _wgslsmith_f_op_f32(global0.c.x + var_2.b), -174f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, var_2.a.x, 458f), global0.c, true)))))), vec2<bool>(var_2.d.x, select(all(vec3<bool>(var_2.d.x, true, arg_3.d.x)), !arg_3.d.x, select(false, var_2.d.x, global0.d.x))), _wgslsmith_add_u32(countOneBits(~0u), arg_2.e)), ~(~vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, var_2.e), ~global1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.c, 825f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(855f, _wgslsmith_f_op_f32(-global0.a.x), global1.a.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -273f, global0.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 1000f, 928f) - vec3<f32>(-957f, global0.a.x, global1.c.x)))))), select(!(!(!global1.d)), select(!select(vec2<bool>(true, global0.d.x), global1.d, global0.d), vec2<bool>(true, global0.d.x && true), func_4(-35326i > u_input.c, global0.a.x, func_1(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], vec2<bool>(false, true), vec4<bool>(global0.d.x, false, true, true)), global3[_wgslsmith_index_u32(1u, 10u)])), vec2<bool>(all(vec2<bool>(true, true)), func_4(func_1(global3[_wgslsmith_index_u32(1u, 10u)], vec2<bool>(false, false), vec4<bool>(global0.d.x, global1.d.x, global1.d.x, global1.d.x)).d.x, global0.b, func_1(global3[_wgslsmith_index_u32(u_input.a, 10u)], global1.d, vec4<bool>(true, global0.d.x, global1.d.x, true)), func_1(global3[_wgslsmith_index_u32(9703u, 10u)], vec2<bool>(true, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, global1.d.x, true))).x)), global1.e);
    var var_1 = func_1(func_1(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), global1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, var_0.b)), vec2<bool>(global0.d.x, global0.d.x), global2.x), var_0.d, vec4<bool>(true, !global0.d.x, func_2(global3[_wgslsmith_index_u32(global2.x, 10u)], Struct_1(global1.c, var_0.a.x, global1.c, var_0.d, var_0.e), vec2<u32>(0u, 28335u)).x, !global1.d.x)), vec2<bool>(!(var_0.d.x | global1.d.x), any(vec4<bool>(global0.d.x, true, global0.d.x, false))), vec4<bool>(var_0.d.x, any(vec4<bool>(global0.d.x, true, false, var_0.d.x)), !var_0.d.x, true | !global1.d.x)), !var_0.d, !(!select(!vec4<bool>(true, true, var_0.d.x, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.d.x, global0.d.x, var_0.d.x), vec4<bool>(global1.d.x, true, false, true), vec4<bool>(true, true, false, true)))));
    var var_2 = func_1(Struct_1(global1.a, var_0.c.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)))), vec2<bool>(false, true), ~var_1.e), var_0.d, select(select(!(!vec4<bool>(true, global0.d.x, true, false)), !select(vec4<bool>(false, true, true, global1.d.x), vec4<bool>(global0.d.x, true, true, var_1.d.x), true), select(vec4<bool>(false, var_1.d.x, false, true), select(vec4<bool>(var_1.d.x, false, var_1.d.x, var_1.d.x), vec4<bool>(true, false, global1.d.x, global0.d.x), vec4<bool>(true, global1.d.x, true, true)), select(vec4<bool>(false, false, var_0.d.x, true), vec4<bool>(true, global1.d.x, false, true), vec4<bool>(true, global0.d.x, true, var_1.d.x)))), select(vec4<bool>(any(vec3<bool>(global0.d.x, var_1.d.x, false)), any(vec2<bool>(true, false)), false, true), vec4<bool>(any(vec3<bool>(true, false, false)), var_1.d.x || var_1.d.x, false, global1.d.x), !var_0.d.x & all(vec2<bool>(global0.d.x, var_1.d.x))), select(!(!vec4<bool>(global0.d.x, var_0.d.x, true, var_1.d.x)), vec4<bool>(true, any(var_0.d), all(vec3<bool>(false, var_1.d.x, global1.d.x)), true), select(vec4<bool>(true, global0.d.x, var_0.d.x, false), select(vec4<bool>(global0.d.x, var_0.d.x, true, var_0.d.x), vec4<bool>(true, global1.d.x, true, true), var_1.d.x), !var_0.d.x))));
    let var_3 = ~vec2<i32>(u_input.c, -2147483647i) >> (select(_wgslsmith_add_vec2_u32(vec2<u32>(15332u, global2.x) ^ vec2<u32>(1u, 7313u), ~firstTrailingBit(vec2<u32>(global0.e, global0.e))), ~abs(vec2<u32>(var_0.e, 4294967295u)), vec2<bool>(false, any(vec2<bool>(global1.d.x, global0.d.x)) | global1.d.x)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-634f + -592f) - 128f), _wgslsmith_f_op_f32(-250f - _wgslsmith_div_f32(-1354f, global0.b)))), vec2<u32>(~0u, 4294967295u), ~vec2<u32>(62911u, ~countOneBits(var_0.e)), var_3.x);
}

