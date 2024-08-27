struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<f32>(-1000f, -655f, -1294f), -1i, 2081i, vec4<u32>(1u, 0u, 0u, 1u)), Struct_2(vec3<f32>(-1127f, 736f, -346f), 0i, 70694i, vec4<u32>(57597u, 2077u, 4294967295u, 28693u)), Struct_2(vec3<f32>(-852f, -276f, -200f), 0i, -28653i, vec4<u32>(0u, 133976u, 0u, 56388u)), Struct_2(vec3<f32>(-571f, 306f, 887f), 1i, -40611i, vec4<u32>(21950u, 62500u, 16598u, 1u)), Struct_2(vec3<f32>(959f, 355f, 715f), -1i, 1687i, vec4<u32>(4294967295u, 39742u, 11549u, 44967u)), Struct_2(vec3<f32>(-455f, -370f, -343f), 0i, 2147483647i, vec4<u32>(0u, 11384u, 20778u, 60749u)), Struct_2(vec3<f32>(836f, -643f, -620f), 2147483647i, -1i, vec4<u32>(4294967295u, 11730u, 1u, 44506u)), Struct_2(vec3<f32>(-1404f, -1000f, -203f), 1i, i32(-2147483648), vec4<u32>(1u, 47229u, 4294967295u, 0u)), Struct_2(vec3<f32>(863f, -664f, 674f), 2147483647i, 39934i, vec4<u32>(0u, 27512u, 0u, 4294967295u)), Struct_2(vec3<f32>(-1498f, -399f, 1000f), -1i, 17905i, vec4<u32>(83965u, 2203u, 0u, 14009u)), Struct_2(vec3<f32>(693f, -387f, 943f), 2147483647i, 2497i, vec4<u32>(27439u, 4294967295u, 67413u, 41097u)), Struct_2(vec3<f32>(459f, 816f, -1391f), -1i, -1i, vec4<u32>(0u, 1u, 34989u, 0u)), Struct_2(vec3<f32>(934f, -2956f, 857f), -4841i, -4888i, vec4<u32>(48140u, 0u, 0u, 0u)), Struct_2(vec3<f32>(-1000f, -1072f, 495f), -14527i, i32(-2147483648), vec4<u32>(6619u, 4294967295u, 26426u, 92801u)), Struct_2(vec3<f32>(-1740f, -1064f, -1000f), 1i, 1i, vec4<u32>(1u, 4294967295u, 51458u, 0u)), Struct_2(vec3<f32>(-1112f, 1000f, -402f), i32(-2147483648), 0i, vec4<u32>(1u, 39013u, 4294967295u, 0u)), Struct_2(vec3<f32>(-450f, -398f, 908f), 2147483647i, 1i, vec4<u32>(1u, 48489u, 1u, 1u)), Struct_2(vec3<f32>(1000f, 852f, 187f), 10841i, -1422i, vec4<u32>(7549u, 4294967295u, 25379u, 1u)), Struct_2(vec3<f32>(773f, -1000f, 1062f), -3881i, 2147483647i, vec4<u32>(0u, 4294967295u, 4294967295u, 39301u)), Struct_2(vec3<f32>(-601f, -190f, 632f), 31846i, -31392i, vec4<u32>(131679u, 0u, 0u, 1u)), Struct_2(vec3<f32>(1167f, -511f, -2916f), 2117i, 30873i, vec4<u32>(23626u, 0u, 1339u, 0u)), Struct_2(vec3<f32>(-273f, -1692f, 802f), i32(-2147483648), -54588i, vec4<u32>(4294967295u, 22647u, 22591u, 27159u)), Struct_2(vec3<f32>(-600f, 1320f, -563f), 1i, 1i, vec4<u32>(1u, 1u, 49215u, 4294967295u)), Struct_2(vec3<f32>(-1731f, -998f, -125f), -38892i, -1i, vec4<u32>(27374u, 0u, 4294967295u, 57088u)), Struct_2(vec3<f32>(-778f, 348f, 526f), 2147483647i, i32(-2147483648), vec4<u32>(0u, 26836u, 1u, 0u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<u32, 1>();
    var var_0 = Struct_3(any(select(vec3<bool>(any(vec2<bool>(arg_0, arg_0)), select(arg_0, true, false), !arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, arg_0), true), false)), -71159i, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(301f, 206f) - _wgslsmith_div_vec2_f32(vec2<f32>(-1352f, 805f), vec2<f32>(-1000f, 1200f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1168f, -807f), vec2<f32>(1012f, 557f))))), ~44114u, _wgslsmith_mod_i32(countOneBits(-35358i), u_input.c), vec4<u32>(5281u, ~4294967295u, global0[_wgslsmith_index_u32(4294967295u, 1u)], ~0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(248f + -597f), _wgslsmith_f_op_f32(select(1247f, -597f, true)), _wgslsmith_f_op_f32(-694f + 1581f), _wgslsmith_f_op_f32(trunc(500f))) * vec4<f32>(1f, 1f, 1f, 1f))), 36384u);
    var var_1 = global1[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(u_input.d.x, 1u)]), 25u)];
    var var_2 = Struct_4(vec4<bool>(any(select(select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(arg_0, true, true, var_0.a), arg_0), vec4<bool>(var_0.a, var_0.a, arg_0, true), var_0.a && true)), any(select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), !vec4<bool>(false, arg_0, true, false), vec4<bool>(false, true, var_0.a, var_0.a))), any(vec4<bool>(true, false, false != arg_0, false)), !all(vec2<bool>(false, arg_0))));
    return 41090u;
}

