struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, vec2<u32>(2029u, 11272u), vec2<f32>(-2218f, -451f), 17509i, vec4<u32>(4294967295u, 60487u, 23647u, 0u)), Struct_1(false, vec2<u32>(57664u, 1u), vec2<f32>(874f, -1305f), 2147483647i, vec4<u32>(71103u, 69786u, 8816u, 34696u)), Struct_1(false, vec2<u32>(4294967295u, 18411u), vec2<f32>(-1003f, 731f), -1i, vec4<u32>(52407u, 14216u, 1175u, 40667u)), Struct_1(false, vec2<u32>(5739u, 54147u), vec2<f32>(1000f, -202f), -43154i, vec4<u32>(4294967295u, 30287u, 25292u, 0u)), Struct_1(false, vec2<u32>(3571u, 1u), vec2<f32>(227f, -1465f), 56147i, vec4<u32>(64923u, 65938u, 49715u, 40732u)), Struct_1(false, vec2<u32>(4294967295u, 0u), vec2<f32>(-1022f, -849f), -16i, vec4<u32>(39198u, 1u, 11218u, 8720u)), Struct_1(false, vec2<u32>(22052u, 4294967295u), vec2<f32>(-438f, -909f), 2147483647i, vec4<u32>(71231u, 4294967295u, 16863u, 1u)), Struct_1(false, vec2<u32>(86025u, 1u), vec2<f32>(-112f, 167f), i32(-2147483648), vec4<u32>(1u, 922u, 6649u, 42350u)), Struct_1(true, vec2<u32>(6063u, 6002u), vec2<f32>(492f, 836f), 28624i, vec4<u32>(4294967295u, 33577u, 0u, 50173u)), Struct_1(false, vec2<u32>(9288u, 0u), vec2<f32>(1048f, -123f), 31347i, vec4<u32>(55026u, 57639u, 0u, 1846u)), Struct_1(false, vec2<u32>(0u, 0u), vec2<f32>(-505f, -596f), -6732i, vec4<u32>(1u, 0u, 64987u, 40984u)), Struct_1(true, vec2<u32>(1u, 4294967295u), vec2<f32>(708f, 556f), 1i, vec4<u32>(4294967295u, 4294967295u, 1u, 16088u)), Struct_1(true, vec2<u32>(4294967295u, 10652u), vec2<f32>(1210f, -1000f), -3811i, vec4<u32>(82676u, 1u, 0u, 2538u)), Struct_1(false, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-726f, -719f), i32(-2147483648), vec4<u32>(1u, 62629u, 0u, 24842u)), Struct_1(false, vec2<u32>(32618u, 1u), vec2<f32>(-807f, -1578f), -1i, vec4<u32>(85616u, 0u, 0u, 24772u)), Struct_1(true, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(1000f, 241f), 1i, vec4<u32>(1u, 1u, 0u, 12071u)), Struct_1(false, vec2<u32>(21647u, 123318u), vec2<f32>(956f, 289f), 42447i, vec4<u32>(0u, 26830u, 0u, 81184u)), Struct_1(false, vec2<u32>(101050u, 69328u), vec2<f32>(1171f, 179f), 5422i, vec4<u32>(0u, 1u, 1u, 1107u)), Struct_1(true, vec2<u32>(0u, 18991u), vec2<f32>(1174f, 1630f), i32(-2147483648), vec4<u32>(1u, 0u, 0u, 4294967295u)), Struct_1(true, vec2<u32>(4294967295u, 1u), vec2<f32>(599f, 1332f), 1i, vec4<u32>(11856u, 65163u, 39456u, 44154u)), Struct_1(true, vec2<u32>(0u, 4294967295u), vec2<f32>(-1000f, 2606f), 20892i, vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_1(false, vec2<u32>(72659u, 14797u), vec2<f32>(-1192f, -106f), 0i, vec4<u32>(41588u, 0u, 108895u, 1u)), Struct_1(true, vec2<u32>(0u, 4294967295u), vec2<f32>(-845f, -1804f), -1i, vec4<u32>(4294967295u, 62040u, 1u, 4294967295u)), Struct_1(true, vec2<u32>(0u, 0u), vec2<f32>(1051f, 969f), 2147483647i, vec4<u32>(51403u, 11625u, 1u, 0u)), Struct_1(false, vec2<u32>(45998u, 0u), vec2<f32>(-358f, -753f), 0i, vec4<u32>(123009u, 0u, 1u, 103895u)), Struct_1(false, vec2<u32>(4294967295u, 1u), vec2<f32>(460f, 1000f), i32(-2147483648), vec4<u32>(32608u, 6192u, 12262u, 69686u)), Struct_1(false, vec2<u32>(1u, 5171u), vec2<f32>(981f, 127f), -1i, vec4<u32>(49023u, 4294967295u, 0u, 1u)), Struct_1(false, vec2<u32>(33272u, 48167u), vec2<f32>(-904f, 331f), 22703i, vec4<u32>(1u, 6617u, 16954u, 0u)), Struct_1(false, vec2<u32>(0u, 0u), vec2<f32>(-343f, 366f), 2147483647i, vec4<u32>(115989u, 61678u, 5257u, 7821u)), Struct_1(false, vec2<u32>(1u, 4294967295u), vec2<f32>(-271f, 240f), 1i, vec4<u32>(1u, 79539u, 0u, 0u)), Struct_1(true, vec2<u32>(4294967295u, 8196u), vec2<f32>(934f, -674f), 0i, vec4<u32>(4294967295u, 22932u, 1u, 68286u)), Struct_1(true, vec2<u32>(77971u, 1u), vec2<f32>(1236f, 1419f), -1i, vec4<u32>(20536u, 29266u, 4294967295u, 1u)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = ~arg_0.b.e.e.yzz;
    var var_1 = arg_0.b;
    let var_2 = var_1.b.x;
    return ~select(countOneBits(arg_0.b.e.b), var_1.e.e.xw, vec2<bool>(true, true)) | _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(36259u, arg_0.c.b.x), firstLeadingBit(~u_input.d.xz)), ~(~u_input.d.xz));
}

