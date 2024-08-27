struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2063f - -783f), -1553f, true)) * _wgslsmith_f_op_f32(-904f - _wgslsmith_f_op_f32(f32(-1f) * -538f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1267f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(abs(-1276f))))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> vec3<f32> {
    let var_0 = 0u;
    let var_1 = true;
    var var_2 = arg_0;
    return arg_1.a.b.c.zxy;
}

fn func_4(arg_0: Struct_1) -> Struct_5 {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-select(vec3<i32>(-11034i, u_input.e, u_input.e), -vec3<i32>(39580i, -14972i, u_input.e), !arg_0.a.x), -(abs(vec3<i32>(1i, u_input.b, -20809i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.e, -26358i), vec3<i32>(62755i, 24466i, u_input.e)))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(~u_input.e, -u_input.e), 1i, 0i), vec3<i32>(u_input.b, 58615i, 0i << (~arg_0.d.x % 32u))));
    let var_1 = -164f;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, arg_0.e.x, arg_0.b)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-227f, arg_0.c.x))))), Struct_3(Struct_2(vec4<u32>(33859u, 0u, 0u, 0u), arg_0), Struct_1(select(arg_0.a, arg_0.a, true), all(arg_0.a.zw), _wgslsmith_f_op_vec4_f32(arg_0.c - arg_0.c), vec4<u32>(arg_0.d.x, arg_0.d.x, u_input.a, u_input.d), _wgslsmith_div_vec3_f32(vec3<f32>(1089f, -403f, -489f), arg_0.e)), arg_0.d.wy), _wgslsmith_dot_vec2_i32(vec2<i32>(1748i, ~49578i), ~(~var_0.xx)))), _wgslsmith_f_op_vec3_f32(step(arg_0.e, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(arg_0.e)))))))));
    var var_3 = min(~abs(arg_0.d.zxx), ~_wgslsmith_mod_vec3_u32(vec3<u32>(min(29129u, 53709u), 21735u, u_input.a ^ u_input.d), firstLeadingBit(_wgslsmith_sub_vec3_u32(arg_0.d.zxz, arg_0.d.yxy))));
    var_2 = arg_0.e;
    return Struct_5(var_2.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = 18551i;
    let var_1 = func_4(Struct_1(vec4<bool>(true, true, true, true), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-211f, 296f, -688f, -1000f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-406f, -588f, 927f, -767f)))) * vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -360f), -1948f, _wgslsmith_f_op_f32(949f * -1704f))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.d, 0u)), ~(~vec4<u32>(51370u, 1108u, 1u, 1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(-469f, Struct_3(Struct_2(vec4<u32>(0u, 636u, u_input.d, 17375u), Struct_1(vec4<bool>(false, false, false, false), true, vec4<f32>(-151f, 130f, -1000f, 1090f), vec4<u32>(62196u, 35985u, u_input.c, u_input.c), vec3<f32>(-254f, 131f, -1708f))), Struct_1(vec4<bool>(false, false, false, false), true, vec4<f32>(228f, -950f, 340f, -922f), vec4<u32>(10268u, u_input.d, u_input.c, 1u), vec3<f32>(-349f, 1264f, -520f)), vec2<u32>(u_input.a, 53504u)), 2147483647i)) * vec3<f32>(207f, -529f, -557f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(983f, -1466f, 372f))))));
    var_0 = (reverseBits(_wgslsmith_mod_i32(-1391i, u_input.e)) | u_input.b) & -arg_0.x;
    var var_2 = vec4<bool>(func_4(Struct_1(vec4<bool>(true, false, false, false), any(vec4<bool>(true, true, true, true)), vec4<f32>(var_1.a, 483f, -512f, 953f), ~vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.a, 739f) + vec3<f32>(2866f, -614f, var_1.a)))).a >= 954f, true, -6153i >= -(~abs(u_input.b)), (arg_0.x == 1i) && ((_wgslsmith_f_op_vec3_f32(func_3(var_1.a, Struct_3(Struct_2(vec4<u32>(u_input.c, 40680u, u_input.c, u_input.a), Struct_1(vec4<bool>(true, false, true, false), true, vec4<f32>(var_1.a, var_1.a, -116f, var_1.a), vec4<u32>(25918u, 3702u, u_input.c, u_input.a), vec3<f32>(var_1.a, 1427f, 558f))), Struct_1(vec4<bool>(true, false, false, true), true, vec4<f32>(var_1.a, -2171f, var_1.a, 1458f), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.d), vec3<f32>(805f, 1500f, -1073f)), vec2<u32>(28920u, u_input.a)), arg_0.x)).x == _wgslsmith_f_op_f32(var_1.a + var_1.a)) && !any(vec3<bool>(true, false, true))));
    var var_3 = !(var_2.x && false);
    return Struct_1(select(select(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, true)), !select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, true), false), false), vec4<bool>(!var_2.x, any(var_2.yz), true, !select(var_2.x, var_2.x, true)), any(!var_2.xy)), all(vec4<bool>(true || !var_2.x, !(var_2.x & var_2.x), all(var_2.zw), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, var_1.a, 984f, -1265f)) + _wgslsmith_div_vec4_f32(vec4<f32>(336f, 534f, var_1.a, 1614f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 554f, 283f, -1043f) + vec4<f32>(478f, var_1.a, -2015f, var_1.a)))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_vec3_f32(func_3(var_1.a, Struct_3(Struct_2(vec4<u32>(29558u, u_input.a, u_input.c, u_input.c), Struct_1(vec4<bool>(false, true, false, false), false, vec4<f32>(var_1.a, var_1.a, var_1.a, 649f), vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec3<f32>(var_1.a, var_1.a, var_1.a))), Struct_1(vec4<bool>(var_2.x, var_2.x, var_2.x, false), true, vec4<f32>(325f, var_1.a, 1300f, -668f), vec4<u32>(83266u, u_input.a, 0u, u_input.d), vec3<f32>(var_1.a, var_1.a, 327f)), vec2<u32>(u_input.c, 4294967295u)), -69692i)).x, _wgslsmith_f_op_f32(-var_1.a))))), ~min(~(vec4<u32>(0u, u_input.a, u_input.d, 0u) << (vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u))), vec4<u32>(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(5807u, 0u, 1u, 32526u), vec4<u32>(24262u, 1u, 56784u, u_input.c)), ~u_input.d, ~4294967295u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1719f), _wgslsmith_f_op_f32(-var_1.a))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - var_1.a), _wgslsmith_f_op_vec3_f32(func_3(-421f, Struct_3(Struct_2(vec4<u32>(u_input.c, u_input.c, 0u, u_input.a), Struct_1(vec4<bool>(true, false, true, false), true, vec4<f32>(113f, 741f, var_1.a, var_1.a), vec4<u32>(u_input.d, u_input.a, 1u, 12532u), vec3<f32>(-892f, var_1.a, -1332f))), Struct_1(vec4<bool>(false, true, var_2.x, var_2.x), true, vec4<f32>(var_1.a, 280f, var_1.a, var_1.a), vec4<u32>(12055u, 11564u, u_input.c, 1u), vec3<f32>(var_1.a, var_1.a, 1004f)), vec2<u32>(0u, 1646u)), ~75718i)).x, _wgslsmith_f_op_f32(-var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f - -353f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1052f - _wgslsmith_f_op_f32(ceil(-239f)))));
    var var_1 = func_1(vec3<i32>(-1i) * -vec3<i32>(u_input.e, firstLeadingBit(-20818i), 1i));
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(-2147483647i ^ select(select(1i, u_input.b, false), u_input.b, var_1.b), u_input.e), u_input.e);
    var var_3 = _wgslsmith_sub_i32(u_input.e, u_input.e);
    let var_4 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-1460f * -1463f), Struct_3(Struct_2(var_1.d, Struct_1(var_1.a, var_1.b, var_1.c, vec4<u32>(u_input.d, 10693u, 0u, var_1.d.x), vec3<f32>(-1095f, -390f, 805f))), Struct_1(vec4<bool>(false, false, false, var_1.a.x), var_1.b, var_1.c, var_1.d, vec3<f32>(var_1.c.x, 419f, -827f)), vec2<u32>(u_input.a, 0u)), u_input.e)).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x + -1158f), -483f))), var_1.e.x), var_1.c.zwz));
    var var_5 = false;
    var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~min(vec2<i32>(56887i, -1789i), vec2<i32>(-11896i, var_2.x)), min(~vec2<i32>(u_input.b, u_input.e), vec2<i32>(var_2.x, -65911i) | vec2<i32>(-7638i, -14543i))), _wgslsmith_sub_i32(-1i, -31032i)), abs(vec2<i32>(~reverseBits(-69159i), _wgslsmith_sub_i32(firstLeadingBit(var_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 0i, u_input.b), vec3<i32>(u_input.e, var_2.x, var_2.x))))));
    var var_6 = _wgslsmith_div_vec3_u32(~vec3<u32>(19162u, 0u, 4294967295u), ~vec3<u32>(select(_wgslsmith_mod_u32(0u, 4294967295u), ~0u, !var_1.a.x), ~u_input.c, 4294967295u | _wgslsmith_add_u32(var_1.d.x, u_input.a)));
    var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(55626u, u_input.d), 0u);
}

