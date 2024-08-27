struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(10945u, 0u, 86602u);

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec4<i32>(2147483647i, -8278i, -18993i, -35184i), Struct_2(Struct_1(30395u, -1i), vec2<u32>(4294967295u, 41989u), -1000f, vec4<u32>(58631u, 753u, 65494u, 0u)), 1u), Struct_3(vec4<i32>(1i, -1i, 22695i, -1i), Struct_2(Struct_1(42243u, 0i), vec2<u32>(2089u, 52890u), -139f, vec4<u32>(0u, 0u, 4294967295u, 29935u)), 4294967295u), Struct_3(vec4<i32>(-53534i, 1609i, -1i, 2147483647i), Struct_2(Struct_1(1u, 0i), vec2<u32>(4778u, 4294967295u), 655f, vec4<u32>(37192u, 4294967295u, 23282u, 1u)), 43457u), Struct_3(vec4<i32>(63747i, 2147483647i, 1i, 17996i), Struct_2(Struct_1(4294967295u, 16681i), vec2<u32>(4294967295u, 0u), 962f, vec4<u32>(1u, 63003u, 0u, 33941u)), 61463u), Struct_3(vec4<i32>(2147483647i, 15996i, 27791i, -20494i), Struct_2(Struct_1(19950u, 13374i), vec2<u32>(4294967295u, 61068u), 184f, vec4<u32>(1u, 55768u, 1u, 22558u)), 4294967295u), Struct_3(vec4<i32>(-1i, -1i, i32(-2147483648), -51724i), Struct_2(Struct_1(12022u, -5415i), vec2<u32>(1u, 4294967295u), 1000f, vec4<u32>(31251u, 63735u, 4294967295u, 59638u)), 4294967295u), Struct_3(vec4<i32>(-20854i, -1i, i32(-2147483648), 2147483647i), Struct_2(Struct_1(4294967295u, i32(-2147483648)), vec2<u32>(1u, 4294967295u), -394f, vec4<u32>(28357u, 4294967295u, 0u, 24908u)), 48573u), Struct_3(vec4<i32>(i32(-2147483648), 4745i, 1i, 2147483647i), Struct_2(Struct_1(31661u, -1i), vec2<u32>(4294967295u, 5764u), 590f, vec4<u32>(10601u, 1u, 0u, 1u)), 88633u), Struct_3(vec4<i32>(9598i, -20805i, 37580i, i32(-2147483648)), Struct_2(Struct_1(35508u, 2147483647i), vec2<u32>(0u, 25992u), -1000f, vec4<u32>(53618u, 36355u, 1u, 0u)), 75532u), Struct_3(vec4<i32>(1i, 791i, 22770i, 1i), Struct_2(Struct_1(40278u, 2147483647i), vec2<u32>(4906u, 11219u), -733f, vec4<u32>(1u, 22378u, 1u, 83770u)), 4294967295u), Struct_3(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 3798i), Struct_2(Struct_1(50376u, 31332i), vec2<u32>(0u, 7247u), 235f, vec4<u32>(1633u, 23205u, 24820u, 4294967295u)), 4294967295u), Struct_3(vec4<i32>(0i, 0i, -26579i, 2147483647i), Struct_2(Struct_1(0u, 2147483647i), vec2<u32>(4294967295u, 4294967295u), -1354f, vec4<u32>(4294967295u, 69936u, 0u, 46150u)), 4294967295u), Struct_3(vec4<i32>(45496i, 0i, 2147483647i, 3185i), Struct_2(Struct_1(0u, -1i), vec2<u32>(46187u, 0u), -483f, vec4<u32>(4294967295u, 4294967295u, 0u, 6073u)), 0u), Struct_3(vec4<i32>(-1i, -11330i, -1i, 1i), Struct_2(Struct_1(20146u, 2147483647i), vec2<u32>(18924u, 4294967295u), 1125f, vec4<u32>(4294967295u, 75920u, 0u, 14719u)), 23981u), Struct_3(vec4<i32>(-5795i, -27820i, i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(4294967295u, 8750i), vec2<u32>(4294967295u, 3759u), 1000f, vec4<u32>(4294967295u, 4294967295u, 0u, 41104u)), 37693u), Struct_3(vec4<i32>(-1i, -4752i, 10423i, 0i), Struct_2(Struct_1(65177u, i32(-2147483648)), vec2<u32>(8164u, 1u), -1264f, vec4<u32>(9519u, 1u, 1u, 72658u)), 75725u), Struct_3(vec4<i32>(1i, -40072i, 1823i, 12800i), Struct_2(Struct_1(0u, -27703i), vec2<u32>(6452u, 4294967295u), -529f, vec4<u32>(12822u, 25171u, 61490u, 10331u)), 19113u), Struct_3(vec4<i32>(0i, -11780i, 2147483647i, 11716i), Struct_2(Struct_1(0u, 2147483647i), vec2<u32>(49083u, 4294967295u), 339f, vec4<u32>(1u, 7166u, 18596u, 4294967295u)), 0u), Struct_3(vec4<i32>(-1i, -54300i, 0i, -19803i), Struct_2(Struct_1(0u, 2147483647i), vec2<u32>(0u, 4294967295u), -966f, vec4<u32>(1u, 0u, 37143u, 4294967295u)), 21468u), Struct_3(vec4<i32>(-1946i, -1i, 0i, -81726i), Struct_2(Struct_1(3874u, 8689i), vec2<u32>(1u, 0u), 1607f, vec4<u32>(97309u, 37257u, 4294967295u, 4294967295u)), 1u), Struct_3(vec4<i32>(2147483647i, 299i, 1i, 1i), Struct_2(Struct_1(1u, i32(-2147483648)), vec2<u32>(0u, 41341u), -792f, vec4<u32>(1u, 2177u, 57484u, 0u)), 10866u), Struct_3(vec4<i32>(i32(-2147483648), 1i, -22455i, 19322i), Struct_2(Struct_1(10954u, -15023i), vec2<u32>(19276u, 32638u), 844f, vec4<u32>(1u, 13773u, 12822u, 0u)), 0u), Struct_3(vec4<i32>(36507i, -24718i, 0i, -1i), Struct_2(Struct_1(25362u, -1i), vec2<u32>(1u, 69411u), 768f, vec4<u32>(1u, 34002u, 70147u, 1u)), 4294967295u));

