struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<i32>(21252i, -44215i, 15732i, 1449i), vec4<bool>(false, true, true, true), vec2<f32>(677f, 1694f), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(-1i, -1i, -15895i, 0i), vec4<bool>(false, true, true, false), vec2<f32>(981f, -1075f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 0i), vec4<bool>(true, true, true, false), vec2<f32>(174f, -845f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-1i, 0i, 25956i, 1i), vec4<bool>(false, false, false, true), vec2<f32>(-2325f, -1390f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-33048i, 1i, -1i, -1i), vec4<bool>(false, false, false, true), vec2<f32>(-374f, 1046f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-40264i, -28808i, 2147483647i, 1i), vec4<bool>(false, false, true, true), vec2<f32>(317f, 245f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(0i, 31361i, -56270i, -12248i), vec4<bool>(true, true, true, false), vec2<f32>(2138f, 102f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-46481i, i32(-2147483648), 0i, -21280i), vec4<bool>(false, false, true, false), vec2<f32>(120f, 917f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(26901i, 9787i, i32(-2147483648), 2147483647i), vec4<bool>(true, false, true, false), vec2<f32>(2402f, 622f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(2147483647i, -77083i, 2147483647i, 0i), vec4<bool>(false, true, true, false), vec2<f32>(2796f, -631f), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(2147483647i, -20304i, -13068i, 26389i), vec4<bool>(true, true, true, false), vec2<f32>(-526f, -3151f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-15801i, -1i, i32(-2147483648), 36911i), vec4<bool>(false, true, true, false), vec2<f32>(599f, 1544f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(24631i, i32(-2147483648), 1i, -1i), vec4<bool>(false, false, false, false), vec2<f32>(270f, 539f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(51398i, 2147483647i, 0i, -22686i), vec4<bool>(true, true, false, false), vec2<f32>(-525f, -1337f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-3391i, i32(-2147483648), 53409i, -55574i), vec4<bool>(true, true, true, true), vec2<f32>(277f, 2193f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-1i, 1i, 0i, 2147483647i), vec4<bool>(true, true, true, true), vec2<f32>(-1175f, 162f), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-25524i, 0i, 1i, 0i), vec4<bool>(true, true, true, true), vec2<f32>(457f, -362f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-40922i, 75611i, -54136i, i32(-2147483648)), vec4<bool>(false, true, false, true), vec2<f32>(125f, 1235f), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-623i, -53451i, 23445i, i32(-2147483648)), vec4<bool>(true, true, false, true), vec2<f32>(1143f, 1458f), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(39205i, -22591i, 26247i, 30170i), vec4<bool>(false, false, false, true), vec2<f32>(326f, 820f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(1i, 0i, -35361i, -1i), vec4<bool>(false, true, true, true), vec2<f32>(1001f, 600f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-11131i, 4067i, i32(-2147483648), 2147483647i), vec4<bool>(true, false, true, true), vec2<f32>(732f, -391f), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(17056i, 0i, -1i, 2147483647i), vec4<bool>(false, false, true, false), vec2<f32>(1621f, -308f), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(-1i, -1i, 1i, 1i), vec4<bool>(true, true, false, true), vec2<f32>(267f, -772f), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(18659i, 0i, 47507i, 2147483647i), vec4<bool>(true, false, true, true), vec2<f32>(-887f, 1715f), vec3<bool>(false, false, false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = 46670u;
    let var_1 = _wgslsmith_add_u32(firstLeadingBit(u_input.c) | ~abs(~0u), 4294967295u << (arg_0 % 32u));
    var var_2 = arg_3.c.x;
    var var_3 = arg_3;
    var var_4 = global0[_wgslsmith_index_u32(19789u, 25u)];
    return u_input.e;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_0 = arg_2;
    var var_1 = Struct_1(max(reverseBits(firstTrailingBit(arg_2.a | var_0.a)), -func_3(~u_input.c, vec4<u32>(89309u, u_input.c, u_input.c, 1u), vec2<u32>(20104u, 0u), arg_2)), select(vec4<bool>(true, false, arg_0.x, all(vec3<bool>(arg_2.b.x, arg_1, var_0.b.x))), select(vec4<bool>(arg_0.x, all(vec2<bool>(var_0.b.x, false)), all(vec3<bool>(arg_1, arg_0.x, false)), select(false, arg_0.x, true)), select(!var_0.b, select(arg_2.b, var_0.b, arg_1), var_0.b), any(vec4<bool>(true, var_0.b.x, arg_2.b.x, false))), !(!(!vec4<bool>(false, true, arg_1, true)))), vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - 604f), _wgslsmith_f_op_f32(trunc(-1233f))), select(var_0.b.wxz, select(!vec3<bool>(false, true, arg_0.x), arg_2.b.yzx, false), var_0.a.x >= _wgslsmith_sub_i32(-2147483647i, -19097i >> (u_input.c % 32u))));
    var var_2 = _wgslsmith_f_op_f32(-554f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1564f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), -1000f));
    return var_0.b;
}

