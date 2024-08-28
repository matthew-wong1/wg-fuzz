struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(false, vec3<i32>(-15352i, -13913i, -5799i)), Struct_5(false, vec3<i32>(2147483647i, 46923i, 2147483647i)), Struct_5(true, vec3<i32>(27056i, 1i, 6801i)), Struct_5(false, vec3<i32>(29260i, 0i, -12558i)), Struct_5(false, vec3<i32>(-43913i, -7472i, -1i)), Struct_5(true, vec3<i32>(37114i, 1i, 7123i)), Struct_5(true, vec3<i32>(1i, i32(-2147483648), -10455i)), Struct_5(true, vec3<i32>(-12325i, 0i, 1i)), Struct_5(false, vec3<i32>(i32(-2147483648), 10296i, 8026i)), Struct_5(false, vec3<i32>(19992i, 25951i, -16107i)), Struct_5(false, vec3<i32>(-1i, 0i, i32(-2147483648))), Struct_5(true, vec3<i32>(12546i, 1i, -30059i)), Struct_5(false, vec3<i32>(28035i, 35469i, -32179i)), Struct_5(false, vec3<i32>(i32(-2147483648), i32(-2147483648), -9715i)));

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(40408u, vec3<bool>(true, true, true), vec4<f32>(1000f, -405f, 1089f, -488f)), vec4<bool>(true, true, true, true), 191f), Struct_3(Struct_1(1u, vec3<bool>(false, false, false), vec4<f32>(-624f, -1443f, 1240f, -667f)), vec4<bool>(false, true, true, false), 1059f), Struct_3(Struct_1(49467u, vec3<bool>(false, true, true), vec4<f32>(-1970f, -1721f, -1000f, 204f)), vec4<bool>(false, false, false, false), 1000f), Struct_3(Struct_1(3414u, vec3<bool>(false, false, true), vec4<f32>(591f, 1335f, -327f, 713f)), vec4<bool>(true, false, true, false), -612f), Struct_3(Struct_1(28376u, vec3<bool>(true, false, false), vec4<f32>(1080f, -1154f, -449f, -950f)), vec4<bool>(false, false, true, true), 1000f), Struct_3(Struct_1(4294967295u, vec3<bool>(true, false, true), vec4<f32>(1137f, -567f, 1000f, 982f)), vec4<bool>(false, true, false, true), -920f), Struct_3(Struct_1(0u, vec3<bool>(true, false, true), vec4<f32>(-586f, -836f, 159f, 698f)), vec4<bool>(true, true, true, false), 1690f), Struct_3(Struct_1(11755u, vec3<bool>(false, false, true), vec4<f32>(2379f, -1625f, -343f, 654f)), vec4<bool>(true, false, true, true), 951f), Struct_3(Struct_1(91827u, vec3<bool>(false, false, false), vec4<f32>(1287f, -740f, -2129f, 2392f)), vec4<bool>(true, false, false, false), 110f), Struct_3(Struct_1(50411u, vec3<bool>(true, false, false), vec4<f32>(1850f, 620f, -847f, -1741f)), vec4<bool>(true, true, false, false), -815f), Struct_3(Struct_1(58821u, vec3<bool>(true, true, true), vec4<f32>(1262f, -1148f, -206f, -107f)), vec4<bool>(true, true, true, true), -414f), Struct_3(Struct_1(47865u, vec3<bool>(true, false, false), vec4<f32>(-1248f, 263f, -1415f, -190f)), vec4<bool>(true, true, true, true), -734f));