var<private> global3: vec3<u32>;

var<private> global4: u32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> u32 {
    global3 = vec3<u32>(global0.x, ~arg_1.c, ~firstTrailingBit(1u));
    let var_0 = (vec4<i32>(abs(u_input.b >> (4294967295u % 32u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0, arg_2, arg_0), u_input.e.x), u_input.e.x >> (_wgslsmith_clamp_u32(global0.x, 4294967295u, 4294967295u) % 32u), -2147483647i) & select(vec4<i32>(i32(-1i) * -2147483647i, -2147483647i, _wgslsmith_div_i32(arg_0, 27094i), -29415i), arg_1.a, vec4<bool>(arg_0 <= arg_2, false, true, true))) | firstTrailingBit(~(~(-vec4<i32>(arg_2, arg_0, 44040i, arg_1.b.a.b))));
    global0 = arg_1.b.d.zzy;
    var var_1 = Struct_1(_wgslsmith_add_u32(global3.x, _wgslsmith_mult_u32(arg_1.b.a.a, 24310u)), -(~(13060i & arg_1.a.x)));
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(u_input.b, ~(firstTrailingBit(-2147483647i) | _wgslsmith_mult_i32(-51578i, arg_0)), ~(arg_0 ^ 0i) | _wgslsmith_dot_vec2_i32(-var_0.xz, vec2<i32>(arg_0, 1i))), 14468i, -7651i, i32(-1i) * -var_0.x);
    return arg_1.c;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = Struct_1(~(~reverseBits(~global3.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.e.xz, max(u_input.e.yy, u_input.e.yz) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_add_i32(u_input.b | 2147483647i, 36733i), 57922i)));
    var var_1 = arg_0;
    return _wgslsmith_sub_u32(u_input.c, func_3(-(firstLeadingBit(-2147483647i) << (u_input.a % 32u)), Struct_3(firstLeadingBit(vec4<i32>(-58132i, arg_1, var_0.b, arg_0.a.b)), Struct_2(Struct_1(u_input.c, var_0.b), ~vec2<u32>(arg_0.a.a, arg_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -537f), vec4<u32>(global0.x, 1u, 14375u, var_0.a)), abs(24586u)), var_0.b));
}

fn func_1(arg_0: u32) -> u32 {
    global4 = 1u;
    global4 = ~_wgslsmith_dot_vec3_u32(~(_wgslsmith_add_vec3_u32(vec3<u32>(41109u, global3.x, 13367u), vec3<u32>(0u, 4294967295u, global0.x)) << (_wgslsmith_add_vec3_u32(vec3<u32>(global3.x, 0u, global3.x), vec3<u32>(arg_0, 77616u, global3.x)) % vec3<u32>(32u))), vec3<u32>(~0u, func_2(Struct_2(Struct_1(global3.x, u_input.e.x), vec2<u32>(u_input.a, u_input.c), -1041f, vec4<u32>(global3.x, arg_0, arg_0, arg_0)), u_input.b) << (reverseBits(arg_0) % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(45347u, global3.x)), vec2<u32>(global0.x, 0u) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-256f, 764f), vec2<f32>(global1.x, 669f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, 1000f), vec2<f32>(371f, -1141f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(120f, 1172f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, 1223f)))))));
    var var_0 = (arg_0 << (global0.x % 32u)) & _wgslsmith_sub_u32(0u, ~global3.x);
    var var_1 = (false && !(arg_0 < 8925u)) && (global0.x >= 515u);
    return ~(~13127u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = vec2<u32>(global3.x, countOneBits(7796u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x + -1258f)))), global1.x, -468f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434f + -1376f)))));
    let var_3 = vec2<u32>(func_1(var_1.x), u_input.d.x);
    global1 = var_2.wy;
    let var_4 = global1.x;
    let var_5 = _wgslsmith_f_op_vec4_f32(floor(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(-u_input.e.x, u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 8401i, -2147483647i, -1i), vec4<i32>(1i, -1i, -1i, 16917i)), 2147483647i)), vec3<i32>(_wgslsmith_add_i32(-1i, u_input.e.x), ~(-reverseBits(u_input.b)), -48467i));
}

