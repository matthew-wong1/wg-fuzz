struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

var<private> global1: array<f32, 32> = array<f32, 32>(-1203f, 1491f, 454f, 647f, -284f, 843f, -717f, 664f, -366f, -3052f, 305f, 1000f, 1746f, -940f, 1160f, 900f, 352f, 1455f, 631f, -397f, 1572f, -627f, -591f, 135f, -1027f, -1948f, 1314f, -717f, -1171f, 859f, -960f, -652f);

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(-156f, -2117f), vec4<bool>(true, false, false, false), vec4<f32>(1727f, 1646f, 1000f, 508f)));

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<f32>(-143f, 1036f), vec4<bool>(false, true, false, false), vec4<f32>(-247f, -2402f, -741f, -342f)), Struct_1(vec2<f32>(874f, 263f), vec4<bool>(false, true, false, true), vec4<f32>(-125f, -339f, 155f, 1239f)), Struct_1(vec2<f32>(678f, 513f), vec4<bool>(true, false, false, true), vec4<f32>(-576f, 1515f, -100f, -409f)), Struct_1(vec2<f32>(-413f, 1055f), vec4<bool>(true, true, false, true), vec4<f32>(-527f, -457f, 1000f, -1647f)), Struct_1(vec2<f32>(-321f, 1115f), vec4<bool>(true, true, false, true), vec4<f32>(-470f, 1346f, -856f, -719f)), Struct_1(vec2<f32>(-1082f, 207f), vec4<bool>(false, true, true, false), vec4<f32>(-1269f, 1133f, 1403f, -718f)), Struct_1(vec2<f32>(-1000f, -334f), vec4<bool>(true, true, false, true), vec4<f32>(-208f, 619f, -1000f, -2281f)), Struct_1(vec2<f32>(-1644f, -718f), vec4<bool>(false, false, true, true), vec4<f32>(1670f, 1278f, 530f, -179f)), Struct_1(vec2<f32>(1298f, 1155f), vec4<bool>(true, false, false, true), vec4<f32>(323f, 134f, -484f, 752f)), Struct_1(vec2<f32>(-523f, -695f), vec4<bool>(true, true, false, true), vec4<f32>(-1237f, -386f, 317f, 890f)), Struct_1(vec2<f32>(-352f, -1000f), vec4<bool>(false, false, true, false), vec4<f32>(1000f, -1008f, -1251f, 1576f)), Struct_1(vec2<f32>(1000f, -795f), vec4<bool>(false, true, true, true), vec4<f32>(-323f, 1412f, -1034f, 295f)), Struct_1(vec2<f32>(-1860f, -1210f), vec4<bool>(false, true, false, true), vec4<f32>(-197f, -790f, 456f, 408f)), Struct_1(vec2<f32>(-164f, 857f), vec4<bool>(true, false, true, true), vec4<f32>(2038f, -893f, 1000f, 1000f)), Struct_1(vec2<f32>(174f, 1071f), vec4<bool>(true, false, false, false), vec4<f32>(-294f, 805f, -1370f, -601f)), Struct_1(vec2<f32>(-313f, 1986f), vec4<bool>(false, true, true, true), vec4<f32>(-2253f, 1179f, -301f, -1191f)), Struct_1(vec2<f32>(-720f, -1116f), vec4<bool>(false, true, false, false), vec4<f32>(-1699f, -127f, 900f, 548f)), Struct_1(vec2<f32>(-1226f, 638f), vec4<bool>(true, true, true, true), vec4<f32>(1450f, -1769f, -1450f, -1200f)), Struct_1(vec2<f32>(1113f, 1088f), vec4<bool>(true, false, true, true), vec4<f32>(1000f, 2975f, -476f, -205f)), Struct_1(vec2<f32>(1234f, 1335f), vec4<bool>(true, false, false, true), vec4<f32>(1000f, 806f, -849f, -451f)), Struct_1(vec2<f32>(-169f, 531f), vec4<bool>(true, true, false, false), vec4<f32>(-1188f, -343f, 807f, 547f)));

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    global0 = array<f32, 15>();
    global3 = array<Struct_1, 21>();
    global2 = array<Struct_1, 1>();
    global0 = array<f32, 15>();
    var var_0 = reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-25530i, -15105i, arg_0 | arg_0, 35074i), vec4<i32>(~(-2147483647i), 0i, arg_0, reverseBits(arg_0) >> (~1u % 32u)), vec4<i32>(1i, _wgslsmith_add_i32(~1664i, _wgslsmith_div_i32(arg_0, arg_0)), 1i, ~arg_0)));
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.c.x)), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1565f)), 684f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-330f, arg_2.c.x, arg_2.b.x)) + 1f))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(12352u, u_input.a)) & vec2<u32>(4294967295u, ~arg_1), min(vec2<u32>(arg_1, 79519u) << (~vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(4294967295u, 0u)), ~vec2<u32>(14777u, 12080u)))), 21u)];
    global2 = array<Struct_1, 1>();
    global2 = array<Struct_1, 1>();
    let var_1 = vec3<u32>(4294967295u, abs(_wgslsmith_mod_u32(~u_input.a, min(reverseBits(arg_1), _wgslsmith_div_u32(0u, u_input.a)))), arg_1);
    global4 = -2147483647i;
    return 1i;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(func_4(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 15u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(14309u, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)]) - vec2<f32>(1675f, -227f))), vec4<bool>(false, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(43585i, Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<bool>(false, true, true, true), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], -1270f, -1420f, 811f)), Struct_1(vec2<f32>(-994f, global1[_wgslsmith_index_u32(44092u, 32u)]), vec4<bool>(false, true, false, true), vec4<f32>(-1387f, -2073f, 406f, global1[_wgslsmith_index_u32(u_input.a, 32u)])), global2[_wgslsmith_index_u32(101985u, 1u)])))), u_input.a), 17270i, _wgslsmith_add_i32(1i, -35138i), i32(-1i) * -1i);
    var_0 = vec4<i32>(var_0.x, -4189i, -21927i, min(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.x, 9921i, 24089i, var_0.x)), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x));
    var var_1 = -151f;
    global2 = array<Struct_1, 1>();
    var var_2 = _wgslsmith_mod_i32(20877i, -39220i) | (func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(697f, global0[_wgslsmith_index_u32(u_input.a, 15u)]) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], -2915f)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(38673u, 15u)], 1000f, -407f, 827f)))), 0u | ~u_input.a) ^ var_0.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(27532u, 32u)]), -1186f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-792f, global0[_wgslsmith_index_u32(u_input.a, 15u)])))))), select(select(vec4<bool>(all(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, true, false)), var_0.x >= var_0.x, false), vec4<bool>(all(vec2<bool>(true, true)), true, u_input.a >= u_input.a, all(vec4<bool>(false, true, true, false))), !all(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(vec2<bool>(false, true)) | false), vec4<bool>(u_input.a >= _wgslsmith_div_u32(23272u, 4294967295u), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 32u)]) >= _wgslsmith_f_op_f32(f32(-1f) * -560f), true, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a | 4294967295u, 15u)])), -163f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(59341u, 15u)], 394f))), global0[_wgslsmith_index_u32(1u, 15u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1342f, 412f, 846f, global1[_wgslsmith_index_u32(36228u, 32u)]) * vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], 1202f, global1[_wgslsmith_index_u32(91446u, 32u)], -760f))))));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    let var_0 = func_2();
    global1 = array<f32, 32>();
    let var_1 = var_0.a.x;
    return -8986i << (u_input.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = array<Struct_1, 21>();
    global4 = max(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-abs(25760i), firstTrailingBit(-2147483647i)), max(_wgslsmith_mult_i32(-2147483647i, func_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(35537u, 32u)]))), reverseBits(2147483647i))), ~(-24439i) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 67826u, u_input.a) % vec3<u32>(32u)), abs(vec3<u32>(u_input.a, 26141u, u_input.a))), ~(u_input.a >> (0u % 32u)), u_input.a) % 32u));
    global3 = array<Struct_1, 21>();
    global3 = array<Struct_1, 21>();
    global1 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32((~vec3<u32>(68652u, 30930u, u_input.a) << ((vec3<u32>(0u, u_input.a, 0u) << (vec3<u32>(u_input.a, u_input.a, 62860u) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (~(~vec3<u32>(u_input.a, 55248u, u_input.a)) % vec3<u32>(32u)), ~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a >> (u_input.a % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 98215u), vec3<u32>(48299u, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a, 1u)), vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), abs(30320u)))), ~u_input.a, ~max(vec3<u32>(~17980u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(1u, u_input.a, 0u)), _wgslsmith_add_u32(1u, u_input.a)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), reverseBits(vec3<u32>(27773u, 0u, 0u)))));
}

