struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, true, true));

var<private> global1: array<f32, 13> = array<f32, 13>(-329f, -381f, 347f, 138f, -584f, -1863f, 113f, -2020f, 383f, -112f, 509f, 150f, 854f);

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(8784i, Struct_1(vec3<f32>(321f, -1000f, -737f), vec2<i32>(41642i, 64769i), 1094f), 62932u, Struct_1(vec3<f32>(592f, -1344f, -1405f), vec2<i32>(2147483647i, -1i), -221f), vec3<f32>(534f, 984f, 370f)), Struct_2(40566i, Struct_1(vec3<f32>(325f, -503f, 627f), vec2<i32>(-15549i, 54672i), 371f), 4294967295u, Struct_1(vec3<f32>(791f, -1485f, -1165f), vec2<i32>(-25068i, 2147483647i), -2111f), vec3<f32>(-379f, 821f, 172f)), Struct_2(-7669i, Struct_1(vec3<f32>(912f, 512f, 1535f), vec2<i32>(48803i, 1i), 798f), 0u, Struct_1(vec3<f32>(358f, 595f, -369f), vec2<i32>(26418i, 1i), -1000f), vec3<f32>(433f, -1000f, -813f)), Struct_2(0i, Struct_1(vec3<f32>(1068f, 1000f, 131f), vec2<i32>(1i, -22987i), 234f), 1u, Struct_1(vec3<f32>(-601f, 211f, -1442f), vec2<i32>(-28833i, -13681i), 1410f), vec3<f32>(620f, -1606f, -137f)), Struct_2(1i, Struct_1(vec3<f32>(-1344f, 364f, 734f), vec2<i32>(-82204i, 18982i), 103f), 1u, Struct_1(vec3<f32>(-815f, 109f, -1605f), vec2<i32>(51118i, -1i), -133f), vec3<f32>(-777f, -212f, -520f)), Struct_2(0i, Struct_1(vec3<f32>(-2432f, -908f, -253f), vec2<i32>(-1i, 8083i), -1237f), 1u, Struct_1(vec3<f32>(615f, -309f, -623f), vec2<i32>(-28469i, 2147483647i), -793f), vec3<f32>(652f, -1108f, 1183f)), Struct_2(2147483647i, Struct_1(vec3<f32>(148f, 565f, 1000f), vec2<i32>(51837i, -1948i), 100f), 4294967295u, Struct_1(vec3<f32>(-842f, 583f, -1009f), vec2<i32>(i32(-2147483648), -25740i), -855f), vec3<f32>(361f, -1635f, 153f)), Struct_2(12804i, Struct_1(vec3<f32>(-2199f, 653f, -1329f), vec2<i32>(14778i, -8313i), -497f), 27368u, Struct_1(vec3<f32>(238f, -1096f, 2151f), vec2<i32>(1i, -1i), 1000f), vec3<f32>(-159f, 856f, 382f)), Struct_2(27433i, Struct_1(vec3<f32>(-1178f, 1178f, -1129f), vec2<i32>(-1i, i32(-2147483648)), 900f), 4294967295u, Struct_1(vec3<f32>(-1495f, -475f, 721f), vec2<i32>(-1i, 1i), 2127f), vec3<f32>(-1221f, -1838f, -740f)), Struct_2(-15547i, Struct_1(vec3<f32>(398f, 746f, -509f), vec2<i32>(5403i, 14190i), 1112f), 4294967295u, Struct_1(vec3<f32>(200f, -137f, -438f), vec2<i32>(-3885i, -38582i), 1172f), vec3<f32>(203f, 1000f, 505f)), Struct_2(i32(-2147483648), Struct_1(vec3<f32>(701f, -2109f, -240f), vec2<i32>(34516i, -61699i), -1503f), 4294967295u, Struct_1(vec3<f32>(1282f, -998f, 518f), vec2<i32>(-1i, 1i), 361f), vec3<f32>(-296f, 246f, 761f)), Struct_2(-1i, Struct_1(vec3<f32>(-290f, -2821f, -777f), vec2<i32>(-12059i, 1i), -1182f), 4294967295u, Struct_1(vec3<f32>(-302f, 1150f, 312f), vec2<i32>(24502i, 20821i), 1166f), vec3<f32>(103f, -1000f, 147f)), Struct_2(28815i, Struct_1(vec3<f32>(158f, 219f, -1047f), vec2<i32>(-1i, -7004i), -277f), 22268u, Struct_1(vec3<f32>(-725f, -1010f, 556f), vec2<i32>(77380i, i32(-2147483648)), -612f), vec3<f32>(743f, -2051f, 235f)), Struct_2(-16833i, Struct_1(vec3<f32>(-1029f, -1321f, -279f), vec2<i32>(1305i, i32(-2147483648)), 1489f), 4294967295u, Struct_1(vec3<f32>(1000f, -605f, 1000f), vec2<i32>(27108i, -320i), -1593f), vec3<f32>(-1383f, -762f, 248f)), Struct_2(48306i, Struct_1(vec3<f32>(-290f, 454f, 274f), vec2<i32>(2147483647i, i32(-2147483648)), -1298f), 4294967295u, Struct_1(vec3<f32>(1901f, 1000f, -515f), vec2<i32>(24006i, 43780i), -1625f), vec3<f32>(2108f, 304f, 1007f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(~5796i, Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(~4294967295u, 13u)], 613f, global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), -(reverseBits(vec2<i32>(13298i, 0i)) << (vec2<u32>(u_input.b, u_input.c.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1u, 13u)]))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-464f + global1[_wgslsmith_index_u32(1u, 13u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.a), 13u)]))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, ~1u), 1u), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1510f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_f32(floor(-172f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1780u, 13u)], 187f, -1065f))))), vec2<i32>(_wgslsmith_mod_i32(38005i, _wgslsmith_add_i32(45489i, -74962i)), i32(-1i) * -1i), global1[_wgslsmith_index_u32(60440u, 13u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], 999f, -2621f), vec3<f32>(global1[_wgslsmith_index_u32(21249u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], 522f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-539f, 1096f, 279f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(297f, _wgslsmith_f_op_f32(-339f * -1156f), -973f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(89754u, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)]) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(9052u, 13u)], global1[_wgslsmith_index_u32(13084u, 13u)])))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_div_f32(-462f, var_0.b.a.x), var_0.e.x))), vec3<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 22445u), u_input.d), 13u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-160f)), var_0.b.c, u_input.a < var_0.c)), -470f)), ~var_0.d.b ^ vec2<i32>(2147483647i, abs(~9343i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -961f) + var_0.d.a.x))) * 256f));
    global1 = array<f32, 13>();
    let var_2 = _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c, var_1.c)))));
    let var_3 = 4294967295u;
    return var_0.d.a;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(628f, 2123f, -2385f)))))), vec2<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(2147483647i)) ^ _wgslsmith_add_i32(1i, ~0i), ~_wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 1i))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~1u << (u_input.c.x % 32u), 13u)] * global1[_wgslsmith_index_u32(258u, 13u)]));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, 0u), 15u)];
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], var_1.b.a.x, 310f, var_0.c))))));
    let var_4 = select(vec2<bool>(any(vec3<bool>(true, true, var_2.x < 1u)), any(vec4<bool>(14242u == var_2.x, arg_0.x > 1u, true, true))), vec2<bool>(!select(select(false, true, true), true, all(vec2<bool>(true, false))), true), vec2<bool>(true, true));
    return Struct_1(var_1.d.a, _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.x, _wgslsmith_add_i32(-2147483647i, var_1.d.b.x | 2147483647i)), vec2<i32>(firstTrailingBit(reverseBits(var_1.b.b.x)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.b.x, var_1.d.b.x, var_0.b.x), vec3<i32>(-48172i, var_0.b.x, var_1.b.b.x), vec3<bool>(var_4.x, true, false)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d.b.x, -2147483647i, var_0.b.x), vec3<i32>(0i, var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_f32(1349f - global1[_wgslsmith_index_u32(~1u, 13u)]));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_1 {
    global2 = array<Struct_2, 15>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.d.a.x, arg_1.b.a.x, arg_1.b.a.x), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], 708f, -1065f))))))), _wgslsmith_f_op_vec3_f32(-arg_1.b.a), !vec3<bool>(u_input.d.x < u_input.c.x, true, true))), min(vec2<i32>(arg_1.d.b.x, arg_2), -_wgslsmith_div_vec2_i32(vec2<i32>(-26712i, -2147483647i), vec2<i32>(-69079i, 22255i)) | ~func_2(u_input.c.xxw).b), -683f);
    var var_1 = !(!(!((global1[_wgslsmith_index_u32(arg_3, 13u)] >= 231f) || (arg_1.a == 21728i))));
    return func_2(_wgslsmith_sub_vec3_u32(~max(abs(u_input.c.zwz), vec3<u32>(arg_3, arg_1.c, arg_1.c)), ~min(_wgslsmith_clamp_vec3_u32(vec3<u32>(17717u, arg_3, u_input.a), vec3<u32>(u_input.d.x, arg_1.c, arg_1.c), vec3<u32>(arg_3, u_input.d.x, arg_1.c)), ~vec3<u32>(arg_1.c, 10101u, 1u))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> vec3<f32> {
    global0 = array<vec4<bool>, 1>();
    let var_0 = func_4(arg_3.wx, Struct_2(-_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, ~2147483647i, 6016i), func_2(u_input.c.yzy), u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-393f, 1161f, -1747f)), ~func_2(u_input.c.wzx).b, _wgslsmith_f_op_f32(-arg_1.e.x)), func_2(_wgslsmith_sub_vec3_u32(u_input.c.zyy >> (vec3<u32>(arg_1.c, 31251u, 59736u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c, arg_1.c, arg_1.c), u_input.c.xyy))).a), -33824i >> (_wgslsmith_dot_vec4_u32(~firstTrailingBit(u_input.c), abs(~vec4<u32>(1u, 0u, u_input.d.x, 0u))) % 32u), 2419u);
    global0 = array<vec4<bool>, 1>();
    let var_1 = firstLeadingBit(select(~vec3<i32>(-arg_0, _wgslsmith_div_i32(arg_1.a, -8402i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, arg_0, arg_1.b.b.x), vec4<i32>(arg_0, var_0.b.x, arg_1.d.b.x, arg_0))), _wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.d.b.x, var_0.b.x, arg_1.a), vec3<i32>(2147483647i, 31124i, -7667i)), vec3<i32>(1i, 7172i, 1i) & vec3<i32>(arg_1.d.b.x, var_0.b.x, -1i)), arg_2));
    global0 = array<vec4<bool>, 1>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(func_2(u_input.c.yxx).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], _wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(var_0.c - -1788f))), arg_3.zxw)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 13>();
    global0 = array<vec4<bool>, 1>();
    let var_0 = Struct_2(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -21525i, 0i, -11550i), vec4<i32>(-1i, -1i, 0i, 22663i))) | (i32(-1i) * -24050i), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)])) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)])), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_i32(-15898i, 1i), Struct_2(-17181i, Struct_1(vec3<f32>(342f, global1[_wgslsmith_index_u32(u_input.b, 13u)], 2404f), vec2<i32>(0i, -41337i), 580f), 26320u, Struct_1(vec3<f32>(1797f, 523f, global1[_wgslsmith_index_u32(1u, 13u)]), vec2<i32>(-1i, 1i), 1060f), vec3<f32>(-460f, 1333f, global1[_wgslsmith_index_u32(4294967295u, 13u)])), true, vec4<bool>(true, true, false, false))))), vec2<i32>(func_4(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.a), 15u)], -2147483647i << (0u % 32u), 4294967295u).b.x, -1i), global1[_wgslsmith_index_u32(1u, 13u)]), u_input.a, func_2(~u_input.c.yxw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-714f, global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -923f, -379f)))));
    var var_1 = abs(u_input.c);
    let var_2 = !(!all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))));
    let var_3 = vec4<bool>(var_2, false, var_2, any(vec4<bool>(false, all(vec3<bool>(false, var_2, false)), var_2, !any(vec2<bool>(var_2, var_2)))));
    let var_4 = 4294967295u;
    let var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-526f)));
}

