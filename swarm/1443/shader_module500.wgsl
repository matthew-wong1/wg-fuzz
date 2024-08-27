struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(7282u, 0u, 0u, 41348u);

var<private> global1: vec2<u32> = vec2<u32>(27565u, 1u);

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec4<bool>(true, true, false, false), -488f, vec2<bool>(true, true), Struct_2(vec4<f32>(440f, 621f, 2147f, -400f)), Struct_1(vec2<f32>(-223f, -1332f), -1435f, vec4<i32>(-20886i, i32(-2147483648), -1i, 80023i))), Struct_3(vec4<bool>(true, false, false, false), -413f, vec2<bool>(true, true), Struct_2(vec4<f32>(-1427f, 717f, -1997f, 483f)), Struct_1(vec2<f32>(-175f, 2402f), -657f, vec4<i32>(25639i, -19926i, -7856i, i32(-2147483648)))), Struct_3(vec4<bool>(false, false, false, false), 1000f, vec2<bool>(false, false), Struct_2(vec4<f32>(1568f, 816f, -254f, -127f)), Struct_1(vec2<f32>(-406f, 1111f), -2138f, vec4<i32>(35397i, -38571i, 18579i, 49451i))), Struct_3(vec4<bool>(true, true, false, true), -673f, vec2<bool>(false, true), Struct_2(vec4<f32>(230f, -958f, 488f, -234f)), Struct_1(vec2<f32>(571f, 612f), -950f, vec4<i32>(46663i, 0i, 8395i, 1i))), Struct_3(vec4<bool>(false, true, false, false), -1408f, vec2<bool>(true, false), Struct_2(vec4<f32>(-1435f, 599f, 279f, -419f)), Struct_1(vec2<f32>(-2096f, -869f), 583f, vec4<i32>(-1i, -13169i, -1i, -14450i))), Struct_3(vec4<bool>(false, false, false, true), 113f, vec2<bool>(false, true), Struct_2(vec4<f32>(762f, -1777f, -812f, 416f)), Struct_1(vec2<f32>(-837f, 355f), 1933f, vec4<i32>(2394i, -93015i, -39902i, 2147483647i))), Struct_3(vec4<bool>(false, false, false, true), -1000f, vec2<bool>(false, false), Struct_2(vec4<f32>(1145f, -197f, -1738f, -1000f)), Struct_1(vec2<f32>(-1161f, -513f), -631f, vec4<i32>(-31667i, -61327i, 0i, 28879i))), Struct_3(vec4<bool>(true, false, false, false), -1000f, vec2<bool>(false, false), Struct_2(vec4<f32>(1000f, 1079f, -495f, -1591f)), Struct_1(vec2<f32>(368f, 1904f), -1761f, vec4<i32>(19005i, i32(-2147483648), 0i, -1i))), Struct_3(vec4<bool>(true, false, false, true), 1018f, vec2<bool>(false, false), Struct_2(vec4<f32>(-546f, -370f, -537f, 223f)), Struct_1(vec2<f32>(-1905f, -1135f), -857f, vec4<i32>(-88076i, -1i, i32(-2147483648), 42852i))), Struct_3(vec4<bool>(true, true, true, false), -333f, vec2<bool>(false, true), Struct_2(vec4<f32>(-615f, 412f, -1554f, 1096f)), Struct_1(vec2<f32>(-1548f, 255f), 138f, vec4<i32>(0i, -1i, 17803i, -1i))));

var<private> global3: Struct_2 = Struct_2(vec4<f32>(-1259f, 1000f, 178f, 1470f));

var<private> global4: array<i32, 3> = array<i32, 3>(1i, -1i, -33458i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global4 = array<i32, 3>();
    let var_0 = false;
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(133431u, select(u_input.c, u_input.a.x, true)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(530u, global1.x, 27812u, u_input.c) & min(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 4u)], 0u, 94939u, 4294967295u), vec4<u32>(u_input.a.x, global1.x, global1.x, 0u)), vec4<u32>(global0[_wgslsmith_index_u32(50810u, 4u)], u_input.a.x, _wgslsmith_div_u32(50589u, u_input.d), global1.x)), abs(u_input.c)));
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(~global1.x, global1.x, global0[_wgslsmith_index_u32(~27960u, 4u)]), ~u_input.a) << (~u_input.d % 32u);
}

