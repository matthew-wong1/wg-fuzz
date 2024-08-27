struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global1 = Struct_1(u_input.a.x);
    return 10707i;
}

fn func_2(arg_0: Struct_3) -> bool {
    global0 = array<vec2<u32>, 19>();
    global0 = array<vec2<u32>, 19>();
    let var_0 = Struct_3(Struct_2(Struct_1(~(i32(-1i) * -1i)), _wgslsmith_f_op_f32(1014f * _wgslsmith_f_op_f32(-arg_0.a.b))), _wgslsmith_sub_vec2_i32((arg_0.b >> (vec2<u32>(59581u, 0u) % vec2<u32>(32u))) ^ (vec2<i32>(19365i, 2147483647i) ^ vec2<i32>(global1.a, 42615i)), u_input.a.zz) ^ vec2<i32>(-53483i, ~_wgslsmith_add_i32(24716i, u_input.a.x)));
    global1 = Struct_1(max(-_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.a, -2147483647i, u_input.a.x, arg_0.a.a.a), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, arg_0.b.x), u_input.a)), -(~func_3(arg_0))));
    global0 = array<vec2<u32>, 19>();
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_3 {
    global1 = Struct_1(firstTrailingBit(_wgslsmith_div_i32(reverseBits(_wgslsmith_sub_i32(-14123i, -1i)), -1i)));
    let var_0 = !arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(905f))));
    var var_2 = _wgslsmith_mult_u32(69361u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), select(global0[_wgslsmith_index_u32(23169u, 19u)], _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 60770u), global0[_wgslsmith_index_u32(4294967295u, 19u)], vec2<u32>(15426u, 15182u)), var_0.x | true))) >> (firstTrailingBit(select(firstTrailingBit(14380u), ~4294967295u, true)) % 32u);
    var_2 = 9830u;
    return Struct_3(Struct_2(Struct_1(i32(-1i) * -global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))) * arg_1.x)), _wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.a.wz ^ select(u_input.a.zz, _wgslsmith_add_vec2_i32(vec2<i32>(1i, global1.a), u_input.a.yz), var_0.zz)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    let var_0 = all(vec3<bool>(true, arg_2.x || (arg_3 <= ~41189i), !all(vec3<bool>(true, false, true))));
    var var_1 = !vec3<bool>(all(select(!vec3<bool>(var_0, true, false), vec3<bool>(false, arg_2.x, var_0), !vec3<bool>(true, arg_2.x, true))), any(!vec3<bool>(arg_2.x, arg_2.x, false)), !all(select(vec2<bool>(false, arg_2.x), arg_2, false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1525f, 448f, arg_0.a.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(763f, 363f, -207f) + vec3<f32>(-1085f, 1160f, arg_0.a.b)) - vec3<f32>(arg_0.a.b, -599f, 2748f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_1.b, _wgslsmith_f_op_f32(min(385f, -2002f))))));
    global1 = arg_1.a;
    global0 = array<vec2<u32>, 19>();
    return func_4(select(vec3<bool>(_wgslsmith_f_op_f32(arg_1.b - arg_0.a.b) >= _wgslsmith_f_op_f32(abs(137f)), _wgslsmith_div_f32(var_2.x, 387f) >= _wgslsmith_f_op_f32(f32(-1f) * -1406f), true), !vec3<bool>(true, true, all(vec2<bool>(false, var_1.x))), arg_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-300f, 2956f, var_2.x, var_2.x) * vec4<f32>(1153f, arg_1.b, -334f, 401f)))) + vec4<f32>(-187f, 1065f, arg_1.b, arg_1.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(604f, 268f, 1157f, var_2.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1368f, -1118f, 1000f, var_2.x) * vec4<f32>(-1924f, 1405f, 1000f, var_2.x)) * vec4<f32>(arg_1.b, arg_1.b, arg_0.a.b, 1432f))))).a;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(arg_0, u_input.a.xz);
    global0 = array<vec2<u32>, 19>();
    var_0 = func_4(select(vec3<bool>(true, true, all(vec3<bool>(true, true, true))), vec3<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true)), true || all(vec4<bool>(true, true, false, true)), false), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(765f, 1887f, var_0.a.b, arg_0.b) * vec4<f32>(var_0.a.b, var_0.a.b, var_0.a.b, var_0.a.b))))));
    var var_1 = Struct_1(abs(global1.a));
    var_0 = func_4(vec3<bool>(true, true, func_2(Struct_3(arg_0, max(vec2<i32>(-3088i, -1i), vec2<i32>(var_1.a, -2147483647i))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, -1001f, arg_0.b)) * vec4<f32>(-916f, -1149f, arg_0.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(427f, arg_0.b, arg_0.b, -475f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -1804f, arg_0.b, var_0.a.b) + vec4<f32>(-655f, arg_0.b, var_0.a.b, arg_0.b)), true)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, var_0.a.b, var_0.a.b, -828f) + vec4<f32>(320f, 411f, arg_0.b, -654f)))))));
    return arg_0.a;
}

