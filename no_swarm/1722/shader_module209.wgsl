struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 682f;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<i32>(2147483647i, 5472i), vec4<bool>(true, false, false, false), vec3<f32>(-1284f, -698f, -1409f), vec4<u32>(11054u, 106402u, 2696u, 37829u), 8646u), Struct_1(vec2<i32>(2147483647i, -8417i), vec4<bool>(true, true, false, true), vec3<f32>(-455f, -525f, 1000f), vec4<u32>(1u, 140352u, 0u, 1u), 6611u), Struct_1(vec2<i32>(2147483647i, -12364i), vec4<bool>(true, true, true, false), vec3<f32>(261f, -580f, 1911f), vec4<u32>(43586u, 84919u, 62824u, 3411u), 1u), Struct_1(vec2<i32>(1i, -6608i), vec4<bool>(true, true, false, false), vec3<f32>(-216f, -1180f, 568f), vec4<u32>(0u, 1u, 0u, 0u), 4294967295u), Struct_1(vec2<i32>(-12894i, i32(-2147483648)), vec4<bool>(true, false, false, false), vec3<f32>(774f, -213f, -548f), vec4<u32>(67419u, 59308u, 3685u, 1u), 21216u), Struct_1(vec2<i32>(0i, 1i), vec4<bool>(true, true, false, false), vec3<f32>(-572f, 645f, 344f), vec4<u32>(1u, 77313u, 16105u, 4294967295u), 4294967295u), Struct_1(vec2<i32>(2147483647i, -7744i), vec4<bool>(true, false, false, true), vec3<f32>(231f, -805f, -778f), vec4<u32>(4294967295u, 29086u, 4294967295u, 1u), 12583u), Struct_1(vec2<i32>(-40372i, 1i), vec4<bool>(false, false, false, false), vec3<f32>(-385f, 1795f, -1910f), vec4<u32>(1u, 47742u, 21741u, 4294967295u), 22542u), Struct_1(vec2<i32>(2147483647i, 652i), vec4<bool>(true, true, false, false), vec3<f32>(570f, 1747f, -316f), vec4<u32>(0u, 27731u, 52629u, 20991u), 46596u), Struct_1(vec2<i32>(0i, -16172i), vec4<bool>(true, false, true, false), vec3<f32>(409f, -1000f, -1956f), vec4<u32>(14370u, 24701u, 463u, 18056u), 0u), Struct_1(vec2<i32>(1i, 2147483647i), vec4<bool>(true, true, true, true), vec3<f32>(-1384f, 263f, 1469f), vec4<u32>(6404u, 44843u, 16478u, 1u), 0u), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<bool>(true, false, false, false), vec3<f32>(-150f, 605f, 982f), vec4<u32>(17868u, 4294967295u, 40380u, 10112u), 14590u), Struct_1(vec2<i32>(-76i, 25917i), vec4<bool>(true, true, false, true), vec3<f32>(2035f, 2594f, -814f), vec4<u32>(53118u, 0u, 111022u, 4294967295u), 0u), Struct_1(vec2<i32>(0i, 52060i), vec4<bool>(false, false, true, true), vec3<f32>(755f, -1384f, -993f), vec4<u32>(3433u, 0u, 41105u, 15573u), 1u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(arg_0.a.x, u_input.a.x), _wgslsmith_sub_i32(arg_2, -30925i), ~u_input.a.x)), vec3<i32>(abs(-arg_2), _wgslsmith_add_i32(-1i, arg_0.a.x) << (min(u_input.b, 65238u) % 32u), ~(arg_0.a.x >> (10230u % 32u)))), firstLeadingBit(u_input.a >> (~select(vec3<u32>(u_input.b, arg_1.d.x, arg_1.e), arg_1.d.xxy, arg_1.b.x) % vec3<u32>(32u))));
    var var_1 = ~abs(firstTrailingBit(~(~857i)));
    let var_2 = select(vec2<bool>(!any(select(arg_1.b, arg_1.b, arg_0.b)), !all(vec2<bool>(false, true))), vec2<bool>(arg_1.b.x, !(_wgslsmith_f_op_f32(ceil(arg_1.c.x)) == _wgslsmith_f_op_f32(-483f + -1515f))), all(arg_1.b.yy));
    var var_3 = Struct_1(~_wgslsmith_mod_vec2_i32(-reverseBits(arg_1.a), vec2<i32>(arg_1.a.x, arg_1.a.x) | -arg_0.a), !(!arg_0.b), arg_0.c, arg_1.d, firstTrailingBit(arg_0.e));
    let var_4 = _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.d.x, ~u_input.b, 39603u, arg_1.e), vec4<u32>(select(var_3.d.x, u_input.b, all(var_2)), u_input.b, 13536u, u_input.b));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = -(~u_input.a);
    global1 = array<Struct_1, 14>();
    var var_1 = 1000f;
    var var_2 = !(!select(arg_2.yy, arg_2.zy, vec2<bool>(any(vec4<bool>(false, arg_2.x, false, false)), -23511i > u_input.a.x)));
    var var_3 = select(vec3<bool>(func_3(Struct_1(~vec2<i32>(0i, 58479i), arg_0.b, arg_0.c, ~vec4<u32>(arg_0.d.x, 1u, 10550u, arg_0.d.x), _wgslsmith_clamp_u32(3248u, 0u, 0u)), Struct_1(vec2<i32>(var_0.x, 1i) & vec2<i32>(-1154i, arg_0.a.x), vec4<bool>(false, arg_0.b.x, false, arg_0.b.x), arg_0.c, vec4<u32>(u_input.b, 71194u, arg_1, u_input.b) | arg_0.d, u_input.b), -1i, arg_0.b.x), select(arg_2.x, var_2.x, select(arg_2.x, arg_2.x, arg_2.x) == true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)) >= arg_0.c.x), select(vec3<bool>(true, true, true), select(arg_2.ywy, select(!arg_0.b.xzx, !vec3<bool>(true, arg_0.b.x, arg_2.x), vec3<bool>(arg_0.b.x, var_2.x, true)), select(!vec3<bool>(false, arg_2.x, true), arg_0.b.zww, select(arg_0.b.www, vec3<bool>(arg_0.b.x, var_2.x, false), arg_0.b.x))), !select(!arg_0.b.wyy, arg_0.b.xwx, true)), arg_0.b.x);
    return -var_0.yx;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(~arg_1.a ^ firstTrailingBit(u_input.a.yx)) ^ firstLeadingBit(_wgslsmith_sub_vec2_i32(func_2(Struct_1(vec2<i32>(arg_3.a.x, u_input.a.x), vec4<bool>(arg_2.b.x, arg_2.b.x, false, arg_3.b.x), vec3<f32>(arg_3.c.x, -1059f, arg_2.c.x), arg_3.d, u_input.b), 35085u, vec4<bool>(false, arg_1.b.x, true, arg_3.b.x)), vec2<i32>(arg_2.a.x, -34447i))), arg_3.b, arg_2.c, vec4<u32>(reverseBits(~max(0u, u_input.b)), max(~1u, _wgslsmith_sub_u32(reverseBits(arg_3.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.d.x, arg_2.e), vec2<u32>(arg_1.d.x, 0u)))), arg_3.e, ~(~(29722u ^ arg_1.d.x))), 4294967295u);
    let var_1 = arg_2.e;
    let var_2 = ~_wgslsmith_dot_vec3_u32(~arg_1.d.yyw, arg_2.d.xyw);
    let var_3 = select(abs(vec4<i32>(max(-1i, var_0.a.x << (arg_1.e % 32u)), -1i, countOneBits(0i), _wgslsmith_dot_vec3_i32(u_input.a & vec3<i32>(-2147483647i, arg_1.a.x, 2147483647i), abs(u_input.a)))), vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(u_input.a.x, var_0.a.x), ~(-970i), arg_1.a.x, arg_1.a.x), !arg_1.b.x);
    let var_4 = 1u;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, 1000f, -554f, 2092f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2540f, 295f, -745f, 956f)))))), global1[_wgslsmith_index_u32(~87035u, 14u)], Struct_1(select(vec2<i32>(reverseBits(-1i), -u_input.a.x), u_input.a.zy, vec2<bool>(true, true)), select(vec4<bool>(true, any(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(abs(189f)), _wgslsmith_f_op_f32(f32(-1f) * -673f))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, select(4294967295u, u_input.b, true), u_input.b, 1263u), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.b, 37449u, u_input.b)), ~vec4<u32>(0u, u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(28580u, 104841u, 0u, 4294967295u), vec4<u32>(22948u, u_input.b, u_input.b, u_input.b)))), u_input.b), Struct_1(select(~vec2<i32>(u_input.a.x, u_input.a.x), max(vec2<i32>(u_input.a.x, u_input.a.x), ~u_input.a.xx), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1644f * 311f), _wgslsmith_f_op_f32(f32(-1f) * -654f), -2852f)), countOneBits(vec4<u32>(~1u, u_input.b, u_input.b, ~47499u)), 0u));
    let var_1 = countOneBits(1u);
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, u_input.b), vec2<u32>(0u, ~_wgslsmith_sub_u32(1u, 0u))), 14u)];
    var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(select(max(var_1, 0u), countOneBits(47883u), !(!var_2.b.x)), abs(~(~49029u))), ~var_0.d.x), 14u)];
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_0.c.x + 237f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(801f, 1278f, -1000f, var_0.c.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -1000f, -281f, var_0.c.x) * vec4<f32>(434f, var_2.c.x, var_2.c.x, var_0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.c.x)), var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c.x, var_0.c.x)) * func_1(vec4<f32>(var_2.c.x, 570f, -1000f, var_2.c.x), global1[_wgslsmith_index_u32(var_1, 14u)], Struct_1(vec2<i32>(-1i, u_input.a.x), vec4<bool>(var_0.b.x, false, var_0.b.x, false), vec3<f32>(var_0.c.x, var_0.c.x, var_2.c.x), vec4<u32>(var_1, var_2.e, var_2.e, var_0.e), 0u), var_0).c.x), _wgslsmith_f_op_f32(f32(-1f) * -696f)), any(!var_0.b.wzy))), global1[_wgslsmith_index_u32(var_1, 14u)], func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, _wgslsmith_f_op_f32(f32(-1f) * -707f), _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), var_0.c.x)), var_0, Struct_1(var_2.a, !vec4<bool>(false, var_0.b.x, true, var_0.b.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(574f, var_0.c.x, var_2.c.x), var_2.c)), vec4<u32>(0u, ~var_2.e, u_input.b, _wgslsmith_div_u32(u_input.b, 42945u)), 1u), Struct_1(u_input.a.yx, !select(vec4<bool>(var_2.b.x, true, var_0.b.x, true), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), false), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(399f, var_0.c.x, -1604f, 208f)), func_1(vec4<f32>(1183f, var_0.c.x, -1421f, -528f), Struct_1(vec2<i32>(-14503i, var_2.a.x), vec4<bool>(true, false, true, var_0.b.x), var_0.c, var_2.d, var_1), Struct_1(vec2<i32>(u_input.a.x, 1i), var_2.b, vec3<f32>(898f, var_2.c.x, var_2.c.x), vec4<u32>(120281u, u_input.b, var_1, 4294967295u), var_1), Struct_1(vec2<i32>(-13467i, var_0.a.x), var_0.b, var_2.c, var_0.d, 4294967295u)), var_0, func_1(vec4<f32>(598f, var_2.c.x, 791f, -1000f), Struct_1(u_input.a.zy, vec4<bool>(true, var_2.b.x, false, var_0.b.x), vec3<f32>(var_0.c.x, -1017f, 1503f), var_0.d, var_0.e), Struct_1(var_0.a, var_0.b, vec3<f32>(301f, -1064f, var_2.c.x), var_0.d, 4294967295u), Struct_1(vec2<i32>(2147483647i, var_2.a.x), vec4<bool>(false, true, false, true), var_2.c, vec4<u32>(3730u, 35393u, 4294967295u, var_0.d.x), 88333u))).c, vec4<u32>(0u, u_input.b, var_0.e, 4294967295u) << (var_2.d % vec4<u32>(32u)), 954u)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1229f, var_2.c.x, -940f, var_2.c.x), vec4<f32>(var_2.c.x, -634f, var_2.c.x, -1283f))))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, 629f, var_2.c.x, var_0.c.x)))), Struct_1(var_2.a, select(var_2.b, var_0.b, vec4<bool>(var_0.b.x, var_0.b.x, var_2.b.x, false)), vec3<f32>(var_2.c.x, 443f, -1938f), ~var_2.d, ~var_2.d.x), Struct_1(-vec2<i32>(u_input.a.x, var_2.a.x), var_0.b, _wgslsmith_f_op_vec3_f32(trunc(var_0.c)), vec4<u32>(var_1, 24175u, 0u, 1u) ^ vec4<u32>(var_2.d.x, 0u, 41141u, var_2.e), 15422u), func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.c.x, -776f, var_0.c.x, 192f), vec4<f32>(-951f, var_2.c.x, var_0.c.x, -270f))), var_0, global1[_wgslsmith_index_u32(var_0.e, 14u)], Struct_1(vec2<i32>(u_input.a.x, var_0.a.x), vec4<bool>(false, var_0.b.x, var_0.b.x, var_2.b.x), vec3<f32>(var_0.c.x, var_0.c.x, 1000f), vec4<u32>(1u, 4294967295u, 22010u, 8308u), 0u))), Struct_1(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_0.c.x, var_2.c.x, 1749f)), func_1(vec4<f32>(var_2.c.x, var_2.c.x, var_0.c.x, -980f), var_0, global1[_wgslsmith_index_u32(var_2.e, 14u)], global1[_wgslsmith_index_u32(var_1, 14u)]), Struct_1(u_input.a.zz, var_0.b, var_2.c, var_2.d, var_2.d.x), global1[_wgslsmith_index_u32(1u, 14u)]).a, vec4<bool>(var_2.b.x, true, var_2.b.x, true), var_2.c, reverseBits(var_2.d), 0u), global1[_wgslsmith_index_u32(var_0.e, 14u)])).b;
    let var_4 = global1[_wgslsmith_index_u32(var_1, 14u)];
    let var_5 = Struct_1(var_2.a, select(!vec4<bool>(!var_2.b.x, true, true, true), !var_2.b, !any(vec2<bool>(false, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -260f), var_0.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.x, var_2.c.x, var_2.b.x)))))), vec4<u32>(u_input.b, var_0.d.x >> (0u % 32u), ~var_0.e, var_2.d.x), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-617f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.c.x) * 732f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c.zz, _wgslsmith_f_op_vec2_f32(var_0.c.yy * vec2<f32>(var_0.c.x, var_0.c.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.x, 666f) * _wgslsmith_f_op_vec2_f32(-var_2.c.zy))))));
}