fn func_2() -> vec4<i32> {
    var var_0 = global2[_wgslsmith_index_u32(func_3(), 10u)];
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 4u)] & u_input.a.x), ~(~global1.x)), ~global0[_wgslsmith_index_u32(1u, 4u)]) ^ _wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79882u, 4u)], 4u)], 31835u), ~vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 4u)], 20752u, 10696u, 65855u), vec4<u32>(u_input.a.x, u_input.d, u_input.c, 18255u))), ~select(max(vec4<u32>(global1.x, 0u, 5935u, global0[_wgslsmith_index_u32(global1.x, 4u)]), vec4<u32>(4294967295u, u_input.c, 8752u, u_input.a.x)), ~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 0u, global0[_wgslsmith_index_u32(global1.x, 4u)]), select(vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.a.x), var_0.a, vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x))));
    let var_2 = select(~min(_wgslsmith_clamp_vec3_u32(~u_input.a, _wgslsmith_sub_vec3_u32(u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(70330u, 1u, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(global1.x, 4u)], u_input.d, global0[_wgslsmith_index_u32(11354u, 4u)]))), vec3<u32>(global1.x, min(1u, u_input.d), _wgslsmith_add_u32(global1.x, 18029u))), countOneBits(select(u_input.a, abs(vec3<u32>(0u, 0u, u_input.a.x)), any(select(vec3<bool>(var_0.c.x, var_0.c.x, false), var_0.a.yzw, var_0.a.x)))), vec3<bool>(false & var_0.c.x, true, all(var_0.a.zz)));
    let var_3 = Struct_4(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.a.yw) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2567f, var_0.b) - vec2<f32>(var_0.e.a.x, 563f))), var_0.e.a), 764f, ~(~select(var_0.e.c, vec4<i32>(u_input.b, 3133i, 12221i, global4[_wgslsmith_index_u32(u_input.c, 3u)]), true))));
    var var_4 = var_3;
    return max(var_3.a.c, _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(var_3.a.c.x, var_3.a.c.x, var_3.a.c.x, var_3.a.c.x)), _wgslsmith_clamp_vec4_i32(var_4.a.c, vec4<i32>(var_3.a.c.x, global4[_wgslsmith_index_u32(31206u, 3u)], u_input.b, var_4.a.c.x) | vec4<i32>(-2147483647i, 51808i, var_3.a.c.x, 38301i), firstLeadingBit(vec4<i32>(2147483647i, 26840i, -1i, -1i))), -vec4<i32>(var_3.a.c.x, -2147483647i, -20237i, var_0.e.c.x))) << (~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(29740u, var_2.x, 1u, 1u), vec4<u32>(global1.x, 0u, 28625u, global0[_wgslsmith_index_u32(1u, 4u)]) & vec4<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 29419u, 53987u, var_2.x), vec4<u32>(var_2.x, u_input.d, global1.x, global0[_wgslsmith_index_u32(17158u, 4u)]) >> (vec4<u32>(89342u, global1.x, 4294967295u, 28979u) % vec4<u32>(32u))), firstTrailingBit(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 0u, u_input.d, 4613u))) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_3 {
    var var_0 = arg_0;
    global2 = array<Struct_3, 10>();
    global4 = array<i32, 3>();
    var var_1 = Struct_5(global2[_wgslsmith_index_u32(u_input.c & ~global1.x, 10u)], vec3<f32>(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_div_f32(var_0.b, -122f)), var_0.b, var_0.b), -1348f, global2[_wgslsmith_index_u32(47520u, 10u)], _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4294967295u)), 38963u), ~vec2<u32>(u_input.d & global0[_wgslsmith_index_u32(0u, 4u)], u_input.c)));
    var var_2 = ~var_1.e.x ^ 0u;
    return var_1.d;
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    let var_0 = 1u;
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 10u)];
    let var_2 = 4294967295u;
    let var_3 = u_input.a;
    var var_4 = func_4(Struct_1(global3.a.zw, _wgslsmith_f_op_f32(var_1.d.a.x * var_1.d.a.x), func_2()), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.a.x, var_1.b), vec2<f32>(var_1.e.b, var_1.b)))), -324f, _wgslsmith_mult_vec4_i32(var_1.e.c, func_2()))));
    return ~var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 3>();
    global1 = vec2<u32>(~_wgslsmith_sub_u32(26559u, func_1(1i, -1i)), min(abs(~0u), ~1u)) & (vec2<u32>(~u_input.d, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a.x, 0u))) << (~(~(vec2<u32>(4294967295u, global1.x) >> (u_input.a.zx % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(~_wgslsmith_mult_vec2_i32(func_4(Struct_1(vec2<f32>(global3.a.x, 620f), 2210f, vec4<i32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 4u)], 3u)], 1i, -1i, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 3u)])), Struct_4(Struct_1(vec2<f32>(-1217f, global3.a.x), global3.a.x, vec4<i32>(global4[_wgslsmith_index_u32(global1.x, 3u)], global4[_wgslsmith_index_u32(35356u, 3u)], 2147483647i, 22944i)))).e.c.xw, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(global4[_wgslsmith_index_u32(u_input.d, 3u)], 2147483647i))), _wgslsmith_mod_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(4367u, 3u)] ^ -3572i, _wgslsmith_div_i32(global4[_wgslsmith_index_u32(global1.x, 3u)], 0i)), ~(-vec2<i32>(-5680i, 36636i))), firstTrailingBit((vec2<i32>(-2147483647i, -84534i) >> (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) << ((vec2<u32>(0u, 3707u) >> (u_input.a.yy % vec2<u32>(32u))) % vec2<u32>(32u)))), -790f, global3.a.x, ~(~select(~vec4<u32>(u_input.c, global1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39743u, 4u)], 4u)], global1.x), _wgslsmith_div_vec4_u32(vec4<u32>(83406u, u_input.a.x, 78378u, global0[_wgslsmith_index_u32(global1.x, 4u)]), vec4<u32>(0u, 17819u, 0u, 1u)), func_4(Struct_1(vec2<f32>(global3.a.x, global3.a.x), -832f, vec4<i32>(-1i, -31834i, 1i, 2099i)), Struct_4(Struct_1(vec2<f32>(-790f, global3.a.x), -264f, vec4<i32>(2147483647i, -52312i, global4[_wgslsmith_index_u32(1u, 3u)], u_input.b)))).a)), ~(_wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26587u, 4u)], 4u)], 3u)], global4[_wgslsmith_index_u32(global1.x, 3u)], u_input.b) << (vec3<u32>(global1.x, global1.x, 28943u) % vec3<u32>(32u)), -vec3<i32>(global4[_wgslsmith_index_u32(u_input.d, 3u)], -1i, global4[_wgslsmith_index_u32(54685u, 3u)])) >> (~u_input.a.x % 32u)));
}

