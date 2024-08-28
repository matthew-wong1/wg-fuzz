struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 18> = array<f32, 18>(688f, -1707f, -990f, -711f, -151f, -1000f, -1118f, 630f, 1716f, 1000f, -489f, 1000f, 120f, 2476f, 2336f, 2218f, -1488f, 160f);

var<private> global2: i32;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(false, Struct_1(vec2<i32>(i32(-2147483648), 1i), -1206f, vec4<f32>(-637f, 880f, -435f, 210f), 19679u)), Struct_2(false, Struct_1(vec2<i32>(-40789i, -26940i), 2158f, vec4<f32>(867f, 1034f, -1782f, -1000f), 11603u)), Struct_2(true, Struct_1(vec2<i32>(-26816i, 2147483647i), -563f, vec4<f32>(1087f, -779f, 1516f, 1051f), 4294967295u)), Struct_2(false, Struct_1(vec2<i32>(0i, 364i), 1794f, vec4<f32>(1428f, -479f, 405f, -348f), 42645u)), Struct_2(true, Struct_1(vec2<i32>(-1i, 54222i), 1213f, vec4<f32>(1000f, 292f, -282f, -1000f), 1u)), Struct_2(false, Struct_1(vec2<i32>(-51989i, 39196i), 285f, vec4<f32>(262f, -798f, -518f, 108f), 4294967295u)), Struct_2(true, Struct_1(vec2<i32>(-21802i, 1i), 557f, vec4<f32>(-1000f, -177f, -1000f, 1100f), 3367u)), Struct_2(false, Struct_1(vec2<i32>(-1i, -5064i), -172f, vec4<f32>(1015f, -1349f, 1442f, 1085f), 28870u)), Struct_2(false, Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 1150f, vec4<f32>(-804f, 473f, -954f, -915f), 4294967295u)), Struct_2(false, Struct_1(vec2<i32>(-15424i, i32(-2147483648)), 123f, vec4<f32>(-1247f, -105f, -1000f, 319f), 12083u)), Struct_2(true, Struct_1(vec2<i32>(-46010i, 2147483647i), 447f, vec4<f32>(-1063f, -419f, -691f, -918f), 53747u)), Struct_2(false, Struct_1(vec2<i32>(i32(-2147483648), 28430i), 375f, vec4<f32>(1273f, -672f, -140f, -2156f), 60460u)), Struct_2(true, Struct_1(vec2<i32>(i32(-2147483648), 1i), -1731f, vec4<f32>(355f, 196f, -2065f, 630f), 1u)), Struct_2(true, Struct_1(vec2<i32>(1i, -34090i), 1630f, vec4<f32>(-1000f, 876f, -814f, -1017f), 0u)), Struct_2(false, Struct_1(vec2<i32>(39188i, 2147483647i), 235f, vec4<f32>(185f, 1426f, -758f, 1188f), 25231u)), Struct_2(true, Struct_1(vec2<i32>(i32(-2147483648), -13923i), 336f, vec4<f32>(263f, 982f, 1000f, -1000f), 21434u)), Struct_2(true, Struct_1(vec2<i32>(-1i, -42361i), -2519f, vec4<f32>(-1032f, -1000f, -1122f, -1208f), 0u)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = 4294967295u;
    global1 = array<f32, 18>();
    var var_1 = -2147483647i;
    var var_2 = Struct_1(max(abs(vec2<i32>(_wgslsmith_mult_i32(-1i, -16477i), -7917i)), vec2<i32>(60749i << (u_input.b.x % 32u), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) << ((u_input.b | _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(0u, 113176u))) % vec2<u32>(32u))), -157f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(39763u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(24600u, 18u)], global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec4<f32>(1303f, -332f, 524f, 1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, global1[_wgslsmith_index_u32(105034u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], 471f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)] * 955f), _wgslsmith_f_op_f32(trunc(1380f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), 1360f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, 566f, -291f, -556f)))))), _wgslsmith_mult_u32(abs(6890u), _wgslsmith_add_u32(1u ^ u_input.b.x, u_input.b.x)) & u_input.b.x);
    var var_3 = any(!select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)));
    return var_2.c.zwy;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -737f);
    global1 = array<f32, 18>();
    global2 = min(~_wgslsmith_sub_i32(19875i, abs(u_input.a.x) ^ ~(-7366i)), _wgslsmith_mod_i32(60245i, u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], -593f)), global1[_wgslsmith_index_u32(63446u, 18u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-326f)) + _wgslsmith_div_f32(1481f, global1[_wgslsmith_index_u32(u_input.b.x, 18u)]))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(40332u, 18u)])))) - _wgslsmith_f_op_vec3_f32(func_3()).x));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.b.x, 18u)]), -457f)), _wgslsmith_f_op_f32(floor(arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))), -1307f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> i32 {
    global3 = array<Struct_2, 17>();
    global0 = 708f;
    let var_0 = vec3<f32>(1255f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 18u)])), global1[_wgslsmith_index_u32(21836u, 18u)]);
    let var_1 = Struct_1(arg_0.yz, global1[_wgslsmith_index_u32(countOneBits(u_input.b.x), 18u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(true, true, arg_2, true)), abs(u_input.a), _wgslsmith_f_op_vec3_f32(func_3())))) * vec4<f32>(2826f, -1000f, -2428f, _wgslsmith_f_op_f32(-var_0.x))), max(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(5873u, 4294967295u, u_input.b.x, 0u) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 18566u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)), countOneBits(vec4<u32>(42257u, 4294967295u, 39118u, u_input.b.x)))), ~(~firstTrailingBit(4294967295u))));
    let var_2 = _wgslsmith_add_vec3_u32((vec3<u32>(reverseBits(var_1.d), ~u_input.b.x, 25788u) << (max(vec3<u32>(19542u, var_1.d, u_input.b.x) << (vec3<u32>(17385u, var_1.d, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) % vec3<u32>(32u))) >> (~(~(~vec3<u32>(1u, 70477u, var_1.d))) % vec3<u32>(32u)), firstLeadingBit(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, var_1.d, 57103u)), vec3<u32>(0u, 1u, 32909u) << (vec3<u32>(1u, u_input.b.x, 1u) % vec3<u32>(32u)))));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = -min(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(i32(-1i) * -18973i, ~0i, -u_input.a.x)), func_2(-(vec3<i32>(-1i, arg_0.b.a.x, arg_1) << (vec3<u32>(u_input.b.x, 2611u, u_input.b.x) % vec3<u32>(32u))), arg_1, !all(vec2<bool>(true, true))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(494f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)));
    global1 = array<f32, 18>();
    var var_0 = -arg_1.b.a;
    var var_1 = _wgslsmith_f_op_f32(floor(arg_3));
    var_0 = vec2<i32>(firstTrailingBit(arg_2.b.a.x), -2147483647i);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, func_5(Struct_1(vec2<i32>(u_input.a.x, firstLeadingBit(17142i)), _wgslsmith_div_f32(_wgslsmith_div_f32(-2247f, global1[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)] + -884f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-497f, -1349f, -409f, global1[_wgslsmith_index_u32(u_input.b.x, 18u)]))))), u_input.b.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(27774u, u_input.b.x, 52641u) << (vec3<u32>(4294967295u, 70148u, u_input.b.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), abs(vec3<u32>(u_input.b.x, 1u, u_input.b.x))), 17u)], func_1(global3[_wgslsmith_index_u32(43270u, 17u)], -134i), global1[_wgslsmith_index_u32(~1u, 18u)]));
    global2 = var_0.b.a.x;
    let var_1 = func_1(Struct_2(u_input.a.x > -46031i, func_5(var_0.b, Struct_2(var_0.a, func_5(var_0.b, global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(u_input.b.x, 17u)], 713f)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1091f, 278f, false))))), (i32(-1i) * -_wgslsmith_clamp_i32(-1i, -17936i, 2147483647i)) | 31031i);
    var var_2 = var_1.b.c;
    let var_3 = var_1.b.c;
    var_2 = vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(!select(select(vec4<bool>(var_0.a, false, false, false), vec4<bool>(var_1.a, var_1.a, true, var_0.a), var_0.a), select(vec4<bool>(var_0.a, var_1.a, false, true), vec4<bool>(var_0.a, var_1.a, false, var_0.a), false), !vec4<bool>(var_1.a, var_1.a, false, var_1.a)), -vec3<i32>(-39803i, u_input.a.x, var_1.b.a.x) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.a.x, 21606i, var_1.b.a.x), vec3<i32>(u_input.a.x, 2147483647i, -41598i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.wwz))))).x, _wgslsmith_f_op_f32(var_0.b.b + 2039f), -353f, _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(var_1.a, true, all(select(vec4<bool>(false, var_1.a, var_0.a, true), vec4<bool>(var_0.a, false, true, var_1.a), false)), true), _wgslsmith_add_vec3_i32(u_input.a, u_input.a) >> (~vec3<u32>(u_input.b.x, var_1.b.d, var_1.b.d) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-159f, var_2.x, var_1.b.b) * vec3<f32>(var_0.b.b, 370f, -295f)) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), var_0.b.b, -1518f)))).x);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - -697f), 855f));
    let x = u_input.a;
    s_output = StorageBuffer(~((var_1.b.d >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u)) & ~(1u | var_0.b.d)), _wgslsmith_f_op_vec2_f32(var_1.b.c.ww * _wgslsmith_f_op_vec2_f32(vec2<f32>(266f, _wgslsmith_f_op_f32(var_0.b.b * -494f)) - _wgslsmith_f_op_vec2_f32(-var_2.zy))), _wgslsmith_f_op_f32(-var_3.x), ~u_input.b.x);
}

