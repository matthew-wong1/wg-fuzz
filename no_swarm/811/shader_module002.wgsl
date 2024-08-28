struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(1278f, 2106f, 742f), vec3<f32>(-1000f, -1345f, -1116f), vec3<f32>(-2527f, 211f, 266f), vec3<f32>(-668f, 693f, -458f), vec3<f32>(693f, 1344f, -363f), vec3<f32>(-1269f, 463f, 275f), vec3<f32>(-857f, 1479f, -1000f), vec3<f32>(-466f, -807f, -1727f), vec3<f32>(-264f, 553f, -295f), vec3<f32>(-500f, -152f, 394f), vec3<f32>(-748f, -608f, -496f), vec3<f32>(-585f, -1636f, 2622f), vec3<f32>(1000f, -820f, 896f), vec3<f32>(1034f, 413f, 1536f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f - 1021f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(663f, 2064f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(541f + _wgslsmith_div_f32(-1367f, 448f))), _wgslsmith_f_op_f32(step(-2304f, _wgslsmith_f_op_f32(-1098f + 1276f)))), u_input.a, ~countOneBits(81642u), global0[_wgslsmith_index_u32(1u, 14u)], select(!select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, false), !vec2<bool>(true, all(vec2<bool>(false, true)))));
    global0 = array<vec3<f32>, 14>();
    let var_1 = true;
    return _wgslsmith_mult_u32(u_input.b.x, ~20910u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = ~(~((vec4<u32>(u_input.e, u_input.e, arg_1.x, 1u) | vec4<u32>(4294967295u, u_input.b.x, 40234u, u_input.c)) | (vec4<u32>(u_input.b.x, arg_1.x, u_input.d.x, arg_1.x) & vec4<u32>(arg_1.x, 65181u, arg_1.x, u_input.c))) ^ ~select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.d.x, 0u), vec4<u32>(84419u, 1u, 4294967295u, arg_1.x)), ~vec4<u32>(27648u, 19376u, 4294967295u, 1u), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)));
    global0 = array<vec3<f32>, 14>();
    let var_1 = func_3(firstLeadingBit(_wgslsmith_clamp_u32(~var_0.x, arg_1.x, u_input.e)));
    var var_2 = ~vec3<u32>(~_wgslsmith_sub_u32(select(81239u, 43604u, arg_0.x), var_0.x), var_1, 1456u);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -551f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f - -1421f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(-405f * 410f)))));
    return Struct_3(_wgslsmith_f_op_f32(ceil(var_3.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = u_input.a.x;
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_div_vec2_i32(abs(vec2<i32>(firstLeadingBit(max(-1i, -1i)), -6937i)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-36519i, 45544i), arg_0.b.x), abs(arg_0.b.x)) >> (vec2<u32>(25277u, ~0u) % vec2<u32>(32u)));
    var var_3 = arg_3;
    let var_4 = Struct_4(_wgslsmith_mod_i32(arg_0.b.x, -1i), 37624u, ~vec3<u32>(u_input.e, _wgslsmith_mod_u32(firstTrailingBit(arg_0.c), ~100917u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, u_input.e, arg_0.c), reverseBits(vec3<u32>(u_input.e, arg_0.c, 1u)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 10657u, 0u, 1948u), max(~vec4<u32>(arg_0.c, 84166u, u_input.e, u_input.c), vec4<u32>(1u, u_input.c, u_input.d.x, 42176u) >> (vec4<u32>(u_input.b.x, 1u, 54570u, arg_0.c) % vec4<u32>(32u)))) & _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(u_input.c, u_input.e, 102175u, u_input.c)), select(vec4<u32>(u_input.e, 25740u, arg_0.c, 30206u), vec4<u32>(3823u, 51744u, 1u, u_input.d.x), arg_0.e.x) & vec4<u32>(1u, u_input.b.x, arg_0.c, 31146u)), arg_2);
    return var_4.e;
}

fn func_5(arg_0: Struct_3) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, -150f, arg_0.a, 326f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1317f, arg_0.a, 1253f, -1000f) * vec4<f32>(488f, -523f, 702f, arg_0.a)))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a), any(vec4<bool>(true, true, false, false)))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(arg_0.a * 1830f)), arg_0.a, -801f)), vec2<i32>(~1i, -16962i), (func_3(22149u) << (~25215u % 32u)) >> (~(~u_input.b.x) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(~u_input.e, 14u)], vec3<f32>(3141f, arg_0.a, 470f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1180f, arg_0.a, -1216f)))))), !vec2<bool>((u_input.e > 0u) | false, true));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    return var_0.e.x;
}

