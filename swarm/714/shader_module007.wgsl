struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-13845i, -1090i, 1i, 17551i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_1(min(~(~abs(4294967295u)), _wgslsmith_sub_u32(62620u, 0u)), countOneBits(vec3<i32>(_wgslsmith_mod_i32(abs(-15585i), _wgslsmith_mult_i32(arg_0, -23347i)), _wgslsmith_add_i32(u_input.b.x, -22129i), min(2147483647i, _wgslsmith_sub_i32(33270i, -2359i)))), _wgslsmith_mult_i32(firstLeadingBit(-58232i), -u_input.a), ~vec3<u32>(_wgslsmith_mod_u32(17953u, 4294967295u), 1u, 1u), 1f);
    let var_1 = vec4<u32>(~var_0.d.x, _wgslsmith_dot_vec2_u32(var_0.d.yx, var_0.d.xy), 1u, abs(~(~(23929u >> (var_0.a % 32u)))));
    var_0 = Struct_1(~((_wgslsmith_sub_u32(var_1.x, var_1.x) & 82986u) | 23071u), vec3<i32>(-firstTrailingBit(1i), _wgslsmith_div_i32(firstLeadingBit(var_0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -42125i), u_input.b)), -21624i), var_0.c, vec3<u32>(1u, abs(abs(~var_1.x)), ~abs(_wgslsmith_mod_u32(var_1.x, var_0.d.x))), _wgslsmith_f_op_f32(-1000f + var_0.e));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(740f, 293f, _wgslsmith_f_op_f32(f32(-1f) * -878f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1367f, -625f, 931f), vec3<f32>(382f, 587f, -732f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 172f, var_0.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, -993f, var_0.e))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, 286f, var_0.e) * vec3<f32>(var_0.e, var_0.e, var_0.e))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(659f, var_0.e, var_0.e) - vec3<f32>(var_0.e, var_0.e, var_0.e)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.e, -758f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, var_0.e, -350f))))));
    global0 = array<vec4<i32>, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = 1u;
    let var_1 = Struct_4(Struct_2(vec4<f32>(-1168f, 945f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f)), _wgslsmith_f_op_f32(floor(1251f))), _wgslsmith_f_op_f32(func_3(-25585i)), -reverseBits(vec2<i32>(-2147483647i, u_input.a) << (vec2<u32>(48381u, var_0) % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -120f)), abs(vec4<i32>(-1i, _wgslsmith_mult_i32(2147483647i, _wgslsmith_add_i32(u_input.a, 6669i)), -1i, max(-27608i, 1i))), vec4<i32>(u_input.b.x, ~reverseBits(_wgslsmith_mod_i32(u_input.b.x, 1i)), ~u_input.a, 23488i), 4294967295u, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 137f, 808f, -1119f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 603f, 1253f, -734f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1487f, 1039f, arg_0)) - _wgslsmith_f_op_f32(492f * -585f))), vec2<i32>(1i, -40115i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1292f)), 1f))));
    let var_2 = vec4<bool>(all(vec4<bool>(true, _wgslsmith_sub_i32(21287i, var_1.c.x) != u_input.a, arg_0 && arg_0, true)), true, arg_0, !(!select(var_1.e.c.x < u_input.a, true, arg_0)));
    global0 = array<vec4<i32>, 1>();
    var var_3 = Struct_1(var_1.d, _wgslsmith_div_vec3_i32(~(_wgslsmith_div_vec3_i32(var_1.c.zyy, vec3<i32>(-31357i, -43482i, var_1.c.x)) >> ((vec3<u32>(var_0, var_0, 4294967295u) << (vec3<u32>(var_1.d, var_1.d, 3123u) % vec3<u32>(32u))) % vec3<u32>(32u))), -var_1.b.wyw), -(-(~u_input.b.x) << (~(~0u) % 32u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(64377u, ~45995u, ~var_1.d), reverseBits(~vec3<u32>(var_1.d, var_1.d, var_1.d)), ~max(vec3<u32>(4294967295u, var_0, var_1.d), vec3<u32>(var_0, var_0, var_0))), var_1.a.b);
    return var_1.e;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<vec4<i32>, 1>();
    let var_0 = func_2(true & !any(vec2<bool>(true, true)));
    global0 = array<vec4<i32>, 1>();
    let var_1 = reverseBits(-2147483647i);
    var var_2 = select(!(!vec4<bool>(all(vec3<bool>(false, true, true)), false, true, true)), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false), false), vec4<bool>(false, 1i >= (var_1 & -28697i), ~1i != var_1, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1284f * -1191f) * func_2(true).a.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d)) - -1220f)), !(true && all(vec2<bool>(true, true))));
    return Struct_1(_wgslsmith_div_u32(abs(0u), ~9690u), arg_1, _wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(70985i, var_1, var_1, 42224i))), ~vec4<i32>(~(-1i), u_input.b.x, -33798i, -36674i)), reverseBits(select(~vec3<u32>(1u, 1u, 1u), abs(abs(vec3<u32>(16660u, 4294967295u, 4294967295u))), var_2.wxy)), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-729f, 1075f, 264f, -1132f), vec4<f32>(-149f, 1215f, -734f, 1059f), false))))), -524f, u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -880f) - -208f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1244f, -1000f))))), vec3<i32>(-1i, -71563i, _wgslsmith_mult_i32(-u_input.b.x, -31476i) & -_wgslsmith_div_i32(u_input.a, u_input.b.x)));
    let var_1 = !(!vec2<bool>(firstLeadingBit(-2147483647i) < u_input.b.x, false));
    var_0 = Struct_1(_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(~(var_0.a & 70034u), ~15943u, firstLeadingBit(var_0.d.x))), -vec3<i32>(func_1(Struct_2(vec4<f32>(-1000f, var_0.e, var_0.e, -2429f), var_0.e, vec2<i32>(35282i, var_0.c), var_0.e), var_0.b).c, ~(-1i), -5711i) ^ -var_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(u_input.b, _wgslsmith_mult_vec2_i32(vec2<i32>(-34670i, u_input.b.x), vec2<i32>(var_0.b.x, var_0.c)), vec2<bool>(true, true)), u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(1i, ~41739i), firstTrailingBit(countOneBits(vec2<i32>(62438i, u_input.b.x))))), var_0.d, -1000f);
    var var_2 = _wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(u_input.a & 0i, -var_0.b.x), u_input.a, min(var_0.b.x, _wgslsmith_mod_i32(var_0.b.x, -1i)), -2147483647i), vec4<i32>(-1i, min(u_input.b.x, -_wgslsmith_add_i32(var_0.b.x, 1i)), 1i, 41368i));
    var var_3 = var_2.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-604f, -155f, 864f) * vec3<f32>(2518f, 1079f, -1000f)))))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(var_0.e * -335f), any(vec3<bool>(var_1.x, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x)) * func_1(Struct_2(vec4<f32>(915f, 1000f, -1000f, -391f), -1862f, var_0.b.xz, -1000f), var_2.xwz).e), -500f)));
    global0 = array<vec4<i32>, 1>();
    var var_5 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.zy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.yz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, -185f) - var_4.yy))))));
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(reverseBits(0u), 1u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.x, -1925f, -2175f, -229f) + _wgslsmith_div_vec4_f32(vec4<f32>(var_5.x, var_4.x, 1301f, -836f), vec4<f32>(var_4.x, -207f, var_6.x, 439f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x) * vec4<f32>(var_4.x, var_4.x, var_4.x, -699f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_4.x, 236f, var_0.e, var_5.x)))), (-215f == _wgslsmith_f_op_f32(1000f * var_0.e)) && !any(vec3<bool>(var_1.x, false, false)))), 25368u, var_2.yzz & vec3<i32>(_wgslsmith_add_i32(16152i, 43069i >> (var_0.d.x % 32u)), var_0.b.x, i32(-1i) * -var_2.x), func_2(var_1.x).a.zxy);
}