fn func_1() -> Struct_3 {
    global1 = func_6(func_5(func_4(vec3<bool>(select(false, false, true), func_2(Struct_3(Struct_2(Struct_1(-2147483647i), -755f), vec2<i32>(-9642i, -1i))), func_2(Struct_3(Struct_2(Struct_1(14987i), -1169f), vec2<i32>(u_input.a.x, -31261i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1457f, -385f, -1082f, -433f))))), func_4(vec3<bool>(any(vec4<bool>(false, true, true, false)), true, all(vec3<bool>(false, false, true))), vec4<f32>(-1785f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(206f + 181f), _wgslsmith_f_op_f32(-499f * -238f))).a, select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), false), true), -2147483647i));
    let var_0 = func_5(Struct_3(Struct_2(Struct_1(0i), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(754f, -645f)))), u_input.a.wz), Struct_2(func_5(func_4(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-636f, -756f, 856f, 682f), vec4<f32>(1000f, -544f, 1979f, 292f)))), Struct_2(func_5(Struct_3(Struct_2(Struct_1(-40482i), 155f), u_input.a.zz), Struct_2(Struct_1(u_input.a.x), -1075f), vec2<bool>(true, true), 2147483647i).a, _wgslsmith_f_op_f32(floor(625f))), vec2<bool>(true, false), global1.a).a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(721f - 374f), -208f))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), global1.a >= -39i), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), func_2(Struct_3(Struct_2(Struct_1(u_input.a.x), 412f), vec2<i32>(u_input.a.x, 28296i))))), global1.a);
    var var_1 = u_input.a.zw;
    global1 = func_4(!select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), true), vec4<f32>(var_0.b, _wgslsmith_f_op_f32(round(var_0.b)), var_0.b, -132f)).a.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b, func_4(vec3<bool>(true, true, true), vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b)).a.b, 888f))));
    return Struct_3(func_4(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(233f, var_2.x, var_0.b, var_0.b), vec4<f32>(1839f, var_0.b, var_2.x, var_2.x))), vec4<f32>(-420f, var_2.x, -188f, var_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-329f, 1000f, var_0.b, var_0.b) - vec4<f32>(-2156f, var_2.x, 632f, var_0.b))))).a, firstTrailingBit(u_input.a.yw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(vec4<bool>(func_2(var_0) || false, !(var_0.a.b >= var_0.a.b), true, var_0.a.b >= func_1().a.b), !select(vec4<bool>(false, true, all(vec3<bool>(true, true, false)), false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, true, true), true), true), !select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), true), true));
    var var_2 = -420f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(961f, 205f, var_0.a.b, -1522f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.b, 900f, var_0.a.b, 1024f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, 1000f, -815f, var_0.a.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, var_0.a.b, var_0.a.b, var_0.a.b) - vec4<f32>(var_0.a.b, 541f, var_0.a.b, var_0.a.b))))));
    let var_4 = ~_wgslsmith_mult_u32(18905u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(19866u, 70951u, 1u), vec3<u32>(1u, 23815u, 44786u)), _wgslsmith_clamp_u32(3580u, 30301u, 0u), ~60549u), select(~vec4<u32>(0u, 46030u, 0u, 4294967295u), select(vec4<u32>(1u, 24623u, 0u, 26749u), vec4<u32>(0u, 1u, 1u, 1u), var_1), false | var_1.x)));
    var var_5 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_4, var_4, 75333u, 2947u), ~(~vec4<u32>(var_4, 23665u, 69822u, 1u))), firstTrailingBit(1u)), ~global0[_wgslsmith_index_u32(firstTrailingBit(~var_4 & var_4), 19u)]);
    var var_6 = ~_wgslsmith_add_vec4_u32(firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(82115u, 0u, 4294967295u, 4294967295u), vec4<u32>(110066u, var_4, 22469u, var_4)))), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(var_5.x, var_5.x, var_5.x, 60625u), ~vec4<u32>(4294967295u, 0u, 63715u, 100485u), !var_1), ~vec4<u32>(19291u, 4294967295u, var_5.x, var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(select(0i, u_input.a.x, false), var_0.a.a.a), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(-32733i, global1.a)), ~vec2<i32>(global1.a, 3572i)), all(var_1.yww)) & _wgslsmith_mod_vec2_i32(var_0.b, ~select(var_0.b, var_0.b, false)), reverseBits(u_input.a.xzz), ~(-79633i), ~firstTrailingBit(vec3<i32>(31419i, u_input.a.x, u_input.a.x) | vec3<i32>(1i, 0i, u_input.a.x)) | vec3<i32>(1i >> (~var_4 % 32u), -1i, _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(0i, 4454i, var_0.a.a.a))), ~0u);
}