var<private> global2: array<f32, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_add_vec4_u32(~min(vec4<u32>(min(arg_1.x, 4294967295u), arg_1.x, 4294967295u, countOneBits(u_input.e)), reverseBits(~u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(73207u, firstLeadingBit(firstLeadingBit(18397u)), u_input.d.x, ~select(0u, 36175u, arg_0)), u_input.c));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, u_input.e), 8u)])) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1751f) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 8u)])), _wgslsmith_f_op_f32(floor(1598f))))));
    var var_2 = arg_0;
    var var_3 = ~34472u;
    var var_4 = Struct_2(false);
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_4 {
    global2 = array<f32, 8>();
    global2 = array<f32, 8>();
    let var_0 = Struct_3(Struct_1(~arg_0.x, vec3<bool>(arg_1, true, false), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-320f)) * _wgslsmith_f_op_f32(f32(-1f) * -449f)), global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(u_input.e, 8u)], global2[_wgslsmith_index_u32(~31829u, 8u)])), select(!vec4<bool>(596f > global2[_wgslsmith_index_u32(arg_0.x, 8u)], arg_3.a, arg_2.x, false), vec4<bool>(func_3(1652f > global2[_wgslsmith_index_u32(arg_0.x, 8u)], _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, u_input.d.x), u_input.d.yy)), arg_1, false, true), !vec4<bool>(true, arg_2.x, true, arg_1)), global2[_wgslsmith_index_u32(19477u, 8u)]);
    let var_1 = reverseBits(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(36037u, 4294967295u, arg_0.x), vec3<u32>(12340u, 4294967295u, 34885u))) >> (18392u % 32u));
    var var_2 = 0i;
    return Struct_4(14182u, !arg_2);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> vec2<i32> {
    global0 = array<Struct_5, 14>();
    var var_0 = vec2<bool>(func_2(u_input.c.wx, true, !(!arg_0.b), Struct_5(global2[_wgslsmith_index_u32(u_input.d.x, 8u)] <= -118f, _wgslsmith_add_vec3_i32(~arg_1.xzw, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b, arg_1.x), arg_1.ywx)))).b.x, true || arg_0.b.x);
    var_0 = vec2<bool>(!var_0.x, var_0.x || (47859u >= func_2(~vec2<u32>(14791u, 7859u), true, select(arg_0.b, vec3<bool>(false, true, false), true), global0[_wgslsmith_index_u32(~83567u, 14u)]).a));
    return ~arg_1.zx;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec3<bool> {
    global1 = array<Struct_3, 12>();
    global0 = array<Struct_5, 14>();
    let var_0 = -select(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.b), arg_3), 0i), vec2<i32>(firstTrailingBit(arg_3.x), _wgslsmith_mult_i32(-7150i, 0i)) | func_4(func_2(u_input.c.zx, false, vec3<bool>(true, arg_0.x, true), Struct_5(true, vec3<i32>(-1i, 2147483647i, -2147483647i))), countOneBits(vec4<i32>(u_input.a, arg_3.x, 17693i, arg_3.x))), true);
    var var_1 = Struct_4(func_2(vec2<u32>(select(~arg_1.x, 12533u, func_2(vec2<u32>(4294967295u, 1u), arg_0.x, vec3<bool>(true, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(arg_1.x, 14u)]).b.x), arg_1.x), all(select(arg_0, !arg_0, arg_0.x)), select(select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), false), func_2(_wgslsmith_add_vec2_u32(arg_1.zy, arg_1.zx), arg_0.x && arg_0.x, select(vec3<bool>(true, false, true), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), Struct_5(arg_0.x, vec3<i32>(u_input.b, -10823i, 1i))).b, vec3<bool>(arg_0.x != arg_0.x, true, true)), global0[_wgslsmith_index_u32(func_2(~u_input.c.zw, arg_0.x & arg_0.x, !vec3<bool>(arg_0.x, false, arg_0.x), global0[_wgslsmith_index_u32(4294967295u, 14u)]).a, 14u)]).a, !select(vec3<bool>(arg_0.x | arg_0.x, 804f < global2[_wgslsmith_index_u32(22107u, 8u)], var_0.x > var_0.x), !vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(!arg_0.x, false, true)));
    global1 = array<Struct_3, 12>();
    return var_1.b;
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, 2147483647i, 0i), min(vec3<i32>(u_input.b, 2147483647i, -24983i), vec3<i32>(-27394i, 1i, u_input.b))), (u_input.b >> (24788u % 32u)) & ~21733i, ~u_input.b)), ~(-32220i));
    global2 = array<f32, 8>();
    var var_1 = global1[_wgslsmith_index_u32(0u, 12u)];
    var_1 = Struct_3(Struct_1(0u, select(vec3<bool>(var_1.c > 130f, select(true, var_1.b.x, arg_0.b.x), true && var_1.b.x), !select(vec3<bool>(false, arg_0.b.x, arg_0.b.x), vec3<bool>(false, true, arg_0.b.x), vec3<bool>(true, true, false)), select(func_2(vec2<u32>(4294967295u, 19731u), arg_0.b.x, vec3<bool>(false, false, var_1.b.x), global0[_wgslsmith_index_u32(arg_0.a, 14u)]).b, arg_0.b, select(true, arg_0.b.x, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c.x, global2[_wgslsmith_index_u32(var_1.a.a, 8u)], arg_0.c.x, 1000f))), _wgslsmith_f_op_vec4_f32(trunc(arg_0.c)))))), vec4<bool>(2147483647i < -firstTrailingBit(27307i), false, !select(false, false, func_3(false, u_input.c.zy)), var_1.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.c)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-1968f)), var_1.a.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.c.x), -1534f, false)), _wgslsmith_div_f32(var_1.a.c.x, arg_0.c.x));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(~firstLeadingBit(u_input.c.x), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !func_1(vec2<bool>(false, false), u_input.c, u_input.d.yy, vec2<i32>(u_input.b, u_input.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], 1000f, global2[_wgslsmith_index_u32(u_input.e, 8u)], global2[_wgslsmith_index_u32(30178u, 8u)])))))));
    let var_1 = _wgslsmith_sub_vec2_u32(max(~_wgslsmith_mod_vec2_u32(abs(u_input.d.zz), firstTrailingBit(vec2<u32>(u_input.c.x, 16575u))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.d.x, u_input.c.x), ~u_input.c.zx, firstTrailingBit(u_input.d.xz)), ~(vec2<u32>(u_input.c.x, 40897u) << (u_input.d.zz % vec2<u32>(32u))))), u_input.d.xy);
    var var_2 = _wgslsmith_add_vec4_u32(~firstLeadingBit(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, var_1.x, u_input.d.x, 13340u))) >> (~(~(~vec4<u32>(0u, 466u, u_input.d.x, 4294967295u))) % vec4<u32>(32u)), reverseBits(vec4<u32>(min(40811u, u_input.d.x), ~74439u, u_input.d.x, 1u) ^ abs(firstTrailingBit(vec4<u32>(var_1.x, 15161u, u_input.e, var_1.x)))));
    let var_3 = Struct_5(true, vec3<i32>(u_input.b, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(select(u_input.a, -29301i, true), ~25125i), u_input.b, u_input.a), u_input.b));
    global0 = array<Struct_5, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(0u, 33594u, 1u), 4294967295u)), ~0u);
}