fn func_1() -> u32 {
    var var_0 = select(vec4<bool>(func_5(func_4(Struct_1(vec4<f32>(-1622f, 434f, -865f, 1229f), u_input.a, 14871u, vec3<f32>(-1000f, -646f, 1000f), vec2<bool>(false, false)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.d.x), 14u)], func_2(vec4<bool>(true, false, false, false), vec3<u32>(u_input.e, 30272u, 4294967295u)), Struct_2(global0[_wgslsmith_index_u32(u_input.c, 14u)]))), !(all(vec2<bool>(true, true)) | true), !(_wgslsmith_f_op_f32(round(998f)) != 178f), true), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), func_5(Struct_3(-515f))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, all(vec3<bool>(false, true, false)), true, false)), !vec4<bool>(all(vec3<bool>(false, true, false)), true, any(vec3<bool>(false, false, false)), true), vec4<bool>(u_input.a.x == ~u_input.a.x, true, all(vec2<bool>(true, true)), true)), vec4<bool>(false, func_5(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(_wgslsmith_f_op_f32(sign(-1669f)) > _wgslsmith_f_op_f32(f32(-1f) * -365f), u_input.b.x >= firstLeadingBit(u_input.d.x), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), false));
    global0 = array<vec3<f32>, 14>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1689f) - -108f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(464f, 1063f) + _wgslsmith_f_op_f32(f32(-1f) * -1296f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2387f, func_4(Struct_1(vec4<f32>(var_1.a, var_1.a, var_1.a, -1000f), vec2<i32>(-11014i, u_input.a.x), u_input.e, global0[_wgslsmith_index_u32(16863u, 14u)], vec2<bool>(false, var_0.x)), vec3<f32>(-1194f, 1391f, var_1.a), var_1, Struct_2(global0[_wgslsmith_index_u32(0u, 14u)])).a, var_1.a, var_1.a) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.a, 1102f), vec4<f32>(var_1.a, -612f, 846f, var_1.a)), vec4<f32>(-2379f, var_1.a, -1000f, var_1.a), vec4<bool>(false, true, true, true))))), abs(~(~(u_input.a ^ vec2<i32>(2147483647i, 12465i)))), 45733u, vec3<f32>(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(ceil(-743f)), !all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), var_1.a, _wgslsmith_f_op_f32(sign(var_1.a))), !vec2<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, false, var_0.x))));
    var var_3 = Struct_4(abs(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-20115i, u_input.a.x), vec2<i32>(0i, -2147483647i)))), 64236u, min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 124091u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(59360u, 37898u))), _wgslsmith_add_vec3_u32(select(vec3<u32>(22902u, u_input.d.x, 1u), vec3<u32>(1u, 4294967295u, u_input.c), var_2.e.x), firstTrailingBit(vec3<u32>(u_input.b.x, u_input.e, var_2.c)))), ~select(~vec3<u32>(42764u, var_2.c, u_input.b.x), vec3<u32>(41465u, 5964u, u_input.c) << (vec3<u32>(var_2.c, var_2.c, u_input.c) % vec3<u32>(32u)), !vec3<bool>(false, var_2.e.x, false))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(16132u, var_2.c, 4294967295u, var_2.c) ^ vec4<u32>(var_2.c, u_input.e, var_2.c, var_2.c)), ~(~vec4<u32>(u_input.d.x, 26968u, var_2.c, 4294967295u))), vec4<u32>(u_input.d.x, abs(_wgslsmith_sub_u32(var_2.c, 4294967295u)), var_2.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, 30953u, var_2.c, u_input.c), vec4<u32>(5484u, 49391u, 0u, 12802u)))), Struct_3(_wgslsmith_f_op_f32(-var_2.d.x)));
    return var_3.d.x << (~_wgslsmith_mult_u32(4237u, max(1u, 1u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(((all(vec2<bool>(true, false)) | true) | true) && (!any(vec3<bool>(true, true, true)) & true));
    global0 = array<vec3<f32>, 14>();
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, ~u_input.e), _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(1u), func_1()), u_input.d));
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(106f, -1926f, 855f, 799f), vec4<f32>(940f, -495f, -590f, -198f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-599f, 1304f, 669f, -616f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, 505f, -990f, -637f)))), abs(~(~vec2<i32>(1i, u_input.a.x))), u_input.d.x, _wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c) ^ _wgslsmith_clamp_u32(u_input.e, 0u, 36067u), 14u)], _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x ^ 7713u, 14u)])))), select(select(!vec2<bool>(false, var_0), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), vec2<bool>(true, var_0)), select(!vec2<bool>(var_0, var_0), select(vec2<bool>(true, var_0), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, var_0)), vec2<bool>(var_0, true))), global0[_wgslsmith_index_u32(9040u, 14u)], func_2(!(!select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, true, var_0, var_0), false)), vec3<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, u_input.d.x), u_input.d.x, 38890u)), Struct_2(vec3<f32>(-140f, _wgslsmith_div_f32(383f, _wgslsmith_f_op_f32(-514f - 1515f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1902f)))))).a;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1429f, -228f, _wgslsmith_f_op_f32(-var_2), -535f), vec4<f32>(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(select(-823f, -869f, false)), _wgslsmith_f_op_f32(1157f + -559f), -696f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, var_2, 955f, 1671f))))), u_input.a >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1757u, u_input.d.x), reverseBits(~vec2<u32>(57684u, 0u))) % vec2<u32>(32u)), reverseBits(21176u), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-271f)), 130f)), _wgslsmith_f_op_f32(step(570f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 + var_2), -733f)))), var_2), !vec2<bool>(false, any(vec4<bool>(true, var_0, var_0, false))));
    let var_4 = !var_0;
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(var_3.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(349f)), -555f, _wgslsmith_f_op_f32(var_2 - 1420f), _wgslsmith_f_op_f32(-var_3.d.x)), var_3.a, vec4<bool>(all(vec4<bool>(var_4, var_4, var_0, true)), !var_4, true, var_4 && var_3.e.x)))), var_2, var_3.a.x, u_input.a, u_input.d.x);
}