fn func_1() -> Struct_1 {
    let var_0 = !(!vec3<bool>(u_input.c < 0u, true & select(false, true, true), all(func_2(vec3<bool>(true, true, false), true, global0[_wgslsmith_index_u32(u_input.c, 25u)]))));
    global0 = array<Struct_1, 25>();
    var var_1 = vec2<bool>(false, var_0.x);
    let var_2 = Struct_1(vec4<i32>(i32(-1i) * -2147483647i, 59914i, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.e.x, -u_input.e.x), max(_wgslsmith_mod_i32(-2147483647i, u_input.a), u_input.b ^ 25970i)), -1i), vec4<bool>(all(select(var_0, vec3<bool>(false, false, false), vec3<bool>(var_1.x, var_1.x, false))) | (-482f >= _wgslsmith_f_op_f32(select(-115f, 204f, false))), any(!vec3<bool>(false, var_0.x, false)), !var_0.x, !(!var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1710f, 1618f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2849f, 1477f) - vec2<f32>(104f, 1098f)))) - vec2<f32>(-381f, -1571f)), !select(var_0, var_0, var_0.x));
    var var_3 = (~(-firstLeadingBit(var_2.a.x)) >> (u_input.c % 32u)) & 87323i;
    return Struct_1(vec4<i32>(var_2.a.x, 1363i, var_2.a.x, -1i), select(var_2.b, var_2.b, func_2(vec3<bool>(var_0.x | var_1.x, true, true), true, var_2).x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1085f, var_2.c.x)))), var_2.c), !func_2(vec3<bool>(var_2.b.x, var_1.x | true, all(vec3<bool>(var_1.x, var_2.d.x, false))), false, var_2).wyx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_0 = func_1();
    var var_1 = abs(vec4<u32>(u_input.c, _wgslsmith_clamp_u32(abs(10653u), 1u, u_input.c), _wgslsmith_sub_u32(62778u >> (u_input.c % 32u), max(36844u, 4294967295u)), u_input.c) << (~(~countOneBits(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c))) % vec4<u32>(32u)));
    let var_2 = Struct_1(min(select(var_0.a, abs(u_input.e << (vec4<u32>(4294967295u, 0u, 0u, var_1.x) % vec4<u32>(32u))), true), firstLeadingBit(~(-var_0.a))), !vec4<bool>(!any(vec2<bool>(var_0.d.x, var_0.d.x)), var_0.d.x, !func_2(vec3<bool>(var_0.d.x, var_0.b.x, false), var_0.b.x, var_0).x, true), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x), var_0.b.wyz);
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_sub_u32(u_input.c, ~var_1.x), var_1.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(1u, u_input.c, 4294967295u)), var_1.x, 34252u), -var_2.a.yw, 4294967295u);
}

