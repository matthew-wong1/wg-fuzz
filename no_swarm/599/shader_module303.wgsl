struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(0u, 1u, 63396u), vec2<f32>(-1076f, 1310f), vec4<i32>(i32(-2147483648), 33377i, i32(-2147483648), -22402i), 4294967295u, vec4<f32>(-1436f, 1052f, 602f, 824f)), Struct_1(vec3<u32>(4294967295u, 6549u, 0u), vec2<f32>(1000f, 142f), vec4<i32>(2147483647i, 44475i, 1i, -29083i), 4294967295u, vec4<f32>(1496f, 595f, -137f, -895f)), Struct_1(vec3<u32>(16008u, 1u, 30157u), vec2<f32>(475f, -897f), vec4<i32>(-9465i, 1i, -1i, -12612i), 0u, vec4<f32>(451f, -616f, 122f, 345f)), Struct_1(vec3<u32>(1u, 1u, 1u), vec2<f32>(-370f, -1145f), vec4<i32>(1i, 38412i, 2147483647i, -1i), 0u, vec4<f32>(-465f, 153f, 1233f, 1487f)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec2<f32>(-1101f, 1525f), vec4<i32>(76567i, -16742i, 60106i, -26563i), 10928u, vec4<f32>(1000f, -314f, 619f, -857f)), Struct_1(vec3<u32>(4294967295u, 57948u, 1u), vec2<f32>(-2228f, -415f), vec4<i32>(1i, -27888i, 2147483647i, -1i), 41288u, vec4<f32>(-413f, -374f, 1002f, 2209f)), Struct_1(vec3<u32>(0u, 33707u, 77536u), vec2<f32>(-1212f, 1315f), vec4<i32>(36491i, i32(-2147483648), -28684i, 60237i), 0u, vec4<f32>(961f, 811f, 489f, 745f)), Struct_1(vec3<u32>(44945u, 4559u, 32205u), vec2<f32>(-1571f, -1062f), vec4<i32>(41579i, 34888i, 2147483647i, 2147483647i), 29554u, vec4<f32>(-401f, 1141f, -728f, 2088f)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec2<f32>(728f, 1084f), vec4<i32>(-1i, -49213i, 0i, i32(-2147483648)), 4294967295u, vec4<f32>(1058f, -856f, 852f, 306f)), Struct_1(vec3<u32>(12830u, 4294967295u, 0u), vec2<f32>(1000f, 847f), vec4<i32>(i32(-2147483648), -37770i, 2147483647i, 2147483647i), 21794u, vec4<f32>(2255f, 578f, -1383f, -1276f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<f32> {
    global0 = array<Struct_1, 10>();
    let var_0 = select(!vec2<bool>(select(false, true, any(vec3<bool>(false, false, false))), 4294967295u <= arg_0.a.a.x), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), any(vec3<bool>(true, false, false))), select(!vec2<bool>(all(vec2<bool>(true, true)), false), select(vec2<bool>(all(vec4<bool>(true, false, false, false)), true), vec2<bool>(true, true), vec2<bool>(u_input.b <= 1u, false)), vec2<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))))));
    global0 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -385f);
    let var_2 = ~(~4294967295u);
    return _wgslsmith_f_op_vec4_f32(arg_0.a.e + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f), -1328f), _wgslsmith_f_op_f32(-arg_1), 475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1562f, 2021f)) * _wgslsmith_f_op_f32(select(arg_1, -1361f, true))))));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(round(arg_0.e.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(556f, arg_0.e.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-544f, arg_0.e.x, false)))), _wgslsmith_div_f32(arg_0.e.x, 1346f)));
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(~arg_0.d, u_input.c), 4294967295u), 0u);
    return _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(arg_0.a, vec2<f32>(1504f, var_0.x), -vec4<i32>(-17561i, 1i, -100207i, -43454i), arg_0.d, _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(arg_0.e + vec4<f32>(229f, var_0.x, arg_0.b.x, var_0.x)))), select(arg_0.c.zz, arg_0.c.yz, select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-298f + arg_0.b.x)));
}

