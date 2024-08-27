struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false, vec4<f32>(-230f, -656f, 485f, 1518f), -1987f), Struct_1(true, vec4<f32>(1000f, 1454f, -1007f, -295f), -726f), Struct_1(true, vec4<f32>(1486f, 746f, 584f, -1499f), 143f), Struct_1(false, vec4<f32>(-1068f, -736f, -2242f, 468f), -793f), Struct_1(false, vec4<f32>(1347f, 554f, 938f, -691f), -739f), Struct_1(true, vec4<f32>(367f, 1094f, -558f, 1846f), -1187f), Struct_1(true, vec4<f32>(-185f, 1126f, -1666f, 1165f), -947f), Struct_1(true, vec4<f32>(1000f, -771f, 291f, -1000f), 715f), Struct_1(false, vec4<f32>(-275f, 1157f, -955f, -1000f), 1215f), Struct_1(false, vec4<f32>(2135f, 835f, 512f, 910f), 874f), Struct_1(true, vec4<f32>(1384f, -401f, 1178f, -293f), 1510f), Struct_1(false, vec4<f32>(-627f, 349f, 631f, -788f), -720f), Struct_1(false, vec4<f32>(-889f, -1131f, -1396f, -1000f), 2150f), Struct_1(false, vec4<f32>(-2932f, 894f, 1847f, 1495f), 506f), Struct_1(false, vec4<f32>(-271f, -270f, -1972f, -577f), -2074f), Struct_1(false, vec4<f32>(984f, 1515f, 675f, -1496f), -467f), Struct_1(false, vec4<f32>(1000f, 292f, -1671f, -311f), 1194f), Struct_1(true, vec4<f32>(-964f, 1000f, 746f, -909f), 723f), Struct_1(true, vec4<f32>(801f, 1000f, -351f, -372f), 138f), Struct_1(true, vec4<f32>(419f, 626f, 444f, 341f), -1000f), Struct_1(true, vec4<f32>(240f, -266f, -1071f, -1549f), -1369f), Struct_1(true, vec4<f32>(-220f, -125f, -1057f, 1128f), -2031f), Struct_1(true, vec4<f32>(1428f, -462f, -132f, -608f), 1015f), Struct_1(false, vec4<f32>(-1000f, 576f, 1622f, 390f), 220f), Struct_1(false, vec4<f32>(-2584f, 300f, 117f, 507f), 582f), Struct_1(false, vec4<f32>(-1593f, 208f, -412f, 388f), 1022f), Struct_1(false, vec4<f32>(1104f, 505f, -191f, -1300f), -1929f), Struct_1(true, vec4<f32>(555f, -976f, 698f, 1727f), -101f), Struct_1(false, vec4<f32>(-391f, 1373f, -1948f, -1458f), -346f), Struct_1(true, vec4<f32>(-793f, -931f, 718f, 622f), -818f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 2979u, ~(u_input.b.x ^ u_input.b.x)), select(select(u_input.b.zwy, ~max(vec3<u32>(29068u, u_input.a.x, u_input.b.x), u_input.b.zzw), arg_1.wyy), ~vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(4294967295u, u_input.a.x)), ~2864u), arg_1.yyy));
    let var_1 = vec2<bool>(false, ~(var_0.x & 0u) > abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(30316u, u_input.b.x, 4294967295u, 25813u))));
    global0 = array<bool, 27>();
    global1 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_0, u_input.d.wxx), ~arg_0), global1.a) >> ((abs(_wgslsmith_clamp_u32(var_0.x, 0u, 0u)) & ~u_input.b.x) % 32u));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), _wgslsmith_div_u32(select(_wgslsmith_sub_u32(var_0.x, 0u), _wgslsmith_mult_u32(~u_input.a.x, ~u_input.b.x), arg_0.x < -arg_0.x), ~(~(4294967295u << (u_input.c % 32u)))), 22235u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-633f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * 200f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + 1368f) - _wgslsmith_f_op_f32(arg_2.b.x * arg_2.a.x)), any(vec3<bool>(var_1.x, true, true))))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = countOneBits(global1.a);
    let var_1 = Struct_2(-6793i);
    global2 = array<Struct_1, 30>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1009f, 551f, 384f) + vec3<f32>(-766f, -530f, 851f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.d.wxz, vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], false, false, true), Struct_3(vec2<f32>(-918f, -1140f), vec4<f32>(-616f, -944f, 839f, -935f)))), _wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_div_f32(-214f, 283f)))) + vec3<f32>(-153f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(u_input.d.zxy, vec4<bool>(true, true, true, true), Struct_3(vec2<f32>(-1433f, -553f), vec4<f32>(161f, -1813f, -196f, 742f)))))))), -267f));
    global1 = var_1;
    return Struct_2(-u_input.d.x);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    return func_2(Struct_2(global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-673f, 956f))) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-388f, -229f, 1663f, 1000f))) * vec4<f32>(562f, 667f, -712f, 531f)))));
    let var_0 = Struct_2(_wgslsmith_add_i32(global1.a, 2147483647i & (i32(-1i) * -u_input.d.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(339f)) * _wgslsmith_f_op_f32(func_3(~vec3<i32>(var_0.a, -58019i, -61985i), select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)], true), global0[_wgslsmith_index_u32(15699u, 27u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], false, false, false), -1i != global1.a), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1099f, -433f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1020f, -788f, 839f, -356f) + vec4<f32>(463f, 833f, 1319f, 474f)))))));
    var var_2 = var_0;
    var var_3 = ~((_wgslsmith_sub_i32(abs(u_input.e), _wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(var_0.a, u_input.d.x))) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.c), vec4<u32>(50960u, u_input.a.x, 40045u, u_input.c)) & ~u_input.a.x) % 32u)) << (abs(1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(u_input.b.x, ~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) - _wgslsmith_f_op_f32(-var_1)), var_1) - _wgslsmith_f_op_f32(abs(-1214f))), vec2<f32>(_wgslsmith_f_op_f32(1238f * _wgslsmith_f_op_f32(round(var_1))), 128f), var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, var_1)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(865f, var_1), vec2<f32>(var_1, 951f), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(var_1, var_1)) + vec2<f32>(1920f, var_1))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -377f)))))));
}

