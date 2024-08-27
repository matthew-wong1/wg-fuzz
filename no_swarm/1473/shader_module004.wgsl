struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(-239f, vec3<i32>(-12024i, 10596i, 45841i), vec4<i32>(2147483647i, 0i, -3584i, -1i), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), 2147483647i), false, false), -588f);

var<private> global3: array<Struct_2, 21>;

var<private> global4: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-239f, 927f, 832f, -240f), vec4<f32>(276f, -1925f, -1471f, 2036f), vec4<f32>(490f, 1553f, -185f, -135f), vec4<f32>(-906f, 990f, -2954f, -693f), vec4<f32>(-574f, 1390f, -1076f, -644f), vec4<f32>(152f, -1113f, 1003f, -1084f), vec4<f32>(-694f, -356f, 819f, -1000f), vec4<f32>(-640f, -409f, -489f, -1000f), vec4<f32>(303f, -911f, -1210f, 346f), vec4<f32>(-268f, -603f, -811f, 170f), vec4<f32>(-391f, 1407f, -123f, 325f), vec4<f32>(-437f, -1000f, -705f, 739f), vec4<f32>(-1240f, -809f, -1006f, 182f), vec4<f32>(-1611f, -174f, 697f, 718f), vec4<f32>(-386f, 868f, 1143f, 2093f), vec4<f32>(-486f, -734f, 375f, -384f), vec4<f32>(-949f, -235f, 151f, 337f), vec4<f32>(-1257f, -920f, 527f, -1616f), vec4<f32>(-1301f, -492f, -254f, 496f), vec4<f32>(-1000f, -731f, -361f, -959f), vec4<f32>(1000f, 1758f, 233f, 3077f), vec4<f32>(118f, 508f, -2022f, 1000f), vec4<f32>(-578f, 612f, -1000f, -146f), vec4<f32>(-278f, -539f, -517f, 1804f), vec4<f32>(-1000f, 426f, 686f, 197f), vec4<f32>(-1488f, 298f, -579f, -575f), vec4<f32>(-773f, 974f, 208f, -227f), vec4<f32>(1000f, 974f, 501f, -1619f), vec4<f32>(1051f, 1851f, 1481f, -1387f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = -2147483647i;
    global3 = array<Struct_2, 21>();
    var var_1 = global3[_wgslsmith_index_u32(abs(~(_wgslsmith_mult_u32(select(1u, 0u, global2.d.c), ~5395u) & 1u)), 21u)];
    let var_2 = global3[_wgslsmith_index_u32(~min(~(~1u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(24749u, 4294967295u), vec2<u32>(4294967295u, 0u)) >> (16267u % 32u))), 21u)];
    let var_3 = reverseBits(_wgslsmith_div_i32(u_input.b ^ -reverseBits(global2.b.x), 0i));
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global4[_wgslsmith_index_u32(arg_3.x, 29u)], global4[_wgslsmith_index_u32(arg_3.x, 29u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4[_wgslsmith_index_u32(32092u, 29u)] + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1614f, -828f, global0.e, 1000f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1241f, -1733f, _wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(185f)) - var_0.x)));
    global4 = array<vec4<f32>, 29>();
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~select(vec4<i32>(3215i, -2147483647i, -32667i, u_input.a.x), arg_0.a, true), vec4<i32>(64586i, u_input.a.x, global0.c.x, ~(-2147483647i))), ~vec4<i32>(arg_1.c.x, arg_1.c.x, ~global0.c.x, arg_0.a.x)), arg_1.d.c, !arg_0.b);
    let var_2 = global3[_wgslsmith_index_u32(abs(abs(4294967295u)), 21u)];
    return 1286f;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec3<f32> {
    var var_0 = 4294967295u;
    var var_1 = global0.d;
    var_0 = reverseBits(arg_0.x);
    global2 = Struct_2(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.x, -1i, -37515i, -2147483647i), vec4<i32>(global0.c.x, global2.d.a.x, var_1.a.x, u_input.a.x)), vec4<i32>(global2.d.a.x, u_input.a.x, -6373i, -2147483647i), vec4<i32>(-1i, -2147483647i, -1i, global2.b.x)), global2.d.c, func_3() && all(vec3<bool>(true, arg_1, true))), Struct_2(1000f, global0.b, countOneBits(global2.c), global0.d, -1962f), u_input.a.x & u_input.b, arg_0)), select(_wgslsmith_div_vec3_i32(firstTrailingBit(global2.c.www), vec3<i32>(-2147483647i, -66607i, 46217i)) | ~global2.d.a.wxw, u_input.a, !arg_1), firstTrailingBit(vec4<i32>(-33008i, var_1.a.x, global0.c.x, -global2.b.x >> (~53150u % 32u))), Struct_1(global2.d.a, true, false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.a, global2.a)), -816f)))));
    var var_2 = 2095i;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-189f, _wgslsmith_div_f32(global0.a, -1142f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a))), -423f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(329f, global0.a, 491f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(296f, global0.a, -1369f), vec3<f32>(global0.a, global2.e, global2.e)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global2.a, global0.a)), vec3<f32>(-1000f, 758f, global0.e), select(vec3<bool>(arg_1, false, global0.d.c), vec3<bool>(false, false, false), vec3<bool>(false, arg_1, global2.d.c))))))), true));
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(0u, ~4294967295u, max(~27241u, 121420u), select(52848u, ~10934u, true)), false)), vec3<f32>(347f, -915f, global0.e)));
    var var_1 = vec4<i32>(-2147483647i, -1i, u_input.b, 2147483647i);
    global2 = Struct_2(798f, var_1.zwx, ~(-abs(vec4<i32>(0i, 62034i, global0.b.x, 27576i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), global2.d, _wgslsmith_f_op_f32(-global0.e));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), vec3<i32>(1i, 19168i, var_1.x), max(vec4<i32>(0i, firstTrailingBit(~7770i), ~global0.c.x, ~u_input.a.x), reverseBits(~vec4<i32>(var_1.x, -2147483647i, global0.b.x, global2.c.x))), global0.d, _wgslsmith_f_op_vec3_f32(func_2(~(~vec4<u32>(1u, 1u, 1u, 1u)), !(!func_3()))).x);
    var_1 = vec4<i32>(-1i) * -firstTrailingBit(var_2.c);
    return _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 0u, ~2556u, 0u >> (1u % 32u)), ~vec4<u32>(36313u << (1u % 32u), abs(1u), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(52737u, 67508u, 4294967295u, 1u), vec4<u32>(1u, 65737u, 17630u, 1u)))) & (~(~(~vec4<u32>(24948u, 4294967295u, 4294967295u, 1u))) >> (vec4<u32>(_wgslsmith_sub_u32(min(18783u, 17876u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 28519u, 4294967295u, 13958u), vec4<u32>(54696u, 1270u, 4294967295u, 4294967295u))), ~reverseBits(80694u), 23585u, ~1u) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    global4 = array<vec4<f32>, 29>();
    global3 = array<Struct_2, 21>();
    let var_0 = _wgslsmith_div_f32(-181f, global0.a);
    var var_1 = 1u;
    let var_2 = global0.d;
    return _wgslsmith_clamp_i32(-13046i, -10587i, var_2.a.x << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.yy & vec2<u32>(58005u, arg_0.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(38059u, arg_0.x), vec2<u32>(arg_0.x, 30021u), vec2<u32>(arg_0.x, arg_0.x)), ~vec2<u32>(0u, arg_0.x)), min(select(vec2<u32>(arg_0.x, 6520u), arg_0.xz, true), arg_0.xw | vec2<u32>(arg_0.x, arg_0.x))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_5(~min(func_1(), vec4<u32>(1u, 23158u, 8487u, 65142u)), global2.d), -global2.b.x, -22484i, 37480i);
    let var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(select(0u, 1u, global2.d.c | global0.d.b), 21553u), ~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 48954u, 4294967295u, 29742u), vec4<u32>(23107u, 47914u, 1716u, 4294967295u)), ~0u), vec2<u32>(reverseBits(0u), ~0u), vec2<u32>(1u, ~4294967295u)));
    global1 = 0i;
    global1 = -u_input.b;
    global2 = Struct_2(-121f, u_input.a, vec4<i32>(-abs(-8053i), ~(~_wgslsmith_add_i32(14521i, 58027i)), global0.b.x, u_input.b), global0.d, -1000f);
    var var_2 = firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(45368i, 51999i, global0.c.x, -15602i)), ~(~var_0)), max(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-22228i, var_0.x), select(var_0.x, -13157i, global2.d.c), -1i), select(max(vec4<i32>(0i, -1i, -1i, 53455i), vec4<i32>(global2.d.a.x, -9215i, -2147483647i, -2147483647i)), firstLeadingBit(global2.d.a), true))));
    global1 = var_2.x;
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(18930u, countOneBits(~(_wgslsmith_mod_u32(var_1.x, 36413u) & var_1.x))), 21u)];
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(), vec4<u32>(4294967295u, ~(~var_1.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.x, 52454u), 4294967295u), 46327u)) << ((~max(~1u, var_1.x) >> (~1u % 32u)) % 32u), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a))) + _wgslsmith_f_op_f32(round(-154f))), _wgslsmith_dot_vec2_u32(~firstTrailingBit(var_1), var_1) >> (24852u % 32u));
}