fn func_2() -> Struct_4 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(-abs(vec2<i32>(2147483647i, u_input.c)), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), firstLeadingBit(vec2<i32>(u_input.c, u_input.c))))), _wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.c) >> (u_input.d.zx % vec2<u32>(32u)), vec2<i32>(2147483647i, -6035i)), -_wgslsmith_mod_vec2_i32(vec2<i32>(-46652i, 9550i), vec2<i32>(u_input.c, 29184i))), u_input.c & u_input.c), 0i, u_input.c);
    global1 = array<Struct_2, 25>();
    let var_1 = select(select(vec2<bool>(!select(true, true, false), any(vec3<bool>(false, true, false))), vec2<bool>(select(2147483647i, 8049i, false) >= u_input.c, ~global0[_wgslsmith_index_u32(44798u, 1u)] == func_3(false)), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), !any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), !select(true, false, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 739f)) + _wgslsmith_f_op_f32(f32(-1f) * -367f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(ceil(-1246f)))), _wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(max(-425f, _wgslsmith_f_op_f32(f32(-1f) * -1145f)))), -829f));
    let var_3 = var_1.x;
    return Struct_4(!(!(!(!vec4<bool>(var_3, false, false, var_3)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = Struct_4(vec4<bool>(true && any(vec4<bool>(false, false, true, false)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true));
    var_0 = func_2();
    let var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1523f * 839f)) < _wgslsmith_f_op_f32(-arg_1), ~(-1i & u_input.c) <= (abs(_wgslsmith_mult_i32(-42866i, u_input.c)) >> (u_input.b % 32u)), all(var_0.a.wx));
    var var_2 = 1i;
    let var_3 = select(arg_0, vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(abs(arg_0.x), ~(-2147483647i))), abs(~362i), _wgslsmith_sub_i32(1321i, ~u_input.c), _wgslsmith_mod_i32(-23469i, 1i)), vec4<bool>(var_1.x, var_0.a.x, !(_wgslsmith_div_i32(0i, arg_0.x) >= 1i), var_1.x));
    return _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(~reverseBits(1u), ~0u, 56892u)), select(reverseBits(vec3<u32>(1u, u_input.a, u_input.a) << (u_input.d % vec3<u32>(32u))), vec3<u32>(countOneBits(~28989u), ~0u, 1u), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true, -252i, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), 2315f)), _wgslsmith_add_u32(~(~global0[_wgslsmith_index_u32(1u, 1u)]), global0[_wgslsmith_index_u32(~u_input.b, 1u)]), u_input.c, vec4<u32>(~firstLeadingBit(52179u), u_input.d.x, global0[_wgslsmith_index_u32(~(~4294967295u), 1u)], ~func_1(vec4<i32>(u_input.c, 0i, 55799i, 28363i), -764f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1590f, -1000f, -253f, 219f))))), ~4294967295u);
    global1 = array<Struct_2, 25>();
    let var_1 = func_2().a.x | all(!vec3<bool>(true, any(vec3<bool>(false, var_0.a, true)), var_0.a));
    global0 = array<u32, 1>();
    var var_2 = Struct_4(select(!select(vec4<bool>(true, false, var_0.a, var_0.a), vec4<bool>(var_1, var_1, false, true), vec4<bool>(false, var_0.a, var_0.a, false)), !vec4<bool>(var_1, var_0.a || var_1, !var_1, any(vec2<bool>(false, var_0.a))), !vec4<bool>(true, var_0.a, var_0.c.e.x == var_0.c.e.x, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(15613u, abs(global0[_wgslsmith_index_u32(var_0.d, 1u)])), countOneBits(max(countOneBits(u_input.d.zx), u_input.d.zx))));
}

