struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(16711i, vec4<bool>(false, false, false, true), 1327f, -1019f, vec4<bool>(false, true, false, true));

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(1i, vec4<bool>(false, false, true, true), -934f, 1196f, vec4<bool>(true, false, true, false)), Struct_1(-1i, vec4<bool>(false, false, false, false), 951f, 684f, vec4<bool>(true, false, false, false)), Struct_1(-26799i, vec4<bool>(true, true, true, false), -1000f, -1795f, vec4<bool>(false, false, false, true)), Struct_1(-14179i, vec4<bool>(false, true, false, false), -2664f, -639f, vec4<bool>(true, true, true, false)), Struct_1(18311i, vec4<bool>(true, true, true, true), -2006f, 541f, vec4<bool>(true, true, false, false)), Struct_1(2147483647i, vec4<bool>(true, false, true, true), -378f, -548f, vec4<bool>(false, true, false, true)), Struct_1(-60401i, vec4<bool>(false, true, true, false), 725f, -355f, vec4<bool>(false, false, false, true)), Struct_1(-32375i, vec4<bool>(true, false, true, true), 517f, -425f, vec4<bool>(true, true, true, false)), Struct_1(1i, vec4<bool>(true, false, false, true), 1190f, 126f, vec4<bool>(true, false, true, false)), Struct_1(-76316i, vec4<bool>(false, true, true, false), 119f, -1360f, vec4<bool>(false, false, true, true)), Struct_1(1i, vec4<bool>(false, true, false, true), -942f, -1469f, vec4<bool>(false, true, true, false)), Struct_1(-32294i, vec4<bool>(true, false, true, false), 1118f, -1000f, vec4<bool>(true, false, false, true)), Struct_1(-33514i, vec4<bool>(true, false, true, true), 161f, -1830f, vec4<bool>(false, true, false, true)), Struct_1(1i, vec4<bool>(false, false, false, false), 220f, 1568f, vec4<bool>(false, false, false, true)), Struct_1(0i, vec4<bool>(false, true, true, false), -1048f, -932f, vec4<bool>(true, true, false, true)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, true), 579f, -1583f, vec4<bool>(true, false, false, false)), Struct_1(1i, vec4<bool>(true, true, true, true), -836f, 1278f, vec4<bool>(false, false, false, false)), Struct_1(2147483647i, vec4<bool>(true, true, true, false), -575f, 164f, vec4<bool>(false, true, false, false)), Struct_1(0i, vec4<bool>(true, true, false, false), 142f, -813f, vec4<bool>(true, false, true, false)), Struct_1(-8229i, vec4<bool>(true, false, true, true), 767f, 669f, vec4<bool>(false, false, true, true)));

