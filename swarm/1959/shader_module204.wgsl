struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(-33163i, vec2<f32>(1165f, -1974f), false, -820f), Struct_2(0i, vec2<f32>(-490f, 1041f), true, -756f), Struct_2(-65184i, vec2<f32>(-527f, -890f), false, 1483f), Struct_2(6478i, vec2<f32>(-1167f, -1000f), true, 140f), Struct_2(-10221i, vec2<f32>(1131f, -190f), true, 1579f), Struct_2(1606i, vec2<f32>(-1121f, 164f), false, -915f), Struct_2(1i, vec2<f32>(-793f, 1117f), true, 934f), Struct_2(33887i, vec2<f32>(-233f, -379f), true, -1151f), Struct_2(-1i, vec2<f32>(1646f, 444f), false, -196f), Struct_2(42954i, vec2<f32>(-118f, -1210f), true, -563f), Struct_2(-12755i, vec2<f32>(-483f, -617f), false, 1000f), Struct_2(-1i, vec2<f32>(452f, -1148f), true, 173f), Struct_2(-1i, vec2<f32>(-1730f, 673f), false, 400f), Struct_2(i32(-2147483648), vec2<f32>(-870f, 702f), true, -2557f), Struct_2(1i, vec2<f32>(435f, -263f), false, 799f), Struct_2(-37433i, vec2<f32>(-127f, -1426f), false, -530f), Struct_2(i32(-2147483648), vec2<f32>(1000f, -1000f), true, 885f), Struct_2(2147483647i, vec2<f32>(374f, 2193f), false, -501f), Struct_2(-2942i, vec2<f32>(-408f, 387f), true, -456f), Struct_2(-1i, vec2<f32>(820f, -2471f), false, 1178f), Struct_2(22190i, vec2<f32>(104f, -1565f), true, -1011f), Struct_2(6989i, vec2<f32>(-716f, -728f), true, -478f), Struct_2(0i, vec2<f32>(1140f, -1162f), true, -1255f), Struct_2(-1i, vec2<f32>(-1082f, -189f), true, -2591f), Struct_2(90234i, vec2<f32>(-706f, -2078f), false, -347f), Struct_2(1i, vec2<f32>(-1718f, -1000f), false, 715f), Struct_2(-6984i, vec2<f32>(1138f, -662f), false, 1828f));

var<private> global1: array<u32, 14> = array<u32, 14>(24622u, 46195u, 0u, 59773u, 0u, 1u, 0u, 4294967295u, 4294967295u, 52563u, 36215u, 37192u, 100128u, 4294967295u);

var<private> global2: array<Struct_3, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.c, ~(~(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42678u, 14u)], 14u)], 14u)], 14u)], 14u)]) & (vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 14u)]) | u_input.c))), vec2<u32>(2446u ^ global1[_wgslsmith_index_u32(u_input.c.x, 14u)], u_input.c.x));
    let var_1 = u_input.a;
    var var_2 = ~vec4<i32>(_wgslsmith_div_i32(~u_input.a, ~reverseBits(-2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), ~(-vec2<i32>(arg_1, -61517i))), -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2.a.a, arg_1, arg_1), ~0i), firstTrailingBit(-u_input.a >> (min(var_0.x, global1[_wgslsmith_index_u32(var_0.x, 14u)]) % 32u)));
    global2 = array<Struct_3, 18>();
    var var_3 = -298f;
    return 130f;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, -29961i, 3241i), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, arg_2.x, 3065i)) & reverseBits(vec3<i32>(u_input.a, arg_2.x, 17812i)), -vec3<i32>(u_input.a, -2147483647i, -1i))) | ((vec3<i32>(-1i) * -vec3<i32>(0i, 19492i, -34739i)) >> (vec3<u32>(~0u, _wgslsmith_sub_u32(~u_input.c.x, u_input.c.x & 0u), 62769u) % vec3<u32>(32u)));
    global1 = array<u32, 14>();
    var var_1 = vec3<f32>(_wgslsmith_div_f32(-320f, _wgslsmith_f_op_f32(ceil(1343f))), -828f, 466f);
    let var_2 = ~(~50910u) < global1[_wgslsmith_index_u32(reverseBits(select(0u, 42888u, arg_0.x)), 14u)];
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1275f, -302f) + _wgslsmith_f_op_f32(f32(-1f) * -1723f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_3.x) + _wgslsmith_f_op_f32(func_3(Struct_1(arg_3.x), arg_2.x, Struct_3(Struct_2(24447i, var_1.xz, true, -338f), Struct_1(arg_1.x), Struct_1(933f))))))));
    return vec4<bool>(any(select(select(arg_0, arg_0, var_2), arg_0, global1[_wgslsmith_index_u32(110516u, 14u)] != firstLeadingBit(u_input.c.x))), !var_2, any(!select(!arg_0, vec2<bool>(false, arg_0.x), false)), false);
}

fn func_1(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_clamp_i32(2146i, 22241i, min(22948i, u_input.a) | ~abs(-2147483647i));
    let var_1 = func_2(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), any(vec2<bool>(false, true))), !all(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1785f, 400f, 2257f, -1421f))))), vec2<i32>(38006i, -2665i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(827f, -443f, 157f))))));
    var var_2 = abs(~36933u);
    var var_3 = vec4<f32>(-994f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-957f, -1033f), _wgslsmith_f_op_f32(-501f * 598f)))) * 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(611f + _wgslsmith_f_op_f32(869f - _wgslsmith_f_op_f32(1830f + 152f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(165f - -1073f)))))));
    let var_4 = Struct_4(Struct_1(var_3.x));
    return vec3<f32>(160f, 1053f, var_4.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(66029u), global1[_wgslsmith_index_u32(reverseBits(u_input.b), 14u)]), ~49018u)) << (u_input.c.x % 32u), 14u)];
    var_0 = abs(u_input.b);
    global2 = array<Struct_3, 18>();
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1126f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, -456f, -1117f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(12120u, 14u)])))), vec3<f32>(_wgslsmith_f_op_f32(179f * 265f), _wgslsmith_f_op_f32(-202f - 207f), _wgslsmith_f_op_f32(f32(-1f) * -993f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-687f, -2264f), _wgslsmith_f_op_f32(round(-543f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f))), -1592f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(trunc(314f))))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), func_2(vec2<bool>(true, false), vec4<f32>(-253f, 1077f, -930f, 173f), vec2<i32>(u_input.a, u_input.a), vec3<f32>(732f, 1160f, -566f)).xzy), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(true, true, true))));
    global1 = array<u32, 14>();
    var var_4 = false;
    var_2 = _wgslsmith_f_op_f32(-1521f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_3.x)), var_3.x)) - _wgslsmith_f_op_f32(abs(var_3.x))), 1f, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, var_3.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x))), var_3.x))), ~(~global1[_wgslsmith_index_u32(u_input.c.x, 14u)]));
}