fn func_2() -> Struct_1 {
    var var_0 = ~(u_input.d.zy & select(u_input.d.yy << (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), func_3(Struct_3(-285f, Struct_2(u_input.b, vec2<bool>(false, true), 33128u, u_input.a.yxw, global0[_wgslsmith_index_u32(11296u, 32u)]), Struct_1(false, vec2<u32>(1u, 4294967295u), vec2<f32>(-661f, -583f), -24162i, vec4<u32>(u_input.c, 0u, 4294967295u, 31373u)), vec2<i32>(u_input.a.x, u_input.a.x))), all(vec3<bool>(false, false, true)) || false));
    let var_1 = Struct_2(var_0.x, select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(false, true, true))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true)), select(false, true, false)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), false), vec2<bool>(any(vec3<bool>(true, true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec2<bool>(false, false)))), vec2<bool>(countOneBits(u_input.a.x) != u_input.a.x, true)), _wgslsmith_mult_u32(abs(u_input.c), ~(~0u)), vec3<i32>(~u_input.a.x | -14663i, -(~u_input.a.x), -1i), global0[_wgslsmith_index_u32(var_0.x, 32u)]);
    var_0 = ~_wgslsmith_mult_vec2_u32(u_input.d.xz, vec2<u32>(var_1.c, 4294967295u)) >> (vec2<u32>(var_1.a, abs(var_1.a)) % vec2<u32>(32u));
    var var_2 = global0[_wgslsmith_index_u32(var_1.a, 32u)];
    let var_3 = global0[_wgslsmith_index_u32(var_1.e.e.x, 32u)];
    return Struct_1(true, countOneBits(vec2<u32>(countOneBits(0u), abs(~var_3.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.e.c), var_1.e.c) + var_1.e.c)), u_input.a.x, _wgslsmith_add_vec4_u32(select(~abs(vec4<u32>(4294967295u, var_2.e.x, 3274u, 4080u)), vec4<u32>(var_1.a, 1u, ~4294967295u, firstTrailingBit(var_2.e.x)), select(all(vec3<bool>(true, false, var_3.a)), any(vec4<bool>(var_2.a, false, var_1.e.a, var_1.e.a)), true)), var_3.e));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.e.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.e.c))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.e.c)), vec2<f32>(arg_0.e.c.x, arg_0.e.c.x)))) - _wgslsmith_f_op_vec2_f32(floor(arg_0.e.c)));
    var_0 = vec2<f32>(-684f, _wgslsmith_f_op_f32(round(-1000f)));
    let var_1 = countOneBits(u_input.a);
    let var_2 = 4294967295u;
    let var_3 = select(arg_0.e.e, arg_0.e.e, !select(!select(vec4<bool>(arg_0.b.x, arg_0.e.a, arg_0.b.x, false), vec4<bool>(arg_0.b.x, false, true, true), true), vec4<bool>(arg_0.e.c.x != var_0.x, any(vec4<bool>(false, true, arg_0.e.a, arg_0.e.a)), arg_0.b.x, arg_0.b.x), false));
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> StorageBuffer {
    var var_0 = !(1165f > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c.x))))));
    let var_1 = arg_1.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(arg_1.c.x)), Struct_2(_wgslsmith_add_u32(max(~31498u, abs(u_input.c)), 11506u), select(vec2<bool>(!arg_1.a, arg_1.e.x >= 8843u), vec2<bool>(true, true), vec2<bool>(true, 1224f > arg_1.c.x)), ~0u, arg_2, func_1(Struct_2(2414u, select(vec2<bool>(var_1, arg_1.a), vec2<bool>(arg_1.a, var_1), vec2<bool>(arg_1.a, false)), arg_1.b.x | 0u, -u_input.a.wwx, func_1(Struct_2(u_input.c, vec2<bool>(arg_1.a, true), arg_1.b.x, u_input.a.zyy, global0[_wgslsmith_index_u32(arg_1.b.x, 32u)]))))), arg_1, ~u_input.a.yz);
    global0 = array<Struct_1, 32>();
    var var_3 = Struct_2(2269u, select(vec2<bool>(any(select(vec4<bool>(arg_1.a, var_2.b.b.x, var_2.b.b.x, true), vec4<bool>(false, false, arg_1.a, false), vec4<bool>(true, var_2.c.a, false, false))), _wgslsmith_f_op_f32(-1000f + var_2.b.e.c.x) >= var_2.a), select(var_2.b.b, vec2<bool>(true, !var_2.b.b.x), vec2<bool>(var_2.c.a || false, var_1 || true)), var_2.b.b), ~4294967295u, select(_wgslsmith_mod_vec3_i32(~(-u_input.a.zyy), var_2.b.d), reverseBits(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 46362i, arg_2.x)), -var_2.b.d)), !vec3<bool>(true, all(vec4<bool>(arg_1.a, var_1, false, true)), var_2.c.a & arg_1.a)), func_1(var_2.b));
    return StorageBuffer(min(var_2.b.d << (vec3<u32>(min(16496u, arg_1.e.x), countOneBits(var_2.b.e.b.x), firstTrailingBit(arg_1.b.x)) % vec3<u32>(32u)), -var_2.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.c.x + -1406f) - 2900f)), _wgslsmith_mult_vec2_i32(countOneBits(select(u_input.a.wy, _wgslsmith_clamp_vec2_i32(var_2.b.d.zy, vec2<i32>(arg_0, 9932i), vec2<i32>(var_3.e.d, 1i)), all(vec4<bool>(var_3.b.x, true, var_1, var_1)))), _wgslsmith_div_vec2_i32(~(-vec2<i32>(2147483647i, var_2.c.d)), reverseBits(~vec2<i32>(var_3.e.d, var_3.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(u_input.a.x, func_1(Struct_2(~u_input.b, vec2<bool>(true, true), select(u_input.b, ~u_input.b, all(vec2<bool>(true, true))), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), u_input.a.yzz), Struct_1(all(vec3<bool>(false, false, false)), ~u_input.d.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), vec4<u32>(27263u, 11508u, u_input.c, u_input.d.x)))), ~u_input.a.zxy);
}