fn func_1() -> vec4<f32> {
    let var_0 = 2147483647i;
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_1 = ~_wgslsmith_mult_i32(max(_wgslsmith_sub_i32(u_input.a.x, 11239i), var_0) ^ var_0, u_input.a.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(977f, -1020f, -943f, -680f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<u32>(58088u, u_input.c, u_input.b), vec2<f32>(1000f, 478f), vec4<i32>(u_input.a.x, 2147483647i, 1i, var_0), u_input.b, vec4<f32>(994f, 335f, -1000f, 1459f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-265f, -654f, 1000f, 282f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 831f, 2336f, -201f), vec4<f32>(384f, -822f, -3131f, -791f), false))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2501f * -252f), 1553f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(804f)), 795f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1662f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    global0 = array<Struct_1, 10>();
    let var_0 = Struct_2(Struct_1(abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(8270u, u_input.b, 4294967295u), vec3<u32>(70806u, u_input.c, 44938u))), arg_0.yx, vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, 4385i), -1i), arg_1, -arg_1 >> (4294967295u % 32u)), 0u, _wgslsmith_f_op_vec4_f32(trunc(arg_0))), ~(u_input.a >> (~vec2<u32>(24083u, 0u) % vec2<u32>(32u))) & (-u_input.a >> (~vec2<u32>(30318u, u_input.c) % vec2<u32>(32u))));
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(abs(var_0.a.a), ~(~var_0.a.a)), var_0.a.d, select(reverseBits(44762u >> (u_input.c % 32u)), 1u, (var_0.a.d ^ 20935u) >= var_0.a.a.x), 0u) & firstLeadingBit(~select(~vec4<u32>(4294967295u, 0u, var_0.a.a.x, 4294967295u), min(vec4<u32>(1u, var_0.a.a.x, u_input.c, 102116u), vec4<u32>(var_0.a.a.x, 1u, 0u, var_0.a.d)), vec4<bool>(true, false, false, true)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.b.x, 623f), _wgslsmith_f_op_f32(1478f + 1598f))))))));
    var var_3 = !vec2<bool>(all(vec4<bool>(true, all(vec2<bool>(false, true)), true, all(vec2<bool>(false, false)))), any(vec4<bool>(select(true, true, false), true, select(true, true, false), any(vec2<bool>(false, false)))));
    return ~(-reverseBits(0i)) >> (~var_0.a.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(93252u, u_input.b, u_input.b), vec3<u32>(u_input.b, 1u, 55537u)) | vec3<u32>(u_input.c, 60753u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -535f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1967f, 1743f))))), vec4<i32>(-1i, func_4(_wgslsmith_f_op_vec4_f32(func_1()), countOneBits(u_input.a.x)), (-9859i << (u_input.b % 32u)) << (u_input.c % 32u), -select(u_input.a.x, 0i, true)), 0u, vec4<f32>(258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.b, 10u)], vec2<i32>(u_input.a.x, -9881i)), 1203f)).x), 1f, 1396f)), vec2<i32>(u_input.a.x, u_input.a.x));
    var var_1 = firstLeadingBit(max(_wgslsmith_sub_u32(0u << (~var_0.a.a.x % 32u), 23337u), _wgslsmith_div_u32(~var_0.a.a.x, 1u)));
    var_0 = Struct_2(Struct_1(vec3<u32>(min(u_input.b, _wgslsmith_div_u32(64697u, 4294967295u)), abs(var_0.a.a.x), _wgslsmith_mod_u32(u_input.b | var_0.a.a.x, _wgslsmith_sub_u32(var_0.a.a.x, u_input.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.e.zy)), ~(vec4<i32>(u_input.a.x, -37491i, u_input.a.x, 1i) & ~var_0.a.c), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.b.x)), _wgslsmith_div_f32(305f, var_0.a.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - -259f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2132f * var_0.a.e.x))))), _wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a.x ^ u_input.a.x, u_input.a.x), -(~_wgslsmith_add_vec2_i32(var_0.a.c.yy, u_input.a))));
    var var_2 = var_0.a.b.x;
    let var_3 = false;
    var var_4 = var_0.a;
    var_1 = ~var_4.a.x;
    var_4 = var_0.a;
    let var_5 = Struct_2(Struct_1(firstLeadingBit(var_4.a), _wgslsmith_div_vec2_f32(var_4.b, var_0.a.e.xw), var_4.c, 4294967295u, vec4<f32>(-288f, var_4.b.x, var_4.b.x, var_4.e.x)), firstLeadingBit(reverseBits(min(var_0.a.c.zy, u_input.a ^ vec2<i32>(0i, -35965i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_1()).x, vec3<f32>(var_4.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_2(var_5.a)).x, _wgslsmith_f_op_f32(-var_0.a.b.x))), _wgslsmith_f_op_f32(min(-1032f, var_5.a.e.x))), _wgslsmith_div_u32(countOneBits(1u), 50661u), ~_wgslsmith_sub_vec2_u32(~var_4.a.zy | var_4.a.zx, vec2<u32>(1u, var_4.a.x)));
}