var<private> global2: array<f32, 26> = array<f32, 26>(-468f, 1460f, 1846f, 282f, -1513f, 782f, 521f, 1414f, -720f, -863f, 424f, 377f, 739f, -1903f, -1816f, 1000f, -203f, 1183f, 493f, -2309f, 107f, -1263f, -732f, 687f, -967f, 2146f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<bool> {
    global2 = array<f32, 26>();
    var var_0 = global1[_wgslsmith_index_u32(min(u_input.d | 39823u, min(93709u, firstLeadingBit(~max(49730u, 1u)))), 20u)];
    var var_1 = var_0.a;
    return var_0.b.xy;
}

fn func_2() -> vec4<i32> {
    let var_0 = u_input.c;
    global2 = array<f32, 26>();
    let var_1 = vec3<bool>(true, _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.c.x, u_input.a)), 23403i >> (_wgslsmith_sub_u32(u_input.d, 0u) % 32u)) >= var_0.x, any(select(func_3(), global0.b.xw, func_3().x)));
    global2 = array<f32, 26>();
    let var_2 = 0u;
    return _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a, -2147483647i, 41875i, u_input.c.x), vec4<i32>(-23231i, global0.a, -39683i, 3514i)), vec4<i32>(-34759i, 32090i, 7829i, global0.a)), min(vec4<i32>(76688i, var_0.x, u_input.c.x, u_input.c.x) << (vec4<u32>(4294967295u, 55693u, var_2, var_2) % vec4<u32>(32u)), ~vec4<i32>(u_input.e, -27144i, 0i, -1i))), -(~firstTrailingBit(vec4<i32>(-2147483647i, global0.a, u_input.c.x, var_0.x))), ~abs(vec4<i32>(2147483647i, 69842i, 23316i, -2147483647i)) >> (_wgslsmith_clamp_vec4_u32(min(vec4<u32>(var_2, var_2, 0u, u_input.d), vec4<u32>(16723u, 0u, var_2, 0u)), ~vec4<u32>(u_input.d, 4294967295u, 92148u, 9998u), countOneBits(vec4<u32>(u_input.b, 6248u, 4294967295u, u_input.d))) % vec4<u32>(32u))), firstTrailingBit(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(var_0.x, global0.a), 0i, min(1i, 2147483647i), 1i))));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec4<i32>(u_input.c.x, ~arg_0.x, 23702i, reverseBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.e, 6454i), _wgslsmith_add_i32(u_input.e, global0.a))) & (_wgslsmith_sub_i32(arg_0.x & 0i, 1i) ^ u_input.e));
    let var_1 = 217f;
    var var_2 = abs(u_input.b) ^ ~(~min(u_input.d, u_input.d));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1467f), 642f);
    global0 = Struct_1(-2147483647i, global0.e, _wgslsmith_f_op_f32(select(490f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)))), any(global0.b.xz))), _wgslsmith_f_op_f32(var_1 + 1000f), vec4<bool>(!global0.b.x, global0.b.x, !(!global0.b.x), false));
    return global1[_wgslsmith_index_u32(33235u, 20u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec2<i32> {
    var var_0 = func_4(_wgslsmith_clamp_vec4_i32(select(max(vec4<i32>(-22607i, 1i, global0.a, global0.a), vec4<i32>(global0.a, u_input.a, global0.a, -5824i) ^ vec4<i32>(0i, -2147483647i, u_input.c.x, u_input.c.x)), vec4<i32>(0i << (0u % 32u), global0.a ^ -1i, u_input.c.x, -8536i), !vec4<bool>(true, global0.b.x, false, false)), -_wgslsmith_mod_vec4_i32(vec4<i32>(7286i, global0.a, u_input.a, -1i), select(vec4<i32>(15575i, global0.a, 0i, -36743i), vec4<i32>(0i, u_input.c.x, -1i, u_input.c.x), global0.b.x)), reverseBits(func_2()) | abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c.x, global0.a, -1i), vec4<i32>(global0.a, 0i, -2147483647i, global0.a)))));
    let var_1 = func_4(_wgslsmith_mult_vec4_i32(func_2(), vec4<i32>(global0.a, u_input.a >> (~u_input.d % 32u), -2147483647i, -10919i)));
    var var_2 = u_input.d;
    global2 = array<f32, 26>();
    global1 = array<Struct_1, 20>();
    return _wgslsmith_sub_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.c.yy, vec2<i32>(var_1.a, 35252i)) | select(u_input.c.zz, ~(u_input.c.zz ^ u_input.c.zy), true), _wgslsmith_mult_vec2_i32((~u_input.c.yz >> (vec2<u32>(0u, arg_0.x) % vec2<u32>(32u))) << (countOneBits(firstLeadingBit(arg_0.wx)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(-global0.a, var_0.a), _wgslsmith_sub_i32(-19092i, var_0.a) ^ -1537i)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = arg_2.b.x;
    var_0 = false;
    let var_1 = vec2<i32>(31363i, global0.a);
    return arg_1;
}

fn func_6(arg_0: Struct_1) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.d, u_input.b), 20u)];
    var var_1 = _wgslsmith_dot_vec2_i32(-reverseBits(_wgslsmith_div_vec2_i32(min(vec2<i32>(27321i, 0i), u_input.c.yx), firstTrailingBit(vec2<i32>(1i, 1i)))), abs(u_input.c.yy));
    var_1 = var_0.a;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, func_5(vec2<i32>(u_input.e, var_0.a), Struct_1(u_input.c.x, var_0.e, 1425f, 522f, global0.e), arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, global2[_wgslsmith_index_u32(24771u, 26u)], -1000f, -1376f), vec4<f32>(912f, -911f, global0.c, global2[_wgslsmith_index_u32(43720u, 26u)]))).a, global0.a, reverseBits(~6895i)) << (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.b, 4294967295u, 0u), ~vec4<u32>(u_input.b, u_input.d, 1u, u_input.d)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.d, u_input.b, 0u), min(vec4<u32>(u_input.d, u_input.b, u_input.d, u_input.b), vec4<u32>(22316u, u_input.d, 107020u, u_input.b)))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(15285i, 0i), reverseBits(-1i), (abs(arg_0.a) >> ((16851u >> (u_input.d % 32u)) % 32u)) >> (0u % 32u), firstLeadingBit(-41457i)));
    let var_3 = func_5(-(_wgslsmith_mult_vec2_i32(select(u_input.c.yy, vec2<i32>(15075i, global0.a), arg_0.e.zw), -u_input.c.zx) | u_input.c.zy), Struct_1(select(global0.a, firstLeadingBit(firstTrailingBit(1236i)), arg_0.d == _wgslsmith_f_op_f32(var_0.d - global2[_wgslsmith_index_u32(1u, 26u)])), vec4<bool>(any(arg_0.b), !(!var_0.b.x), !(!var_0.b.x), var_0.b.x), -660f, -1102f, global0.e), Struct_1(func_5(~u_input.c.yy | abs(var_2.yx), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a, global0.a, 13455i, -38387i), vec4<i32>(arg_0.a, -254i, 35967i, arg_0.a))), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, 552f, global2[_wgslsmith_index_u32(19291u, 26u)], arg_0.c))).a, !vec4<bool>(all(arg_0.e.wz), !arg_0.e.x, true, true == global0.b.x), var_0.c, -2299f, vec4<bool>(global0.b.x, select(func_3().x, global2[_wgslsmith_index_u32(0u, 26u)] >= -1387f, all(vec2<bool>(false, var_0.b.x))), ~1i <= _wgslsmith_add_i32(arg_0.a, -1i), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, 1000f, 739f, -703f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(473f, 774f, arg_0.c, -675f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1858f, -264f, 1011f))))));
    return _wgslsmith_add_i32(var_2.x, ~(~(var_2.x & 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(func_6(func_5(func_1(abs(vec4<u32>(0u, u_input.b, u_input.b, u_input.b)), u_input.d), Struct_1(-1i, func_4(vec4<i32>(7525i, -1i, 45114i, 10018i)).b, global2[_wgslsmith_index_u32(u_input.d, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), !vec4<bool>(true, true, global0.b.x, false)), func_4(select(vec4<i32>(global0.a, -2147483647i, global0.a, 2147483647i), vec4<i32>(global0.a, u_input.e, -46824i, global0.a), vec4<bool>(global0.b.x, global0.b.x, false, global0.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, 395f, 499f, 1000f))))), (~u_input.a >> (firstTrailingBit(_wgslsmith_mod_u32(22171u, u_input.b)) % 32u)) >> (u_input.d % 32u));
    var var_1 = reverseBits(max(vec4<i32>(-func_1(vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.d), 76887u).x, firstLeadingBit(global0.a), 0i, _wgslsmith_mult_i32(-37907i & u_input.a, ~global0.a)), max(abs(vec4<i32>(global0.a, 2147483647i, -18047i, 1i)) >> (vec4<u32>(u_input.b, 4294967295u, u_input.d, u_input.d) % vec4<u32>(32u)), -vec4<i32>(-43635i, global0.a, 0i, -1i))));
    global0 = Struct_1(var_0, global0.e, _wgslsmith_f_op_f32(323f + global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * global2[_wgslsmith_index_u32(u_input.b, 26u)])), func_4(func_2()).e);
    global0 = global1[_wgslsmith_index_u32(0u, 20u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2112f, -628f, _wgslsmith_f_op_f32(-1000f * -2982f), _wgslsmith_f_op_f32(f32(-1f) * -842f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 26u)], global0.c, global0.d, -1766f) + vec4<f32>(1014f, 2048f, 905f, global0.c)) * vec4<f32>(_wgslsmith_f_op_f32(floor(-1999f)), var_2.x, _wgslsmith_f_op_f32(min(-598f, -554f)), _wgslsmith_f_op_f32(-546f * -686f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global0.d, global2[_wgslsmith_index_u32(20533u, 26u)], -906f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x);
}

