struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(round(1568f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - -126f))))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.a) + global0.a) + _wgslsmith_f_op_f32(f32(-1f) * -724f))));
    global0 = Struct_2(_wgslsmith_div_f32(-142f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * 1238f)) - 1397f)));
    let var_0 = Struct_4(514f, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = vec2<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x >> (1u % 32u), 29350i)) | u_input.a.zy;
    return max(9736u, ~abs(34719u));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(func_3(), 1u));
    var var_1 = -1488f;
    global0 = Struct_2(_wgslsmith_f_op_f32(exp2(global0.a)));
    let var_2 = countOneBits(~(~(~vec4<u32>(40119u, 1u, 40134u, 29931u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-287f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.a))))));
    return _wgslsmith_f_op_f32(min(global0.a, -746f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = any(select(vec3<bool>(arg_2 >= abs(arg_2), all(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false)) || true)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-arg_1.a))), -169f)));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    global0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1321f)) * _wgslsmith_f_op_f32(min(776f, global0.a))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, -1070f)))))));
    global0 = Struct_2(_wgslsmith_f_op_f32(step(1596f, arg_2.a)));
    var var_0 = 1u;
    var_0 = arg_0;
    let var_1 = true && any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(true, -4781i >= u_input.a.x, any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true)));
    return Struct_3(vec2<i32>(firstTrailingBit(3435i), -2147483647i) << (vec2<u32>(countOneBits(41922u), func_3()) % vec2<u32>(32u)), arg_2, arg_2, Struct_1(_wgslsmith_f_op_f32(arg_2.a + arg_1)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) - arg_1)));
}

fn func_1() -> f32 {
    global0 = Struct_2(-474f);
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) * global0.a) - _wgslsmith_f_op_f32(810f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)))));
    var var_0 = func_5(1u, 106f, func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(sign(-497f)), all(vec4<bool>(false, true, false, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -612f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a)))), ~(~(~17540i))));
    let var_1 = true;
    var_0 = func_5(1u, -1000f, var_0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_5(~38701u, 739f, Struct_1(var_0.d.a)).b.a)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_3(firstTrailingBit(firstTrailingBit(arg_2)), func_5(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(37341u, 70753u, 14089u) & 1u), arg_1.x, func_4(vec3<f32>(_wgslsmith_f_op_f32(floor(-310f)), _wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), Struct_2(_wgslsmith_f_op_f32(trunc(arg_1.x))), -15660i)).e, func_5(~(~48531u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-745f))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.wxz - arg_1.wxy) * arg_1.zwz), arg_0, -2147483647i)).c, Struct_1(-1005f), func_5(8474u, _wgslsmith_f_op_f32(func_2()), func_5(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 72086u, 4294967295u)), vec3<u32>(62776u, 13430u, 53080u)), _wgslsmith_f_op_f32(select(1242f, arg_1.x, false)), Struct_1(_wgslsmith_f_op_f32(select(537f, 999f, false)))).b).b);
    global0 = arg_0;
    global0 = arg_0;
    let var_1 = -firstTrailingBit(vec4<i32>(~var_0.a.x, _wgslsmith_div_i32(u_input.a.x & var_0.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), -(u_input.a.x << (0u % 32u)), _wgslsmith_sub_i32(var_0.a.x, -7218i)));
    return Struct_2(-1401f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_2(1052f), vec4<f32>(_wgslsmith_f_op_f32(func_1()), -1870f, _wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(-811f - global0.a)), ~vec2<i32>(5905i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(443f, -285f))));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -666f))) + global0.a));
    global0 = func_6(Struct_2(_wgslsmith_f_op_f32(sign(global0.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(647f + global0.a))), 1109f, global0.a, -626f), u_input.a.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 1124f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1067f, global0.a))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(985f, 648f)))))));
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(func_1()), true)))) != _wgslsmith_f_op_f32(751f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-191f)) - -1000f)));
    let var_1 = select(select(select(vec2<bool>(true, true), !select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), var_0), select(!vec2<bool>(var_0, var_0), vec2<bool>(true, false), select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), vec2<bool>(false, var_0)), vec2<bool>(false, var_0), !vec2<bool>(var_0, var_0)), select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, true)), select(vec2<bool>(false, var_0), vec2<bool>(true, false), var_0), true)), (u_input.a.x ^ abs(u_input.a.x)) > -25837i), select(select(select(vec2<bool>(var_0, var_0), select(vec2<bool>(false, false), vec2<bool>(var_0, false), var_0), select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), vec2<bool>(true, var_0))), vec2<bool>(true, true), any(select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, false, true, true), false))), vec2<bool>(any(!vec2<bool>(var_0, var_0)), true), vec2<bool>(false, !(u_input.a.x > -57039i))), true);
    global0 = func_6(Struct_2(-839f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1680f, global0.a, -1361f, -808f), vec4<f32>(678f, -1236f, global0.a, 776f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-930f, global0.a, global0.a, 617f), vec4<f32>(global0.a, global0.a, -1000f, -140f), vec4<bool>(false, var_0, true, var_1.x))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, global0.a, global0.a, global0.a), vec4<f32>(global0.a, 2014f, global0.a, -2707f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a), 1698f, global0.a, global0.a)), var_1.x)), ~u_input.a.xz, vec2<f32>(_wgslsmith_f_op_f32(-global0.a), 1925f));
    var var_2 = select(select(select(select(select(vec3<bool>(true, var_0, var_1.x), vec3<bool>(false, false, true), var_1.x), vec3<bool>(var_0, false, var_1.x), var_1.x), !select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, true), var_1.x), !any(vec3<bool>(var_1.x, var_0, var_1.x))), !select(!vec3<bool>(var_1.x, var_0, var_0), select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_0, var_1.x, var_1.x), vec3<bool>(false, var_0, var_0)), var_1.x), !select(vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, false))), select(vec3<bool>(var_0, !all(vec2<bool>(var_0, var_1.x)), !var_0), vec3<bool>(any(!vec4<bool>(false, true, var_1.x, false)), all(!var_1), all(var_1) & true), select(vec3<bool>(all(vec4<bool>(false, false, var_1.x, false)), all(vec4<bool>(false, true, true, true)), select(var_0, var_0, var_1.x)), select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), !vec3<bool>(var_0, var_1.x, true))), !any(vec3<bool>(!var_1.x, true, any(vec3<bool>(false, var_0, var_0)))));
    let var_3 = _wgslsmith_f_op_f32(1593f - global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(69694u, 1u, 44730u, 3436u)), vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(26672u, 0u)), 20495u, ~39729u))), var_3, ~max(1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(5860u, 62024u), vec2<u32>(8149u, 8974u)) % 32u), abs(60424u)), _wgslsmith_add_vec2_i32(u_input.a.xz, ~(~u_input.a.yz) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~min(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4159u, 69374u)), ~vec2<u32>(0u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(70819u, 27650u), ~vec2<u32>(4294967295u, 4294967295u))));
}

